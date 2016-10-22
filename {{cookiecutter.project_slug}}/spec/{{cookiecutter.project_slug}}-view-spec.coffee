{{cookiecutter.class_name}}View = require('../lib/{{cookiecutter.project_slug}}-view').{{cookiecutter.class_name}}View
{{cookiecutter.class_name}}Component = require('../lib/{{cookiecutter.project_slug}}-view').{{cookiecutter.class_name}}Component

assert = require 'assert'
jsdom = require 'mocha-jsdom'

describe "{{cookiecutter.project_name}} Component", ->
  jsdom()

  beforeEach ->


  it "Render", ->
    new {{cookiecutter.class_name}}View()

    # Clean data-react-id
    html = document.getElementsByTagName("body")[0].innerHTML.replace(/ data-reactroot=""/g, '')

    assert.equal(html, '<div><div></div></div>')
