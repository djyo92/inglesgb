-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Servidor: custsql-ipg72.eigbox.net
-- Tiempo de generación: 19-09-2015 a las 19:48:29
-- Versión del servidor: 5.5.43
-- Versión de PHP: 4.4.9
-- 
-- Base de datos: `inglesgb`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `palabrasen`
-- 

CREATE TABLE `palabrasen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `traduccion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `palabrasen`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `palabrases`
-- 

CREATE TABLE `palabrases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `decripcion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `traduccion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `palabrases`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tema`
-- 

CREATE TABLE `tema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tema`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombres` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuariotema`
-- 

CREATE TABLE `usuariotema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idtema` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `usuariotema`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ut_palabras`
-- 

CREATE TABLE `ut_palabras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuariotema` int(11) NOT NULL,
  `idpalabrases` int(11) NOT NULL,
  `idpalabrasen` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `ut_palabras`
-- 

