const db = require ('../db/models')
const { v4: uuidv4 } = require('uuid');
const fs = require('fs');
const rellenar = require ('../modules/Rellenar')

module.exports = {
    root: (req, res) => {
        return res.render('index')
    },
    newRegister: async (req, res) => {
        const cccompras = await db.cccompras.findAll()
        const cdoc = await db.cdoc.findAll()
        const cmon = await db.cmon.findAll()
        const copcompra = await db.copcompra.findAll()
        const calic = await db.ivaalicuotas.findAll()
        
        return res.render('newRegMain', {cccompras, cdoc, cmon, copcompra, calic})
    },
    allRegister: async (req, res) => {
        let all = await db.registros.findAll();
        return res.render('allRegMain', {all:all})
    },
   
     handlePost: (req, res) => {
      db.registros.create ({
        fechaDeComprobante: req.body.fechaDeComprobante, 
        tipoDeComprobante: req.body.tipoDeComprobante,
        puntoDeVenta: req.body.puntoDeVenta,
        numeroDeComprobante: req.body.numeroDeComprobante,
        despachoDeImportacion: req.body.despachoDeImportacion,
        codigoDeDocumentoDelVendedor: req.body.codigoDeDocumentoDelVendedor,
        numeroDeIdentificacionDelVendedor: req.body.numeroDeIdentificacionDelVendedor,
        apellidoYNombreODenominacionDelVendedor: req.body.apellidoYNombreODenominacionDelVendedor,
        importeTotalDeLaOperacion: req.body.importeTotalDeLaOperacion,
        importeTotalQueNoIntegranElPrecioNetoGravado: req.body.importeTotalQueNoIntegranElPrecioNetoGravado,
        importeDeOperacionesExternas: req.body.importeDeOperacionesExternas,
        pagosACuentaDelIVA: req.body.pagosACuentaDelIVA,
        pagosACuentaDeOtrosImpuestosNacionales: req.body.pagosACuentaDeOtrosImpuestosNacionales,
        pagosACuentaDeIngresosBrutos: req.body.pagosACuentaDeIngresosBrutos,
        pagosACuentaDeImpuestosMunicipales: req.body.pagosACuentaDeImpuestosMunicipales,
        importeDeImpuestosInternos: req.body.importeDeImpuestosInternos,
        codigoDeMoneda: req.body.codigoDeMoneda,
        tipoDeCambio: req.body.tipoDeCambio,
        cantidadDeAlicuotasDeIVA: req.body.cantidadDeAlicuotasDeIVA,
        codigoDeOperacion: req.body.codigoDeOperacion,
        creditoFiscalComputable: req.body.creditoFiscalComputable,
        otrosTributos: req.body.otrosTributos,
        cuitEmisorCorredor: req.body.cuitEmisorCorredor,
        denominacionEmisorCorredor: req.body.denominacionEmisorCorredor,
        ivaComision: req.body.ivaComision,
        });
     db.alicuotas.create({
        tipoDeComprobante: req.body.tipoDeComprobante,
        puntoDeVenta: req.body.puntoDeVenta,
        numeroDeComprobante: req.body.numeroDeComprobante, 
        codigoDeDocumentoDelVendedor: req.body.codigoDeDocumentoDelVendedor,
        numeroDeIdentificacionDelVendedor: req.body.numeroDeIdentificacionDelVendedor,
        importeNetoGravado: req.body.importeNetoGravado,
        codigoIvaId: req.body.codigoIva,
        impuestoLiquidado: req.body.impuestoLiquidado
     })    
        
    res.redirect('/')
    },
      comprobantesGenerator: async (req, res) => {
        let all = await db.registros.findAll()
        const id=uuidv4();
        
        arrtxt = await all.map((element)=>{
        let finalfinal =
        rellenar (element.fechaDeComprobante, 8) +
        rellenar (element.tipoDeComprobante, 3) +
        rellenar (element.puntoDeVenta, 5) +
        rellenar (element.numeroDeComprobante, 20) +
        rellenar (element.despachoDeImportacion, 16) +
        rellenar (element.codigoDeDocumentoDelVendedor, 2) +
        rellenar (element.numeroDeIdentificacionDelVendedor, 20) +
        rellenar (element.apellidoYNombreODenominacionDelVendedor, 30) +
        rellenar (element.importeTotalDeLaOperacion, 15) +
        rellenar (element.importeTotalQueNoIntegranElPrecioNetoGravado, 15) +
        rellenar (element.importeDeOperacionesExternas, 15) +
        rellenar (element.pagosACuentaDelIVA, 15) +
        rellenar (element.pagosACuentaDeOtrosImpuestosNacionales, 15) +
        rellenar (element.pagosACuentaDeIngresosBrutos, 15) +
        rellenar (element.pagosACuentaDeImpuestosMunicipales, 15) +
        rellenar (element.importeDeImpuestosInternos, 15) +
        rellenar (element.codigoDeMoneda, 3) +
        rellenar (element.tipoDeCambio, 10) +
        rellenar (element.cantidadDeAlicuotasDeIVA, 1) +
        rellenar (element.codigoDeOperacion, 1) +
        rellenar (element.creditoFiscalComputable, 15) +
        rellenar (element.otrosTributos, 15) +
        rellenar (element.cuitEmisorCorredor, 11) +
        rellenar (element.denominacionEmisorCorredor, 30) +
        rellenar (element.ivaComision, 15) +
        `\n`
    return finalfinal    
    })
    
    const arrtxt2 =  await arrtxt.toString()
    const arrtxt3 =  await arrtxt2.replace(/\,/gi,'')
    
    try {
        fs.appendFileSync('./files/' + id, arrtxt3);
        console.log('EL ARCHIVO DE COMPROBANTES SE ESCRIBIO CORRECTAMENTE\n' + arrtxt3.length + '\n' + 'RECORDA QUE LE SUMA 1 A CADA LIENA POR EL /n \n');
      } catch (err) {
       return res.send ('Error al escribir el archivo')
      }
    return res.download('./files/' + id, id + '.txt')
    },
    //***Generador de Alicuotas***//
    alicuotasGenerator: async (req, res) => {
        
        let all = await db.alicuotas.findAll({include:['codigoiva']})
        const id=uuidv4();

        arrtxt = all.map((element)=>{
        let finalfinal =
        rellenar (element.tipoDeComprobante , 3) +
        rellenar (element.puntoDeVenta , 5) +
        rellenar (element.numeroDeComprobante , 20) +
        rellenar (element.codigoDeDocumentoDelVendedor , 2) +
        rellenar (element.numeroDeIdentificacionDelVendedor, 20) +
        rellenar (element.importeNetoGravado, 15) +
        //ASOCIACION CON TABLA ALICUOTAS
        rellenar (element.codigoiva.codigoIva, 4) +
        rellenar (element.impuestoLiquidado , 15) +
        `\n`
    return finalfinal    
    })
    
    const arrtxt2 =  arrtxt.toString()
    const arrtxt3 =  arrtxt2.replace(/\,/gi,'')

    try {
        fs.appendFileSync('./files/' + id, arrtxt3);
        console.log('EL TXT DE ALICUOTAS SE ESCRIBIO CORRECTAMENTE\n' + arrtxt3.length + '\n' + 'RECORDA QUE LE SUMA 1 A CADA LINEA POR EL /n \n');
      } catch (err) {
       return res.send ('Error al escribir el archivo')
      }
    return res.download('./files/' + id, id + '.txt')
    },
}