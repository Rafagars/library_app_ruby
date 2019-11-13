$(document).on('turbolinks:load', function () {
    var bookForm = $(".bookForm");

    var hideForm = $(".hideForm");

    hideForm.hide();

    bookForm.hide();

    $('.showForm').on('click', function () {
        bookForm.show();
        hideForm.show();
        $('.showForm').hide();
    });

    hideForm.on('click', function () {
        bookForm.hide();
        hideForm.hide();
        $('.showForm').show();
    });
});