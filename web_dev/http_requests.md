### Common HTTP status codes

HTTP request status codes. 
    100’s : these are informational messages and are exceedingly rare.
    200’s : these mean that requests are successful. 200 is good.
    300’s : these are redirection responses. These are usually run by the browser and all the pertinent information is taken care of silently. 
    400’s : Client-side error. This could be anything ranging from a typo in the URL bar or 
            401 : Permission necessary. This won’t raise an error this will just flag a popup that will ask for a password. 
            404 : requested resource no longer available. This could be because of a typo or from the general aging of the web itself. 
            403 : Forbidden. Unauthorized. Servers sometimes have a whitelist of computers allowed on the server and your computer is not on the list. There is ty[ically no recovery form this error. This could be a problem of the authentication list on the server, or it could be an aspect of fauty authentications associated with your files. 
            408 : client side timeout.
            410 : Intentional deletion of file. 404 is not found, 410 is DELETED. GONE!
    500’s : Server side errors. Internal Server Error. 500 is the catch all. 
        503 : this means service currently unavailable. Overloaded, rebooting, in the middle of intialization, down for maintenance.
        504 : Gateway timeout. Some reason caused the information to nt reach you in a timely manner and the browser quit so you don’t have to wait forever. 

### Difference between GET and Post requests
TL;DR
GET request : Just asks for information 
POST request : sends information to cause a change. 

Long Answer : 
   GET request : Get request doesn’t send any information other than the cookie and the information in the url. This just returns the specified page. ALL GET information needs to be idempotent. This can be used by robots and web crawlers, because it doesn’t matter how many time it is called, nothing will happen really. These can be book marked and back buttoned willy nilly.
   POST request : Post requests post information. Which is to say that they have side effects. They will have this information contained inside the HTTP request itself. So the url has much less information inside it and it can be encoded better. If you try to back button onto it, it will raise a flag that information will be sent again. This should be used whenever information is going to be sent to the server itself, like a password reset or something of that nature. 



### Cookies

Cookies : information that is stored on the users computer to remember state-ful information about the user’s session. 
    Session management : User Logins, Shopping Carts
    Personalization : User Preferences 
    Tracking : Analyzing user behavior 
The server sends a SET-COOKIE http response to the client and this is stored and remembered by the client browser, then sent into every HTTP request after that. 
    Session cookies only last as long as the session. in order to have cookies that last longer you must set a permanent cookie. This is a cookie that has an expiration date or a max-age attribute. Secure cookies just means that you have Secure flagged inside the cookie and that JavaScript won’t be able to access it. This does not provide any security!
    Zombie Cookies : Look up how to delete these right now! These are cookies that are stored not on your computer, but on the flash plugin associated with your account. They will make a cookie that cannot be deleted on your computer and log all of your behavior. This is how when you look at boots on amazon, all of a sudden all of your ads are boots ads! 