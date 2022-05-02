module.exports = function (sequelize, dataTypes) {
    
    const alias = 'cmon';

    const cols = {
        codigo : {
            type: dataTypes.STRING,
            primaryKey: true,
            autoIncrement: true, 
        },
        tipoDeMoneda: {
            type: dataTypes.STRING,
        },
    }

    const config = {
        tableName:'codigomonedas',
        timestamps: false,
    }

    const ivaalicuotas = sequelize.define (alias, cols, config);

    return ivaalicuotas;
}