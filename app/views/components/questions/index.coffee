Header = require 'views/components/header/_Header.coffee'
QuestionInput = require 'views/components/questions/_QuestionInput.coffee'
QuestionBubble = require 'views/components/questions/_QuestionBubble.coffee'

{div} = React.DOM

QuestionIndex = React.createClass

  displayName: 'QuestionIndex'

  componentDidMount: ->
    PublishSubscribe.listen.call document, "ask", (q) =>
      newQuestionList = _.clone(@props.questions) || [] 
      newQuestionList.push q
      @setProps questions: newQuestionList

  render: ->
    div id: 'question-index',
      React.createElement(Header, @props)
      div className: 'container main',
        div className: 'row',
          if @props.questions
            for question in @props.questions
              div className: 'col-sm-12 col-md-6',
                React.createElement QuestionBubble, question
        div className: 'row',
          div className: 'col-sm-12',
            React.createElement QuestionInput

module.exports = QuestionIndex
