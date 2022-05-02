module.exports = function (sequelize, dataTypes) {
    
    const alias = 'registros';

    const cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true, 
        },
        fechaDeComprobante: {
            type: dataTypes.INTEGER,
        },
        tipoDeComprobante: {
            type: dataTypes.INTEGER,
        },
        puntoDeVenta: {
            type: dataTypes.INTEGER,
        },
        numeroDeComprobante: {
            type: dataTypes.BIGINT,
        },
        despachoDeImportacion: {
            type: dataTypes.BIGINT,
        },
        codigoDeDocumentoDelVendedor: {
            type: dataTypes.INTEGER,
        },
        numeroDeIdentificacionDelVendedor : {
            type: dataTypes.BIGINT,
        },
        apellidoYNombreODenominacionDelVendedor: {
            type: dataTypes.STRING,
        },
        importeTotalDeLaOperacion : {
            type: dataTypes.BIGINT,
        },
        importeTotalQueNoIntegranElPrecioNetoGravado : {
            type: dataTypes.BIGINT,
        },
        importeDeOperacionesExternas : {
            type: dataTypes.BIGINT,
        },
        pagosACuentaDelIVA: {
            type: dataTypes.BIGINT,
        },
        pagosACuentaDeOtrosImpuestosNacionales: {
            type: dataTypes.BIGINT,
        },
        pagosACuentaDeIngresosBrutos: {
            type: dataTypes.BIGINT,
        },
        pagosACuentaDeImpuestosMunicipales: {
            type: dataTypes.BIGINT,
        },
    	importeDeImpuestosInternos: {
            type: dataTypes.BIGINT,
        },
        codigoDeMoneda: {
            type: dataTypes.BIGINT,
        },
        tipoDeCambio: {
            type: dataTypes.BIGINT,
        },
        cantidadDeAlicuotasDeIVA: {
            type: dataTypes.INTEGER,
        },
        codigoDeOperacion: {
            type: dataTypes.STRING,
        },
        creditoFiscalComputable: {
            type: dataTypes.BIGINT,
        },
        otrosTributos: {
            type: dataTypes.BIGINT,
        },
        cuitEmisorCorredor: {
            type: dataTypes.BIGINT,
        },
        denominacionEmisorCorredor : {
            type: dataTypes.STRING,
        },
        ivaComision: {
            type: dataTypes.BIGINT,
        },
    }

    const config = {
        tableName:'registros',
        timestamps: false,
    }

    const Registros = sequelize.define (alias, cols, config);

    return Registros;
}