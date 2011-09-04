$ ->
  console.log "Starting backbone initialization"

  window.PairingSession = class PairingSession extends Backbone.Model

  window.PairingSessionList = class PairingSessionList extends Backbone.Collection
    model: PairingSession

    initialize: ->
      console.log "Initializing Pairing Session List"

  window.pairing_sessions = new PairingSessionList


  window.PairingSessionView = class PairingSessionView extends Backbone.View
    tagName: "li",
    template: _.template($('#pairing-session-template').html()),

    initialize: ->
      console.log "Initializing PairingSessionView"

    render: ->
      console.log "Rendering PairingSessionView"
      ($ this.el).html this.template this.model.toJSON()
      return this

  window.PairingSessionListView = class PairingSessionListView extends Backbone.View
    el: ($ "#session-listing")

    initialize: ->
      console.log "Initializing PairingSessionListView"
      pairing_sessions.bind "add", this.addSession, this

    addSession: (session) ->
      console.log session
      session_view = new PairingSessionView { model: session }
      (this.$ ".sessions").append session_view.render().el



  window.pairing_sessions_view = new PairingSessionListView

