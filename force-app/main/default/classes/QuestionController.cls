public with sharing class QuestionController {
  @AuraEnabled
  public static List<Question__c> getQuestions() {
    return [
      SELECT
        Id,
        Name,
        Category__c,
        AnswerA__c,
        AnswerB__c,
        AnswerC__c,
        AnswerD__c,
        CorrectAnswer__c
      FROM Question__c
    ];
  }
}
