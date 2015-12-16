$(function(){
    if ( $("#eventCalendar").length ) {

        var events = {};
        var Event = function(text, slug) {
            this.text = text;
            this.slug = slug;
        };



        $.ajax({
            url: "/calendar/events.json"
        }).done(function ( data ) {
                $.each(data, function() {
                    date = new Date(this.start_at);
                    events[date.toDateString()] = new Event(this.title, this.slug);
                });

                $("#eventCalendar").datepicker({
                    monthNames: ["Január","Február","Marec","Apríl","Máj","Jún","Júl","August","September","Október","November","December"],

                    beforeShowDay: function(date) {
                        date_string = date.toDateString();

                        console.log(date_string);

                        var event = events[date_string];

                        if (event) {
                            return [true, "calendar_event", event.text];
                        }
                        else {
                            return [true, '', ''];
                        }
                    },

                    onSelect: function(date) {
                        date_string = new Date(date).toDateString();
                        var event = events[date_string];
                        if (event){
                            window.open('/calendar/events/' + event.slug, '_self');
                        }
                    }
                });

            });



    }

});