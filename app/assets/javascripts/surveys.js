// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function () {
  'use strict';

  console.log("I'm ALIVE!!!!!");

  var numQuestions = $("[id*='survey_questions_attributes_']").parent().length;

  $(".actions").prepend('<input type="submit" name="add-question-btn" value="Add Question" id="add-question-btn">');

  console.log("Number of questions => " + numQuestions);

  var htmlStr = "";

    // $("[id*='survey_questions_attributes_']").parent().empty().append(htmlStr);
    // $("[id*='survey_questions_attributes_']").parent().empty().html() = htmlStr;
    // $("[id*='add-question-btn-']").on("click", function(e){

    $("#add-question-btn").on("click", function(e){
      e.preventDefault();
      
      console.log("*** click add button ***");

      htmlStr = "";
      htmlStr +=
        '</div>' +
        '<div>' +
        '  <input placeholder="Your Question" type="text" name="survey[questions_attributes]['+ numQuestions +'][text]" id="survey_questions_attributes_'+ numQuestions +'_text">' +
        '  <input placeholder="Order" type="text" name="survey[questions_attributes]['+ numQuestions +'][order_number]" id="survey_questions_attributes_'+ numQuestions +'_order_number">' +
        '  <select name="survey[questions_attributes]['+ numQuestions +'][question_type]" id="survey_questions_attributes_'+ numQuestions +'_question_type">' +
        '    <option value="1">YesNo</option>' +
        '    <option value="2">ShortAnswer</option>' +
        '    <option value="3">LongAnswer</option>' +
        '  </select>' +
        '  <input type="hidden" name="survey[questions_attributes]['+ numQuestions +'][survey_id]" id="survey_questions_attributes_'+ numQuestions +'_survey_id">';

        // '  <input type="submit" name="add-question-btn" value="Add" id="add-question-btn-'+ numQuestions +'">' +
        // '  <input type="submit" name="add-question-btn" value="Add" id="add-question-btn">' +

        $("#survey_questions_attributes_0_survey_id").parent().append(htmlStr);

        // $(this).append(htmlStr);
        // $(this).attr("id", "remove-question-btn-" + numQuestions - 1);
        // $(this).attr("value", "Remove");

        numQuestions++;
    });

});  // End of file.
