// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Bootstrap CSS
import "bootstrap/dist/css/bootstrap.min.css"

// Bootstrap JavaScript (Make sure to include Popper.js before Bootstrap's JavaScript)
import "bootstrap/dist/js/bootstrap.bundle.min.js"

// Rails UJS
import Rails from "@rails/ujs";
Rails.start();