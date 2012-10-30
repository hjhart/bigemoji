require 'rubygems'
require 'sinatra'
require 'awesome_print'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'prowly'

enable :sessions

get '/' do
  emoji_hash = {
        'pile_of_poo' => '&#128169;',
        'fist_bump: ' => '&#x1F44A;',
        'head orgasm' => '&#x1F486;',
        'scary man' => '&#x1F479;',
        'even scarrier man' => '&#x1F47A;',
        'flying money' => '&#x1F4B8;',
        'grimace' => '&#x1F629;',
        'what' => '&#x1F640;',
        'monkey ass scoot' => '&#x1F412;',
        'pile o poo' => '&#x1F4A9;',
        'dirty dirty fucking mustache man' => '&#x1F468;',
        'lightning bolt' => '&#x26A1;', 
        'snowman' => '&#x26C4;',
        'sparkle motion' => '&#x2728;',
        'cityscape' => '&#x1F307;',
        'sunflower' => '&#x1F33B;',
        'cheeseburger' => '&#x1F354;',
        'emojifry' => '&#x1F35F;',
        'egg' => '&#x1F373;',
        'beer' => '&#x1F37B;',
        'uhhh' => '&#x1F390;',
        'rollercoaster' => '&#x1F3A2;',
        'ram' => '&#x1F411;',
        'warthog' => '&#x1F417;',
        'caterpillar' => '&#x1F41B;',
        'koala' => '&#x1F428;',
        'camel' => '&#x1F42B;',
        'dolphin' => '&#x1F42C;',
        'mouse' => '&#x1F42D;',
        'cow' => '&#x1F42E;',
        'idiot' => '&#x1F47C;',
        'blood needle' => '&#x1F489;',
        'lovahs ' => '&#x1F48F;',
        'bob-omb' => '&#x1F4A3;',
        'laserdisc' => '&#x1F4BD;',
        'iphone' => '&#x1F4F1;',
        'cellphones off' => '&#x1F4F4;',
        'nobody over 18' => '&#x1F51E;',
        'flame' => '&#x1F525;',
        'slap hands' => '&#x1F64F;',
        'pepsi sign' => '&#x1F68F;',
        'cock blocker' => '&#x1F645;',
        'cock blockee' => '&#x1F6B6;',
        'bad ass boat' => '&#x1F6A4;',
        'rockets' => '&#x1F680;',
        'pig snout' => '&#x1F43D;',
      }
  values = emoji_hash.values
  keys = emoji_hash.keys
  
  random_seed = rand(values.size)
  @emoji = values[random_seed]
  @emoji_id = keys[random_seed]
  
  erb :default
end

post '/' do
  caption = params[:caption]
  caption_id = params[:caption_id]
  File.open('captions.txt', 'a+') { |f|
    f.puts "#{caption_id}, #{caption}"
  }
  
  redirect '/', :notice => "Duly noted!"
end

