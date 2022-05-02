module.exports = function (sequelize, dataTypes) {
    
    const alias = 'ivaalicuotas';

    const cols = {
        id : {
            type: dataTypes.DECIMAL,
            primaryKey: true,
            autoIncrement: true, 
        },
        codigoIva: {
            type: dataTypes.INTEGER,
        },
    }

    const config = {
        tableName:'ivaalicuotas',
        timestamps: false,
    }

    const ivaalicuotas = sequelize.define (alias, cols, config);

   ivaalicuotas.associate = function (models) {

        ivaalicuotas.hasMany(models.Alicuotas,{
            as: 'codigoiva',
            foreignKey: 'tablaAlicuotasId'
        });

    return ivaalicuotas;
}
}