module.exports = function (sequelize, dataTypes) {
    
    const alias = 'cdoc';

    const cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true, 
        },
        codigoDocumento: {
            type: dataTypes.INTEGER,
        },
        tipoDocumento: {
            type: dataTypes.STRING,
        },
    }

    const config = {
        tableName:'codigodocumento',
        timestamps: false,
    }

    const ivaalicuotas = sequelize.define (alias, cols, config);

    return ivaalicuotas;
}