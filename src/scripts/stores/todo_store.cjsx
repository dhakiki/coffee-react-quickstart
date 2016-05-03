Actions = require '../actions/todo_action.cjsx'

module.exports = Reflux.createStore
  status: 'ON'
  init: ->
    @listenTo Actions.toggleStatus, @toggleStatus

  getInitialState: ->
    @status

  export: ->
    status: @status

  toggleStatus: ->
    @status = if @status is 'ON' then 'OFF' else 'ON'
    @trigger @status
