$(document).on('turbolinks:load', function () {
    /* Form behavior */
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

    /* Tab fade animation */

    $('#whislist-tab').on('click', function () {
        $("#wishlist").addClass('fade');
    });

    $('#owned-tab').on('click', function () {
        $('#owned').addClass('fade');
    });
});