module.exports = function (sequelize, dataTypes) {
    
    const alias = 'copcompra';

    const cols = {
        codigo : {
            type: dataTypes.STRING,
            primaryKey: true,
            autoIncrement: true, 
        },
        operacionCompra: {
            type: dataTypes.STRING,
        },
    }

    const config = {
        tableName:'codigooperacioncompra',
        timestamps: false,
    }

    const ivaalicuotas = sequelize.define (alias, cols, config);

    return ivaalicuotas;
}