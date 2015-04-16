Rails.application.routes.draw do
	get '/greet' => 'greet#hi'
	get '/contact' => 'contact#contact'
    get '/contact_submitted' => 'contact#saved'
    get '/rps' => 'rps#rps'
	get '/rps_play' => 'rps#result'
	get '/dice' => 'dice#dice'
	get '/dice/play' => 'dice#play'
end
