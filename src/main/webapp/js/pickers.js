/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('#login-trigger').click(function () {
        $(this).next('#login-content').slideToggle();
        $(this).toggleClass('active');
        if ($(this).hasClass('active'))
            $(this).find('span').html('<img src="assets/flecha-select-up.svg"class="Oval3">');
        else
            $(this).find('span').html('<img src="assets/flecha-select.svg"class="Oval3">');
    });

});


