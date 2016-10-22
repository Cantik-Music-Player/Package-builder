require 'coffee-react/register'
{{cookiecutter.class_name}}View = require('./{{cookiecutter.project_slug}}-view').{{cookiecutter.class_name}}View
{{cookiecutter.class_name}}Component = require('./{{cookiecutter.project_slug}}-view').{{cookiecutter.class_name}}Component

module.exports =
class {{cookiecutter.class_name}}
  constructor: (@cantik) ->

  activate: (state) ->
    @{{cookiecutter.class_name[0].lower() + cookiecutter.class_name[1:]}}View = new {{cookiecutter.class_name}}View(@cantik)

  deactivate: ->
    if @{{cookiecutter.class_name[0].lower() + cookiecutter.class_name[1:]}}View?
      @{{cookiecutter.class_name[0].lower() + cookiecutter.class_name[1:]}}View.destroy()

  serialize: ->
