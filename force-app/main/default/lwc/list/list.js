import { LightningElement, track, api } from "lwc";
import getQuestions from "@salesforce/apex/QuestionController.getQuestions";

export default class List extends LightningElement {
  @api recordId;

  @track questions;
  @track isError = false;
  @track errorMessage;

  connectedCallback() {
    this.getQuestionsRecords();
  }

  getQuestionsRecords() {
    getQuestions()
      .then(results => {
        this.questions = results;
        this.isError = false;
      })
      .catch(error => {
        this.isError = true;
        this.errorMessage = error.errorMessage;
      });
  }
}
