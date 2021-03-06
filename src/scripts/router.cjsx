# Load css first thing. It gets injected in the <head> in a <style> element by
# the Webpack style-loader.
require '../../public/main.css'

React = require 'react'
Reflux = require 'reflux'
ReactDOM = require 'react-dom'
# Assign React to Window so the Chrome React Dev Tools will work.
window.React = React
window.Reflux = Reflux

Router = require('react-router')
Route = Router.Route

# Require route components.
HelloWorld = require './hello_world'
StyleGuide = require './styleguide'
App = require './app'

routes = (
  <Route handler={App}>
    <Route name="hello" handler={HelloWorld} path="/" />
    <Route name="styleguide" handler={StyleGuide} path="/styleguide" />
  </Route>
)
Router.run(routes, (Handler) ->
  ReactDOM.render <Handler/>, document.getElementById 'app'
)
