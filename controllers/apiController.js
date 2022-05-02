const db = require ('../db/models')

module.exports = {
    root: async (req, res) => {
        let all = await db.registros.findAll();
        return res.json({
                meta:{
                    status: 200,
                },
                data: all.map(
                    resp => {
                        return {
                            id:resp.id,
                            fechaDeComprobante: resp.fechaDeComprobante,
                            tipoDeComprobante: resp.tipoDeComprobante,
                            puntoDeVenta: resp.puntoDeVenta,
                            numeroDeComprobante: resp.numeroDeComprobante,
                            despachoDeImportacion : resp.despachoDeImportacion,
                            codigoDelDocumentoDelVendedor:resp.codigoDelDocumentoDelVendedor,
                            numeroDeIdentificacionDelVendedor:resp.numeroDeIdentificacionDelVendedor,
                            apellidoYNombreODenominacionDelVendedor: resp.apellidoYNombreODenominacionDelVendedor,
                            importeTotalQueNoIntegranElPrecioNetoGravado:resp.importeTotalQueNoIntegranElPrecioNetoGravado,
                            importeDeOperacionesExternas: resp.importeDeOperacionesExternas,
                            pagosACuentaDelIVA:resp.pagosACuentaDelIVA,
                            pagosACuentaDeOtrosImpuestosNacionales:resp.pagosACuentaDeOtrosImpuestosNacionales,
                            pagosACuentaDeIngresosBrutos:resp.pagosACuentaDeIngresosBrutos,
                            pagosACuentaDeImpuestosMunicipales:resp.pagosACuentaDeImpuestosMunicipales,
                            importeDeImpuestosInternos:resp.importeDeImpuestosInternos,
                            codigoDeMoneda:resp.codigoDeMoneda,
                            cantidadDeAlicuotasDeIVA:resp.cantidadDeAlicuotasDeIVA,
                            codigoDeOperacion:resp.codigoDeOperacion,
                            creditoFiscalComputable:resp.creditoFiscalComputable,
                            otrosTributos:resp.otrosTributos,
                            cuitEmisorCorredor:resp.cuitEmisorCorredor,
                            denominacionEmisorCorredor:resp.denominacionEmisorCorredor,
                            ivaComision:resp.ivaComision,
                        }
    })
})
}
}