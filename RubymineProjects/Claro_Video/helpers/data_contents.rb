require 'fileutils'
require 'yaml'
require_relative '../helpers/utils'

class DataContents

  data ||= YAML.load(File.read("../global/config/data/#{Utils.country.to_s.downcase}/data_contents.yml"))

  # Obtiene el content: data source para las variables de contenidos
  @site_content ||= {
    #Series
    :'catalog serie' => {content: data['catalog_serie'], id: data['catalog_serie_id']},
    # ppe_serie: content: data['ppe_serie'], Se especifica, pero nunca se usa
    :'est serie'  => {content: data['est_serie'], id: data['est_serie_id']},
    :'free serie' => {content: data['free_serie'], id: data['free_serie_id']},
    # estppe_serie: content: data['estppe_serie'], Se especifica, pero nunca se usa
    :'freemiumest serie' => {content: data['freeest_serie']},
    # movies
    :'catalog movie' => {content: data['catalog_movie'], id: data['catalog_movie_id']},
    :'ppe movie' => {content: data['ppe_movie'], id: data['ppe_movie_id']},
    :'ppe movie not rented' => {content: data['ppe_movie_nr'], id: data['ppe_movie_nr_id']},
    :'ppe est not rented buyed' => {content: data['est_ppe_nr'], id: data['est_ppe_nr_id']},
    :'est serie not buyed' => {content: data['est_serie_nr'], id: data['est_serie_nr_id']},
    :'est movie not buyed' => {content: data['est_movie_nr'], id: data['est_movie_nr_id']},
    :'est movie' => {content: data['est_movie'], id: data['est_movie_id']},
    :'free movie' => {content: data['free_movie'], id: data['free_movie_id']},
    :'ppe est' => {content: data['estppe_movie'], id: data['estppe_movie_id']},
    :'freemiumest movie' => {content: data['freeest_movie']},
    # contents with parental control
    :'free movie with parental control' => {content: data['free_movie_cp'], id: data['free_movie_cp_id']},
    :'free serie with parental control' => {content: data['free_serie_cp'], id: data['free_serie_cp_id']},
    :'catalog movie with parental control' => {content: data['catalog_movie_cp'], id: data['catalog_movie_cp_id']},
    :'catalog serie with parental control' => {content: data['catalog_serie_cp'], id: data['catalog_serie_cp_id']},
    :'ppe movie with parental control' => {content: data['catalog_serie_cp'], id: data['catalog_serie_cp_id']},
    :'est serie with parental control' => {content: data['est_serie_cp'], id: data['est_serie_cp_id']},
    :'ppe est with parental control' => {content: data['estppe_movie_cp'], id: data['estppe_movie_cp_id']},
    :'freemiumest movie with parental control' => {content: data['freeest_serie_cp']},
    :'freemiumest serie with parental control' => {content: data['freeest_serie_cp']},
    # contents without parental control
    :'free movie without parental control' => {content: data['estppe_movie_cp'], id: data['estppe_movie_cp_id']},
    :'free serie without parental control' => {content: data['free_serie_ncp'], id: data['free_serie_ncp_id']},
    :'catalog movie without parental control' => {content: data['free_serie_ncp'], id: data['free_serie_ncp_id']},
    :'catalog serie without parental control' => {content: data['catalog_serie_ncp'], id: data['catalog_serie_ncp_id']},
    :'ppe movie without parental control' => {content: data['ppe_movie_ncp'], id: data['ppe_movie_ncp_id']},
    :'est serie without parental control' => {content: data['est_serie_ncp'], id: data['est_serie_ncp_id']},
    :'ppe est without parental control' => {content: data['estppe_movie_ncp'], id: data['estppe_movie_ncp_id']},
    :'freemiumest movie without parental control' => {content: data['freeest_serie_ncp']},
    :'freemiumest serie without parental control' => {content: data['freeest_serie_ncp']},
    # Live content
    # content_ppelive: content: data['content_ppelive'], Se especifica, pero nunca se usa
    # Fox contents
    :'fox serie' => {content: data['fox_serie'], id: data['fox_serie_id']},
    :'fox movie' => {content: data['fox_movie'], id: data['fox_movie_id']},
    :'fox movie without parental control' => {content: data['fox_movie_npc'], id: data['fox_movie_npc_id']},
    :'fox serie without parental control' => {content: data['fox_serie_npc'], id: data['fox_serie_npc_id']},
    :'noggin serie' => {content: data['noggin_serie'], id: data['noggin_serie_id']},
    :'non free noggin serie' => data['non_free_noggin_serie'],
    :'crackle serie' => {content: data['crackle_serie'], id: data['crackle_serie_id']},
    :'crackle movie' => {content: data['crackle_movie'], id: data['crackle_movie_id']},
    :'crackle movie without parental control' => {content: data['crackle_movie_npc'], id: data['crackle_movie_npc_id']},
    :'crackle serie without parental control' => {content: data['crackle_serie_npc'], id: data['crackle_serie_npc_id']},
    :'hbo movie' => {content: data['hbo_movie'], id: data['hbo_movie_id']},
    :'hbo serie' => {content: data['hbo_serie'], id: data['hbo_serie_id']},
    :'hbo movie without parental control' => {content: data['hbo_movie_npc'], id: data['hbo_movie_npc_id']},
    :'hbo serie without parental control' => {content: data['hbo_serie_npc'], id: data['hbo_serie_npc_id']}
  }

  class << self
  attr_reader :site_content
  end

end
