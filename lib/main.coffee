WrapGuideElement = require './wrap-guide-element'

module.exports =
  activate: ->
    atom.workspace.observeTextEditors (editor) ->
      editorElement = atom.views.getView(editor)
      setTimeout(setUpWrapGuide.bind(this, editor, editorElement), 100)

setUpWrapGuide = (editor, editorElement) ->
  wrapGuideElement = new WrapGuideElement().initialize(editor)
  editorElement.querySelector(".underlayer")?.appendChild(wrapGuideElement)
