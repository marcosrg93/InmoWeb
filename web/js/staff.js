//Script

$(document).ready(function () {
    $("<select>").appendTo(".navigation nav div div");
    //Poblar el select con las opciones del menu
    $(".navigation nav li a").each(function () {
        var elemento = $(this);
        $("<option />", {
            "value": elemento.attr("href"),
            "text": elemento.text()
        }).appendTo("nav select");
    });

    $("nav select").change(function () {
        window.location = $(this).find("option:selected").val();

    });

});