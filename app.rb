require "rubygems"
require "sinatra"

get '/' do
  "
  <html>
  <style>
    body {
    width:750px;
    margin:0 auto;
    margin-top:30px;
    }

    /* ----- NAVIGATION ----- */

    nav {
    width:200px;
    min-height:500px; 
    height:auto !important;
    height:500px; 
    background-color:#FFFFFF;
    float:left;
    position: fixed;
    font-family: 'Noto Sans', serif;
    font-size: 40px;
    }

    #logo{
    text-align: center;
    height: 125px;
    width: 200px;
    border-radius: 15px;
    background-color:#00CCFF;
    font-family: 'Quando', serif;
    position: fixed;
    }


    /* ----- MAIN CONTENT ----- */

    section {
    margin-left:210px;
    width:540px;
    min-height:500px; 
    height:auto !important; 
    height:500px; 
    background-color:#F0F0F0 ;
    }

    article {
    background-color:#FFFFFF;
    }

    h1 {
    font-family: 'Noto Sans', serif;
    font-size: 20px;	
    }

    p{
    font-family: 'Noto Sans', serif;
    font-size: 15px;	
    }
    
  </style>
  <body>
  	<nav>
  		<div id=\"logo\">
  		  Adams Blog
  		</div>
  	</nav>

  	<section>
  		<article>
  		  <form action='/post'>
               <input type='text' name='text'>
               <input type='submit'>
             </form>
  	    </article>
  	</section>

  </body>
  </html>
  "
end

get '/post' do
  "#{params[:text]} Character count:#{params[:text].downcase.count("a-z")} Time: #{Time.now}"  
end