require 'rack'
require 'rack/contrib/try_static'

use Rack::TryStatic, :root => '_site', :urls => %w[/], :try  => %w[.html index.html]

run Proc.new { |env|
  [ 404, { 'Content-Type' => 'text/html' }, File.open(File.expand_path('../_site/404.html', __FILE__)) ]
}
