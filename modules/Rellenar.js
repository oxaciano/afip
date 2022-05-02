function rellenar(numero, relleno){
    let input = numero.toString()
    let entero = input.indexOf('.')
     if (entero < 0) {
     let zero = '0'
     let final = zero.repeat(relleno-input.length)+input
     return final
        } else {
         nuevoinput = input.replace (/\./gi,'')
         let zero = '0'
         let final = zero.repeat(relleno-nuevoinput.length)+nuevoinput
         return final
    }
    }
    
    module.exports = rellenar;