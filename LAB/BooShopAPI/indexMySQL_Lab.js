var express = require('express');
var cors = require('cors');
var bodyParser = require('body-parser');

var fileUpload = require('express-fileupload');

var apiversion='/api/v1';

const dotenv = require('dotenv');
dotenv.config();

const bookpicturepath=process.env.BOOKSHOP_PICTURE_PATH;
const secretkey=process.env.SECRET


//MYSQL Connection
var db = require('./config/db.config');

const bcrypt = require('bcryptjs');

const {sign,verify}  = require('./middleware.js');


var port = process.env.PORT || 3000;
const app = express();
app.use(bodyParser.json());
app.use(cors());
app.use(fileUpload());


app.post(apiversion + '/auth/register', (req, res) => {

  const hashedPassword = bcrypt.hashSync(req.body.password,10);

  let user={
      username: req.body.username,
      role: req.body.role,
      password: hashedPassword,
  }

  res.setHeader('Content-Type', 'application/json');
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");


  try {

    db.query(`INSERT INTO users (username,password,role) VALUES ( '${user.username}','${hashedPassword}','${user.role}');`,function (error, results, fields) {
        if (error) throw error;
        return res.status(201).send({ error: false, message: 'created a user' })  
    });

 }
 catch(err) 
 {

   return res.send(err)
   
 }

});

app.post(apiversion + '/auth/signin', (req, res) => {

  db.query('SELECT * FROM users where username=?',req.body.username, function (error, results, fields) {

    try
    {
      if (error) {

        throw error;

      }else{

      
        let hashedPassword=results[0].password
        let userId=results[0].userId
        const correct =bcrypt.compareSync(req.body.password, hashedPassword)

        if (correct)
        {
          let user={
            username: req.body.username,
            role: results.role,
            password: hashedPassword,
          }

          // create a token
          let token = sign(user, secretkey);
          
          res.setHeader('Content-Type', 'application/json');
          res.header("Access-Control-Allow-Origin", "*");
          res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

          return res.status(201).send({ error: false, message: 'user sigin', userId: userId, accessToken: token });

        }else {

          return res.status(401).send("login fail")

        }

      }

    }
    catch(e)
    {
      return res.status(401).send("login fail")
    }
    
  });

  
  

});



//Get all books
app.get(apiversion + '/books',verify,  function (req, res)  {  
  
    try
    {
        
        res.setHeader('Content-Type', 'application/json');
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
        
        db.query('SELECT * FROM books', function (error, results, fields) {
            if (error) throw error;
            return res.status(200).send({ error: false, message: 'books list', data: results });
        });
			
		} catch {

      return res.status(401).send()

    }




  
});



//Get book by id
app.get(apiversion + '/book/:bookid',verify,  function (req, res)  {  

  try
  {


      res.setHeader('Content-Type', 'application/json');
      res.header("Access-Control-Allow-Origin", "*");
      res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

      var bookid = Number(req.params.bookid);
      
      db.query('SELECT * FROM books where bookid=?', bookid.toString(),function (error, results, fields) {
          if (error) throw error;
          return res.send({ error: false, message: 'book id =' + bookid.toString(), data: results });
      });

    } catch {

      return res.status(401).send()

    }

});



//Get order by user id
app.get(apiversion + '/order/:userId',verify,  function (req, res)  {  

  try
  {


      res.setHeader('Content-Type', 'application/json');
      res.header("Access-Control-Allow-Origin", "*");
      res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

      var userId = Number(req.params.userId);
      
      db.query('SELECT * FROM orders where userId=?', userId.toString(),function (error, results, fields) {
          if (error) throw error;
          return res.send({ error: false, message: 'user id =' + userId.toString(), data: results });
      });

    } catch {

      return res.status(401).send()

    }

});


//Add new order
app.post(apiversion + '/order',  verify, function  (req, res) {  

  try
  {

    var userId =req.body.userId;
    var name = req.body.name; 	
    var address=req.body.address;
    var total =req.body.total;
    var details=req.body.details;
    //code for get mapDetails
    let mapDetails = JSON.parse(details)

    res.setHeader('Content-Type', 'application/json');
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

    
    db.query(`INSERT INTO orders 
      (userId,name,address,total) 
      VALUES ( ${userId},'${name}', '${address}', ${total});`,  function (error, results, fields) {

        if (error) throw error;
        db.query('SELECT orderId as orderId FROM orders ORDER BY orderId DESC LIMIT 1', function (error, results, fields){
          if (error) throw error;
          var orderId = Number(JSON.parse(JSON.stringify(results))[0]["orderId"]);

          mapDetails.forEach(item => {
            db.query(`INSERT INTO orderdetail (orderId, bookid, price, qty) VALUES(${orderId},${item.bookId}, ${item.price}, ${item.qty});`,
              function (error, results, fields) {
                  if (error) throw error;
              });
          });

        });
       //get last order id
       //insert order detail

        return res.send({ error: false, message: 'Add new order' });

    });
  
  } catch(e) {
    console.log(e);
    //return res.status(401).send({ error: true, message: err.toString() });

    return res.status(401).send()

  }

});







app.listen(port, function () {
    console.log("Server is up and running...");
});
