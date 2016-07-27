1. What are some common HTTP status codes?
  - HTTP status code 200 OK: the request was successful
  - HTTP status code 300 Multiple Choices: the requested source has different choices and cannot be resolved into one. Example: having more than one index.html or homepage.html pages.
  - HTTP status code 301 Moved Permanently: the requested source has been assigned a new permanent URI (Uniform Resource Identifier). Any future requests should refer to the returned URIs.
  - HTTP status code 400 Bad Request: the request was not understood by the server due to bad syntax. The request should not be repeated.
  - HTTP status code 401 Unauthorized: the request requires user authentification.
  - HTTP status code 403 Forbidden: the server understood the request, but is refusing to fulfill it. The request should not be repeated, and authorization will not help.
  - HTTP status code 404 Not Found: the server hasn't found anything matching the requested URI.
  - HTTP status code 503 Service Unavailable: the web server is unable to handle the HTTP request at the time due to several reasons:
    - server crash
    - server maintenance
    - server overload
    - server may be forbidden to fulfill the request
    - a website has used its allotted bandwidth
  - HTTP status code 550 Permission Denied: the account you are currently logged into does not have permission to carry out the action you are attempting to do. Example: you might have an online account to register for classe at a boutique spin class. However, your account only allows to register for classes at a designated time because your account is only at the premium level and not gold or platinum

  2. GET request vs. POST request. When might each be used?
    - the primary difference between GET and POST requests is that GET requests supply all of the form data in the URL, whereas with POST requests the form data appears in the message body of the HTTP requests. Since GET requests includes all the required data in the URL, it is less secured when compared to POST because it saves in the browser history and server logs sensitive information in plain text (GET is limited to ASCII characters, whereas POST has no form data type restrictions).
    - GET should not be used when sending sensitive informatio (such as passwords). Instead, POST should be used because it is more secure than GET and is not cached.
    - GET should be used if the information on the page is not sensitive and if the page should be easily bookmarked without having to refill any form information. (Example: I might bookmark the weekly circular for my neighborhood grocery store. It would be greatly inconvenient if I would have to re-enter any information to get my weekly circular, even though it has been bookmarked. Case in point - CVS, Walgreens, or Rite Aid. They make you re-enter the information (zip code) before returning the requested page.)

  3. What is a web cookie?
    - In short, a cookie is transferred to your computer hard drive whenever you are visiting a page, so that way, when you re-visit a web site, it can remember who you are and your preferences. Web servers done have memory to store your preferences, which is why it sends and stores cookies on your hard drive for future visits. When you re-visit that same web site, the cookie will be sent to the Web server.
