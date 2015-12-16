$(document).ready(function(){
    documents = $('p a[href]').filter(function(){ return /(pdf|doc|docx|xls|ppt|pps)$/i.test($(this).attr('href')); });
    if (documents.length ){
        $.each(documents, function(){
          file_extension = $(this).attr('href').split('.').pop();

            if (file_extension.length <= 4 ){
                $(this).prepend('<img style="display: inline;" src="/assets/icon/'+ file_extension + '.gif"> ' );
            }
        });
    }
});