//***MODULE REQUIRE***//
var express = require('express');
var router = express.Router();

//***ROUTERS REQUIRE***//
const apiController = require('../controllers/apiController')

//***ROUTES***//
router.get('/', apiController.root);
// router.get('/nuevoregistro', indexController.newRegister);
// router.get('/todoregistro', indexController.allRegister);
// router.post('/', indexController.handlePost);
module.exports = router;
