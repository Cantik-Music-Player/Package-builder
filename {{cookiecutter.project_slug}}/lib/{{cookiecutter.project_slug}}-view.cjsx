React = require('react')
ReactDOM = require('react-dom')

module.exports.{{cookiecutter.class_name}}Component =
class {{cookiecutter.class_name}}Component extends React.Component
  constructor: (props) ->
    super props

  render: ->
    <div></div>

module.exports.{{cookiecutter.class_name}}View =
class {{cookiecutter.class_name}}View
  constructor: (@cantik) ->
    @element = document.createElement('div')
    ReactDOM.render(
      <{{cookiecutter.class_name}}Component cantik=@cantik />,
      @element
    )
    document.getElementsByTagName('body')[0].appendChild(@element);

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
