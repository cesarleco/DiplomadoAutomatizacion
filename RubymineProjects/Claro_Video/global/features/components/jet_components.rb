require 'yaml'
require_relative '../../../helpers/utils'

module JetComponents

  YML ||= YAML.safe_load(File.read("./config/data/#{Utils.country}/page_labels/jet.yml"))

  module Jet_Elements

    TILE_PAGE ||={
        :mx=>{
            :inicio=>["xpath","#{YML['inicio']}"],
            :catalogo=>["xpath","#{YML['catalogo']}"],
            :generos=>["xpath","#{YML['generos']}"],
            :compra=>["xpath","#{YML['compra']}"],
            :canales=>["xpath","#{YML['canales']}"],
            :kids=>["xpath","#{YML['kids']}"]
        }
    }
    TILE_PAGINA ||={
        :mx=>{
            :pie_pagina1=>["xpath","#{YML['pie_pagina1']}"],
            :pie_pagina2=>["xpath","#{YML['pie_pagina2']}"],
            :pie_pagina3=>["xpath","#{YML['pie_pagina3']}"],
            :pie_pagina4=>["xpath","#{YML['pie_pagina4']}"],
            :pie_pagina5=>["xpath","#{YML['pie_pagina5']}"],
            :pie_pagina6=>["xpath","#{YML['pie_pagina6']}"],
            :pie_pagina7=>["xpath","#{YML['pie_pagina7']}"],
            :pie_pagina8=>["xpath","#{YML['pie_pagina8']}"],
            :pie_pagina9=>["xpath","#{YML['pie_pagina9']}"],
            :pie_pagina10=>["xpath","#{YML['pie_pagina10']}"]
            #:pie_pagina11=>["xpath","#{YML['pie_pagina11']}"],
            #:pie_pagina12=>["xpath","#{YML['pie_pagina12']}"],
            #:pie_pagina13=>["xpath","#{YML['pie_pagina13']}"],
            #:pie_pagina14=>["xpath","#{YML['pie_pagina14']}"]
        }
    }
    TILE_CARRUSEL ||={
        :mx=>{
            :carrusel1=>["xpath","#{YML['carrusel1']}"],
            :carrusel2=>["xpath","#{YML['carrusel2']}"]
        }
    }
    IMAGEN_CARRUSEL ||={
        :mx=>{
            :imagen1=>["xpath","#{YML['imagen1']}"],
            :imagen2=>["xpath","#{YML['imagen3']}"],
            :imagen3=>["xpath","#{YML['imagen3']}"],
            :imagen4=>["xpath","#{YML['imagen4']}"]
        }
    }
  end
  end