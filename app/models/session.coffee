class Session extends BaseClass
  # @addQuestionPath = '/api/add-question'
  # @votePath = '/api/vote'
  # @flagPath = '/api/flag'
  # @indexPath = '/api/all-questions'
  @attributes =
    url:
      dataType: 'string'
      identifiable: true
      validates:
        presence: true
        uniqueness: true
    questions:
      dataType: 'association'
      many: true
      # preloadModel: Question

module.exports = Session
