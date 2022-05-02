module.exports = function (sequelize, dataTypes) {
    
    const alias = 'alicuotas';

    const cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true, 
        },
        registrosId: {
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
        codigoDeDocumentoDelVendedor: {
            type: dataTypes.INTEGER,
        },
        numeroDeIdentificacionDelVendedor: {
            type: dataTypes.BIGINT,
        },
        importeNetoGravado : {
            type: dataTypes.DECIMAL,
        },
        alicuotaDeIva : {
            type: dataTypes.DECIMAL,
        },
        impuestoLiquidado : {
            type: dataTypes.DECIMAL,
        },
        importeNetoGravado : {
            type: dataTypes.DECIMAL,
        },
    }

    const config = {
        tableName:'alicuotas',
        timestamps: false,
    }

    const Alicuotas = sequelize.define (alias, cols, config);

        Alicuotas.associate = function (models) {

            Alicuotas.belongsTo(models.IvaAlicuota,{
                as: 'codigoiva',
                foreignKey: 'tablaAlicuotasId'
            });

    }

    return Alicuotas;
}