fs = require 'fs'
path = require 'path'

describe "R grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-r")

    runs ->
      grammar =atom.grammars.grammarForScopeName("source.r")

    it "parses the grammar", ->
      expect(grammar).toBeTruthy()
      expect(grammar.scope).toBe "source.r"
