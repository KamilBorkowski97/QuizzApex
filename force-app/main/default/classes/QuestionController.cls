public with sharing class QuestionController {

    @AuraEnabled
    public static List<Question__c> getQuestions() {

        List<Question__c> questions;

        questions = [
            SELECT Id, Name, AnswerA__c, AnswerB__c, AnswerC__c, AnswerD__c, Category__c, CorrectAnswer__c
            FROM Question__c
        ];

        return questions;
    }
}
