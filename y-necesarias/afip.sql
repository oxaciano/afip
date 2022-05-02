-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2020 at 06:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afip`
--

-- --------------------------------------------------------

--
-- Table structure for table `alicuotas`
--

CREATE TABLE `alicuotas` (
  `id` int(11) NOT NULL,
  `registrosId` int(11) DEFAULT NULL,
  `tipoDeComprobante` smallint(6) NOT NULL DEFAULT '0',
  `puntoDeVenta` mediumint(9) NOT NULL DEFAULT '0',
  `numeroDeComprobante` bigint(20) NOT NULL DEFAULT '0',
  `codigoDeDocumentoDelVendedor` smallint(6) NOT NULL DEFAULT '0',
  `numeroDeIdentificacionDelVendedor` bigint(20) NOT NULL DEFAULT '0',
  `importeNetoGravado` decimal(15,2) NOT NULL DEFAULT '0.00',
  `impuestoLiquidado` decimal(15,2) NOT NULL DEFAULT '0.00',
  `codigoIvaId` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alicuotas`
--

INSERT INTO `alicuotas` (`id`, `registrosId`, `tipoDeComprobante`, `puntoDeVenta`, `numeroDeComprobante`, `codigoDeDocumentoDelVendedor`, `numeroDeIdentificacionDelVendedor`, `importeNetoGravado`, `impuestoLiquidado`, `codigoIvaId`) VALUES
(1, 1, 81, 14, 30037, 80, 33646346679, '1891.15', '397.14', '21.00'),
(2, 2, 81, 14, 30156, 81, 33646346679, '1833.76', '385.09', '21.00');

-- --------------------------------------------------------

--
-- Table structure for table `codigoaduanas`
--

CREATE TABLE `codigoaduanas` (
  `Codigo` int(11) NOT NULL,
  `Aduana` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codigoaduanas`
--

INSERT INTO `codigoaduanas` (`Codigo`, `Aduana`) VALUES
(0, 'SUBD.GRAL. RECAUDACION'),
(1, 'ADUANA DE BUENOS AIRES'),
(3, 'ADUANA DE BAHIA BLANCA'),
(4, 'ADUANA SAN CARLOS DE BARILOCHE'),
(8, 'ADUANA CAMPANA'),
(10, 'ADUANA BARRANQUERAS'),
(12, 'ADUANA CLORINDA'),
(13, 'ADUANA COLON'),
(14, 'ADUANA COMODORO RIVADAVIA'),
(15, 'ADUANA CONCEPCION DEL URUGUAY'),
(16, 'ADUANA CONCORDIA'),
(17, 'ADUANA CORDOBA'),
(18, 'ADUANA CORRIENTES'),
(19, 'ADUANA PUERTO DESEADO'),
(20, 'ADUANA DIAMANTE'),
(23, 'ADUANA ESQUEL'),
(24, 'ADUANA FORMOSA'),
(25, 'ADUANA GOYA'),
(26, 'ADUANA GUALEGUAYCHU'),
(29, 'ADUANA  IGUAZU'),
(31, 'ADUANA JUJUY'),
(33, 'ADUANA LA PLATA'),
(34, 'ADUANA LA QUIACA'),
(37, 'ADUANA MAR DEL PLATA'),
(38, 'ADUANA MENDOZA'),
(40, 'ADUANA NECOCHEA'),
(41, 'ADUANA PARANA'),
(42, 'ADUANA PASO DE LOS LIBRES'),
(45, 'ADUANA POCITOS'),
(46, 'ADUANA  POSADAS'),
(47, 'ADUANA PUERTO MADRYN'),
(48, 'ADUANA RIO GALLEGOS'),
(49, 'ADUANA RIO GRANDE'),
(52, 'ADUANA ROSARIO'),
(53, 'ADUANA SALTA'),
(54, 'ADUANA SAN JAVIER'),
(55, 'ADUANA SAN JUAN'),
(57, 'ADUANA SAN LORENZO'),
(58, 'ADUANA SAN MARTIN DE LOS ANDES'),
(59, 'ADUANA SAN NICOLAS'),
(60, 'ADUANA SAN PEDRO'),
(61, 'ADUANA SANTA CRUZ'),
(62, 'ADUANA SANTA FE'),
(66, 'ADUANA TINOGASTA'),
(67, 'ADUANA USHUAIA'),
(69, 'ADUANA VILLA CONSTITUCION'),
(73, 'ADUANA DE EZEIZA'),
(74, 'ADUANA TUCUMAN'),
(75, 'ADUANA NEUQUEN'),
(76, 'ADUANA ORAN'),
(78, 'ADUANA SAN RAFAEL'),
(79, 'ADUANA LA RIOJA'),
(80, 'ADUANA SAN ANTONIO OESTE'),
(82, 'ADUANA BERNARDO DE IRIGOYEN'),
(83, 'ADUANA SAN LUIS'),
(84, 'ADUANA SANTO TOME'),
(85, 'ADUANA VILLA REGINA'),
(86, 'ADUANA OBERA'),
(87, 'ADUANA CALETA OLIVIA'),
(88, 'ADUANA GENERAL DEHEZA'),
(89, 'ADUANA SANTIAGO DEL ESTERO'),
(90, 'ADUANA GENERAL PICO'),
(91, 'BUENOS AIRES NORTE'),
(92, 'BUENOS AIRES SUR'),
(266, 'ZF CORONEL ROSALES'),
(267, 'ZF CONCEPCION DEL URUGUAY'),
(999, 'ADUANA EXCEPCION');

-- --------------------------------------------------------

--
-- Table structure for table `codigocomprobantescompras`
--

CREATE TABLE `codigocomprobantescompras` (
  `id` int(11) NOT NULL,
  `codigoFactura` int(11) NOT NULL,
  `denominacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codigocomprobantescompras`
--

INSERT INTO `codigocomprobantescompras` (`id`, `codigoFactura`, `denominacion`) VALUES
(1, 1, 'FACTURAS A'),
(2, 2, 'NOTAS DE DEBITO A'),
(3, 3, 'NOTAS DE CREDITO A'),
(4, 4, 'RECIBOS A'),
(5, 5, 'NOTAS DE VENTA AL CONTADO A'),
(6, 6, 'FACTURAS B'),
(7, 7, 'NOTAS DE DEBITO B'),
(8, 8, 'NOTAS DE CREDITO B'),
(9, 9, 'RECIBOS B'),
(10, 10, 'NOTAS DE VENTA AL CONTADO B'),
(11, 11, 'FACTURAS C'),
(12, 12, 'NOTAS DE DEBITO C'),
(13, 13, 'NOTAS DE CREDITO C'),
(14, 15, 'RECIBOS C'),
(15, 16, 'NOTAS DE VENTA AL CONTADO C'),
(16, 17, 'LIQUIDACION DE SERVICIOS PUBLICOS CLASE A'),
(17, 18, 'LIQUIDACION DE SERVICIOS PUBLICOS CLASE B'),
(18, 23, 'CPTES  A  DE COMPRA PRIMARIA PARA EL SECTOR PESQUERO MARITIMO'),
(19, 24, 'CPTES  A  DE COSIGNACION PRIMARIA PARA EL SECTOR PESQUERO MARITIMO'),
(20, 25, 'CPTES  B  DE COMPRA PRIMARIA PARA EL SECTOR PESQUERO MARITIMO'),
(21, 26, 'CPTES  B  DE CONSIGNACION PRIMARIA PARA EL SECTOR PESQUERO MARITIMO'),
(22, 27, 'LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE A'),
(23, 28, 'LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE B'),
(24, 30, 'COMPROBANTES DE COMPRA DE BIENES USADOS'),
(25, 32, 'COMPROBANTES PARA RECICLAR MATERIALES'),
(26, 33, 'LIQUIDACION PRIMARIA DE GRANOS'),
(27, 34, 'COMPROBANTES A DEL APARTADO A  INCISO F  R G  N  1415'),
(28, 35, 'COMPROBANTES B DEL ANEXO I  APARTADO A  INC. F   RG N  1415'),
(29, 36, 'COMPROBANTES C DEL ANEXO I  APARTADO A  INC.F   R.G. N  1415'),
(30, 37, 'NOTAS DE DEBITO O DOCUMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N  1415'),
(31, 38, 'NOTAS DE CREDITO O DOCUMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N  1415'),
(32, 39, 'OTROS COMPROBANTES A QUE CUMPLEN CON LA R G  1415'),
(33, 40, 'OTROS COMPROBANTES B QUE CUMPLAN CON LA R.G. 1415'),
(34, 41, 'OTROS COMPROBANTES C QUE CUMPLAN CON LA R.G. 1415'),
(35, 43, 'NOTA DE CREDITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE B'),
(36, 45, 'NOTA DE DEBITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE A'),
(37, 46, 'NOTA DE DEBITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE B'),
(38, 48, 'NOTA DE CREDITO LIQUIDACION UNICA COMERCIAL IMPOSITIVA CLASE A'),
(39, 49, 'COMPROBANTES DE COMPRA DE BIENES NO REGISTRABLES A CONSUMIDORES FINALES'),
(40, 50, 'RECIBO FACTURA A  REGIMEN DE FACTURA DE CREDITO'),
(41, 51, 'FACTURAS M'),
(42, 52, 'NOTAS DE DEBITO M'),
(43, 53, 'NOTAS DE CREDITO M'),
(44, 54, 'RECIBOS M'),
(45, 55, 'NOTAS DE VENTA AL CONTADO M'),
(46, 56, 'COMPROBANTES M DEL ANEXO I  APARTADO A  INC F   R G  N  1415'),
(47, 57, 'OTROS COMPROBANTES M QUE CUMPLAN CON LA R G  N  1415'),
(48, 58, 'CUENTAS DE VENTA Y LIQUIDO PRODUCTO M'),
(49, 59, 'LIQUIDACIONES M'),
(50, 60, 'CUENTAS DE VENTA Y LIQUIDO PRODUCTO A'),
(51, 61, 'CUENTAS DE VENTA Y LIQUIDO PRODUCTO B'),
(52, 63, 'LIQUIDACIONES A'),
(53, 64, 'LIQUIDACIONES B'),
(54, 66, 'DESPACHO DE IMPORTACION'),
(55, 70, 'RECIBOS FACTURA DE CREDITO'),
(56, 81, 'TIQUE FACTURA A   CONTROLADORES FISCALES'),
(57, 82, 'TIQUE - FACTURA B'),
(58, 83, 'TIQUE'),
(59, 90, 'NOTA DE CREDITO OTROS COMP  QUE NO CUMPLEN CON LA R G  1415 Y SUS MODIF'),
(60, 99, 'OTROS COMP  QUE NO CUMPLEN CON LA R G  1415 Y SUS MODIF'),
(61, 110, 'TIQUE NOTA DE CREDITO'),
(62, 111, 'TIQUE FACTURA C'),
(63, 112, 'TIQUE NOTA DE CREDITO A'),
(64, 113, 'TIQUE NOTA DE CREDITO B'),
(65, 114, 'TIQUE NOTA DE CREDITO C'),
(66, 115, 'TIQUE NOTA DE DEBITO A'),
(67, 116, 'TIQUE NOTA DE DEBITO B'),
(68, 117, 'TIQUE NOTA DE DEBITO C'),
(69, 118, 'TIQUE FACTURA M'),
(70, 119, 'TIQUE NOTA DE CREDITO M'),
(71, 120, 'TIQUE NOTA DE DEBITO M'),
(72, 331, 'LIQUIDACION SECUNDARIA DE GRANOS'),
(73, 332, 'CERTIFICADO DE DEPOSITO DE GRANOS EN PLANTA');

-- --------------------------------------------------------

--
-- Table structure for table `codigocomprobantesventas`
--

CREATE TABLE `codigocomprobantesventas` (
  `codigo` varchar(3) NOT NULL,
  `tipoDeMoneda` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codigocomprobantesventas`
--

INSERT INTO `codigocomprobantesventas` (`codigo`, `tipoDeMoneda`) VALUES
('1', 'FACTURAS A'),
('2', 'NOTAS DE DEBITO A'),
('3', 'NOTAS DE CREDITO A'),
('4', 'RECIBOS A'),
('51', 'FACTURAS M'),
('52', 'NOTAS DE DEBITO M'),
('53', 'NOTAS DE CREDITO M'),
('54', 'RECIBOS M'),
('59', 'LIQUIDACIONES M'),
('6', 'FACTURAS B'),
('63', 'LIQUIDACIONES A'),
('64', 'LIQUIDACIONES B'),
('68', 'LIQUIDACION C'),
('7', 'NOTAS DE DEBITO B'),
('8', 'NOTAS DE CREDITO B'),
('82', 'TIQUE - FACTURA B'),
('9', 'RECIBOS B');

-- --------------------------------------------------------

--
-- Table structure for table `codigodocumento`
--

CREATE TABLE `codigodocumento` (
  `id` int(11) NOT NULL,
  `codigoDocumento` int(11) DEFAULT NULL,
  `tipoDocumento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codigodocumento`
--

INSERT INTO `codigodocumento` (`id`, `codigoDocumento`, `tipoDocumento`) VALUES
(1, 0, 'C I CAPITAL FEDERAL'),
(2, 1, 'C I BUENOS AIRES'),
(3, 2, 'C I CATAMARCA'),
(4, 3, 'C I CORDOBA'),
(5, 4, 'C I CORRIENTES'),
(6, 5, 'C I ENTRE RIOS'),
(7, 6, 'C I JUJUY'),
(8, 7, 'C I MENDOZA'),
(9, 8, 'C I LA RIOJA'),
(10, 9, 'C I SALTA'),
(11, 10, 'C I SAN JUAN'),
(12, 11, 'C I SAN LUIS'),
(13, 12, 'C I SANTA FE'),
(14, 13, 'C I SGO DEL ESTERO'),
(15, 14, 'C I TUCUMAN'),
(16, 16, 'C I CHACO'),
(17, 17, 'C I CHUBUT'),
(18, 18, 'C I FORMOSA'),
(19, 19, 'C I MISIONES'),
(20, 20, 'C I NEUQUEN'),
(21, 21, 'C I LA PAMPA'),
(22, 22, 'C I RIO NEGRO'),
(23, 23, 'C I SANTA CRUZ'),
(24, 24, 'C I TIERRA DEL FUEGO'),
(25, 80, 'C U I T'),
(26, 86, 'C U I L'),
(27, 87, 'C D I'),
(28, 89, 'LIBRETA DE ENROLAMIENTO'),
(29, 90, 'LIBRETA CIVICA'),
(30, 91, 'C I EXTRANJERA'),
(31, 92, 'EN TRAMITE'),
(32, 93, 'ACTA DE NACIMIENTO'),
(33, 94, 'PASAPORTE'),
(34, 95, 'C I BS AS R N P'),
(35, 96, 'DOC NACIONAL DE IDENTIDAD'),
(36, 99, 'SIN IDENTIFICAR / VENTA GLOBAL DIARIA');

-- --------------------------------------------------------

--
-- Table structure for table `codigomonedas`
--

CREATE TABLE `codigomonedas` (
  `codigo` varchar(5) NOT NULL,
  `tipoDeMoneda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codigomonedas`
--

INSERT INTO `codigomonedas` (`codigo`, `tipoDeMoneda`) VALUES
('DOL', 'DOLAR ESTADOUNIDENSE'),
('PES', 'PESOS ARGENTINOS');

-- --------------------------------------------------------

--
-- Table structure for table `codigooperacioncompra`
--

CREATE TABLE `codigooperacioncompra` (
  `codigo` varchar(2) NOT NULL,
  `operacionCompra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codigooperacioncompra`
--

INSERT INTO `codigooperacioncompra` (`codigo`, `operacionCompra`) VALUES
('0', 'NO CORRESPONDE'),
('A', 'NO ALCANZADO'),
('C', 'OPERACIONES DE CANJE'),
('E', 'OPERACIONES EXENTAS'),
('N', 'NO GRAVADO'),
('X', 'IMPORTACION DEL EXTERIOR'),
('Z', 'IMPORTACION DE ZONA FRANCA');

-- --------------------------------------------------------

--
-- Table structure for table `ivaalicuotas`
--

CREATE TABLE `ivaalicuotas` (
  `id` decimal(5,2) NOT NULL,
  `codigoIva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ivaalicuotas`
--

INSERT INTO `ivaalicuotas` (`id`, `codigoIva`) VALUES
('0.00', 3),
('2.50', 9),
('5.00', 8),
('10.50', 4),
('21.00', 5),
('27.00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `registros`
--

CREATE TABLE `registros` (
  `id` int(10) NOT NULL,
  `fechaDeComprobante` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tipoDeComprobante` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `puntoDeVenta` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `numeroDeComprobante` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `despachoDeImportacion` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `codigoDeDocumentoDelVendedor` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `numeroDeIdentificacionDelVendedor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `apellidoYNombreODenominacionDelVendedor` varchar(30) NOT NULL DEFAULT '0',
  `importeTotalDeLaOperacion` decimal(15,2) NOT NULL DEFAULT '0.00',
  `importeTotalQueNoIntegranElPrecioNetoGravado` decimal(15,2) NOT NULL DEFAULT '0.00',
  `importeDeOperacionesExternas` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pagosACuentaDelIVA` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pagosACuentaDeOtrosImpuestosNacionales` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pagosACuentaDeIngresosBrutos` decimal(15,2) NOT NULL DEFAULT '0.00',
  `pagosACuentaDeImpuestosMunicipales` decimal(15,2) NOT NULL DEFAULT '0.00',
  `importeDeImpuestosInternos` decimal(15,2) NOT NULL DEFAULT '0.00',
  `codigoDeMoneda` varchar(3) NOT NULL DEFAULT '0',
  `tipoDeCambio` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `cantidadDeAlicuotasDeIVA` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `codigoDeOperacion` varchar(1) NOT NULL DEFAULT '0',
  `creditoFiscalComputable` decimal(15,2) NOT NULL DEFAULT '0.00',
  `otrosTributos` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cuitEmisorCorredor` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `denominacionEmisorCorredor` varchar(30) NOT NULL DEFAULT '0',
  `ivaComision` decimal(15,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registros`
--

INSERT INTO `registros` (`id`, `fechaDeComprobante`, `tipoDeComprobante`, `puntoDeVenta`, `numeroDeComprobante`, `despachoDeImportacion`, `codigoDeDocumentoDelVendedor`, `numeroDeIdentificacionDelVendedor`, `apellidoYNombreODenominacionDelVendedor`, `importeTotalDeLaOperacion`, `importeTotalQueNoIntegranElPrecioNetoGravado`, `importeDeOperacionesExternas`, `pagosACuentaDelIVA`, `pagosACuentaDeOtrosImpuestosNacionales`, `pagosACuentaDeIngresosBrutos`, `pagosACuentaDeImpuestosMunicipales`, `importeDeImpuestosInternos`, `codigoDeMoneda`, `tipoDeCambio`, `cantidadDeAlicuotasDeIVA`, `codigoDeOperacion`, `creditoFiscalComputable`, `otrosTributos`, `cuitEmisorCorredor`, `denominacionEmisorCorredor`, `ivaComision`) VALUES
(1, 20200811, 81, 14, 30350, 0, 80, 33646346679, 'GNC ROSARIO SA', '2600.08', '311.79', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'PES', '1.000000', 1, '0', '397.14', '0.00', 0, 'ASD', '0.00'),
(2, 20200803, 81, 14, 30477, 0, 80, 33646346679, 'GNC ROSARIO SA', '2600.60', '381.75', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', 'PES', '1.000000', 1, '0', '381.75', '0.00', 0, 'ASD', '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alicuotas`
--
ALTER TABLE `alicuotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrosId` (`registrosId`),
  ADD KEY `codigoIvaId` (`codigoIvaId`);

--
-- Indexes for table `codigoaduanas`
--
ALTER TABLE `codigoaduanas`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `codigocomprobantescompras`
--
ALTER TABLE `codigocomprobantescompras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codigocomprobantesventas`
--
ALTER TABLE `codigocomprobantesventas`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `codigodocumento`
--
ALTER TABLE `codigodocumento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codigooperacioncompra`
--
ALTER TABLE `codigooperacioncompra`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `ivaalicuotas`
--
ALTER TABLE `ivaalicuotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alicuotas`
--
ALTER TABLE `alicuotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `codigocomprobantescompras`
--
ALTER TABLE `codigocomprobantescompras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alicuotas`
--
ALTER TABLE `alicuotas`
  ADD CONSTRAINT `alicuotas_ibfk_1` FOREIGN KEY (`codigoIvaId`) REFERENCES `ivaalicuotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
