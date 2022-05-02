module.exports = function (sequelize, dataTypes) {
    
    const alias = 'cccompras';

    const cols = {
        id:{
            type: dataTypes.INTEGER,
            primaryKey: true,
        },
        codigoFactura: {
            type: dataTypes.INTEGER,
        },
        denominacion: {
            type: dataTypes.STRING,
        },
    }

    const config = {
        tableName:'codigocomprobantescompras',
        timestamps: false,
    }

    const cccompras = sequelize.define (alias, cols, config);

    return cccompras;
}