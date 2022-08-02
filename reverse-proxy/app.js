const express = require("express");
const http = require("http");
const https = require("https");
const proxy = require('express-http-proxy');

// taxi back app
const appBack = express();
appBack.use(proxy("http://localhost:2000"));
http.createServer(appBack).listen(444, () => 
  console.log(`Back Proxy 서버가 ${444}번 포트에서 시작됨.`)
);

// taxi front app
const appFront = express();
appFront.use(proxy("http://localhost:3000"));
http.createServer(appFront).listen(443, () => 
  console.log(`Front Proxy 서버가 ${443}번 포트에서 시작됨.`)
);

// taxi redirect app
const appRedirect = express();
appRedirect.use((req, res) => {
  res.redirect('https://taxi.sparcs.org:443');
});
http.createServer(appRedirect).listen(80, () => 
  console.log(`Front Redirect 서버가 ${80}번 포트에서 시작됨.`)
);
