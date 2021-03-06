    function main() {
        // center map over Australia
        var ausCenter = new google.maps.LatLng(-25.363882, 131.044922);
        var map;
        var infobubble;
        function loadMap() {

            var mapOptions = {
                zoom : 4,
                center : ausCenter,
                mapTypeId : google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(document.getElementById('map-canvas'),
                    mapOptions);
            findObservations();
        }

        function findObservations() {
            var url = '/sightings.json';
            var getReq = $.get(url);

            /* Put the results in a div */
            getReq.done(function(data) {
                for ( var i = 0; i < data.length; i++) {
                    addObservation(data[i]);
                }
            });

            getReq.fail(function() {
                $("#result").empty().append('Oops, problem...');
            });
        }

        function addObservation(observation) {
            console.log('adding observation for user: ' + observation.name)
            var sightedStr = (observation.sighted ? "sighted" : "did not sight")
            var d = new Date(observation.created_at);
            var dateStr = $.datepicker.formatDate( 'dd MM yy', d);
            var contentString = '<div id="content">'
                    + '<div id="userObservation">' + '</div>'
                    + '<h2 id="firstHeading" class="firstHeading">'
                    + observation.name+ ' ' + sightedStr + ' the moon on ' + dateStr +'</h2>' + '<div id="bodyContent">';
            if (observation.sighted){
                contentString+= '<p>Sighting visibility: ' + observation.visibility + '</p>' ;
            } else {
                contentString += 'Not sighted';
            }
            contentString += '</div>' + '</div>';

            var point = new google.maps.LatLng(observation.latitude,
                    observation.longitude);

            infobubble = new InfoBubble({
                map : map,
                content : contentString,
                position : point,
                shadowStyle : 1,
                padding : 0,
                backgroundColor : 'white',
                borderRadius : 4,
                arrowSize : 10,
                borderWidth : 1,
                borderColor : '#2c2c2c',
                disableAutoPan : true,
                hideCloseButton : true,
                arrowPosition : 30,
                arrowStyle : 2
            });
            
            var markerIcon;
            
            if ( observation.sighted  ){
                markerIcon = 'http://maps.google.com/mapfiles/ms/icons/green-dot.png';
            }else {
                markerIcon = 'http://maps.google.com/mapfiles/ms/icons/red-dot.png';
            }
            console.log('markerIcon'+markerIcon)
            var marker = new google.maps.Marker({
                position : point,
                map : map,
                title : ''+observation.sighted,
                icon: markerIcon
            });
            marker.content = contentString;
            google.maps.event.addListener(marker, 'click', function() {
                if (infobubble && infobubble.isOpen()) {
                    infobubble.close();
                }
                infobubble.setContent(marker.content);
                infobubble.open(map, marker);
            });
        }
        loadMap();
    }

    google.maps.event.addDomListener(window, 'load', main);
