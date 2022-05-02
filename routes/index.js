//***MODULE REQUIRE***//
var express = require('express');
var router = express.Router();

//***ROUTERS REQUIRE***//
const indexController = require('../controllers/indexController')

//***ROUTES***//
router.get('/', indexController.root);
router.get('/nuevoregistro', indexController.newRegister);
router.get('/todoregistro', indexController.allRegister);
router.get('/comprobantes', indexController.comprobantesGenerator);
router.get('/alicuotas', indexController.alicuotasGenerator);
router.post('/todoregistro', indexController.handlePost);
module.exports = router;
