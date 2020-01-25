require_relative '../../../helpers/utils'
# Device classificator handler
module Api
	
	# Web device data
	module Settings_Api
		PARAMS_REQUEST ||= {
				:web => {
						:mkfw_endpoint => 'https://mfwkweb-api.clarovideo.net'.freeze,
						:api_version => 'v5.84'.freeze,
						:authpn => 'webclient'.freeze,
						:authpt => 'tfg1h3j4k6fd7'.freeze,
						:device_category => 'web'.freeze,
						:device_manufacturer => 'generic'.freeze,
						:device_model => 'web'.freeze,
						:device_type => 'web'.freeze,
						:device_id => 'web'.freeze,
						:format => 'json'.freeze,
						:object_type => 'G'.freeze,
						:device_name => 'web'.freeze,
						:device_so => 'chrome'.freeze,
						:password => '123456'.freeze,
						:includpaywayprofile => 'true'.freeze,
						:session_key => "52f50ed0e4b053d3a195affb-#{Utils.country_name}".freeze,
						:cache => 'true'.freeze,
						:quantity => '2'.freeze,
						:preview => '0'.freeze,
						:quality => 'M'.freeze,
						:from => '0'.freeze,
						:css => '0'.freeze
				}
		}
		PARAMS_MIDDLEWARE ||={
				:api =>{
						prodweb_endpoint: "https://mw-cglobal-cvideo-web.clarovideo.net",
						prodresto_endpoint: "https://mw-cglobal-cvideo-resto.clarovideo.net",
						cm_access_token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX3Rva2VuIjp7ImNvcnJlbyI6ImdvcnRpekBhbWNvLm14IiwicmVnaW9uIjoibWV4aWNvIiwidG9rZW5fd2FwIjoiYVRvS2kwWGJ1MEh4OFBWNEk4QkZnVkd5VHFUd3RLWFdheGdacGtwcGF3IiwiaXNQcmV2aWV3Ijp0cnVlfX0.IVgbcODWynv-P_O0TbYAFIhNPNXHdP5VB1U296w1s7E'.freeze,
						authpn: 'amco'.freeze,
						authpt: '12e4i8l6a581a'.freeze,
						device_type: 'generic'.freeze,
						device_model: 'web'.freeze,
						device_manufacturer: 'generic'.freeze,
						device_category: 'web'.freeze,
						device_id: '123456'.freeze,
						tenant_code: 'claromusica'.freeze,
						format: 'json'.freeze,
						list_id: '46180745'.freeze,
						pagination: 'false'.freeze,
						medias_only: 'Tre'.freeze,
						start: '0'.freeze,
						size: '200'.freeze,
            region: Utils.country_name.to_s.freeze,
						current: 'Dedde'.freeze,
						category: 'general'.freeze
				}
		}
	end
	# Web Services URI's
	module Services
		SERVICES_URL ||= {
				:prod_endpoint => 'https://mw-cglobal-cvideo-resto.clarovideo.net'.freeze,
				:apa_metadata => '/services/apa/metadata'.freeze,
				:nav => '/services/nav/data'.freeze,
				:startheaderinfo => '/services/user/startheaderinfo'.freeze,
				:search_generic => '/services/search/generic'.freeze,
				:search_predictive => '/services/search/predictive'.freeze,
				:content_data => '/services/content/data'.freeze,
				:content_serie => '/services/content/serie'.freeze,
				:cms_level => '/services/cms/level'.freeze,
				:superhighlight => '/services/cms/superhighlight'.freeze,
				:content_list => '/services/content/list'.freeze,
				:is_loggedin => '/services/user/isloggedin'.freeze,
				:login => '/services/user/login'.freeze,
				:getmedia => '/services/player/getmedia'.freeze,
				:purchasebuttoninfo => '/services/payway/purchasebuttoninfo'.freeze,
				:workflowstart => '/services/payway/workflowstart'.freeze,
				:confirm => 'services/payway/buyconfirm/api_version/v7.1'.freeze,
				:seen => '/services/user/seen'.freeze,
				:favorited => '/services/user/favorited'.freeze,
				:leveluser => '/services/cms/leveluser'.freeze,
				:purchased => '/services/user/purchasedactive'.freeze,
				:linealchannels => '/services/payway/linealchannels'.freeze,
				:epg => '/services/epg/channel'.freeze,
				:search_vertical => '/services/search/vertical'.freeze,
				:search_vertical_lookup => '/services/search/verticallookup'.freeze,
				:recommendations => '/services/content/recommendations'.freeze,
				:device_list => '/services/device/list'.freeze,
				:detach_device => '/services/device/detach'.freeze,
				:activities_user => '/api/social/activities/user'.freeze,
				:isloggedin_cm => '/middleware/user/isLoggedIn?'.freeze,
				:level_ios_cm => '/middleware/cms/level'.freeze,
				:playlist_ios_cm => '/middleware/cms/playlistDetail'.freeze,
				:player_playercm_ios => '/middleware/player/player'.freeze
		}
		MIDDLEWARE_URL ||= {
				:level => '/middleware/cms/level'.freeze,
				:playlist_detail => '/middleware/cms/playlistDetail'.freeze,
				:is_Loggedin => '/middleware/user/isLoggedIn'.freeze,
				:player => '/middleware/player/player'.freeze,
				:get_media => '/middleware/player/playerGetMedia'.freeze,
				:health => '/health'.freeze
		}
	end

end
