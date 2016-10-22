{{cookiecutter.class_name}} = require '../lib/{{cookiecutter.project_slug}}'
sinon = require 'sinon'
assert = require 'assert'

describe "{{cookiecutter.project_name}}", ->
  beforeEach ->
    @{{cookiecutter.project_name.lower().replace(' ', '')}} = new {{cookiecutter.class_name}}()

  it "Initialized", ->
