@isTest
private with sharing class QuestionControllerTest {
    
    @TestSetup
    static void makeData(){
        Question__c q1 = new Question__c(Name = 'Co to jest kot ?', Category__c = 'Biologia', AnswerA__c = 'Zwierze', AnswerB__c = 'Pojazd', AnswerC__c = 'Kraj', AnswerD__c = 'Herbata', CorrectAnswer__c = 'A');
        Question__c q2 = new Question__c(Name = 'Co to jest BMW ?', Category__c = 'Biologia', AnswerA__c = 'Zwierze', AnswerB__c = 'Pojazd', AnswerC__c = 'Kraj', AnswerD__c = 'Herbata', CorrectAnswer__c = 'B');
        
        List<Question__c> questions = new List<Question__c>();
        questions.add(q1);
        questions.add(q2);

        insert questions;
    }

    @isTest
    static void shouldReturnQuestions() {


        Test.startTest();
        List<Question__c> questionList = QuestionController.getQuestions();
        Test.stopTest();

        System.assertEquals(2, questionList.size(), 'Should return 2 questions');


    }
}
