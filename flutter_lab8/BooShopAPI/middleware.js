//kesinee: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6Imtlc2luZWUiLCJwYXNzd29yZCI6IiQyYSQxMCRPQzBVNUtuL08zcWMxOVkvWlk4R0lPeWQ4ejdVOTk4TzlSdHFEMWVkV1Z4d0ZaOXBxSE5DNiIsImlhdCI6MTYxNjMyNDgxM30.0uHLh33wGXws-YfcvYps9j8aLZ1PlaLc8u43B44zd7k


const getTokenFrom = request => {
    const authorization = request.get('Authorization')
    if (authorization && authorization.toLowerCase().startsWith('bearer ')) {
      return authorization.substring(7)
    }
    return null
}

exports.sign = function(user, secretkey){

    const jwt  = require('jsonwebtoken');

    try{
        
        //return jwt.sign({ id: user._id }, secretkey, { expiresIn: 3600   }); //expires in 1 hour
        return jwt.sign(user, secretkey); //Never expire
    }
    catch(e){

        return res.status(401).send()
    }
}

exports.verify = function(req, res, next){

    const jwt  = require('jsonwebtoken');
    const secretkey=process.env.SECRET

    let accessToken = getTokenFrom(req)
    

    if (!accessToken){        
        return res.status(403).send()
    }

    let payload

    try{


        jwt.verify(accessToken, secretkey, (err, authData) => {

            
            if(err) {
                console.log(err) 
                return res.status(401).send()
                
            } else {
                //next()
                
            }
        });
        
        next()

    }
    catch(e){
        
        return res.status(401).send()
    }
}