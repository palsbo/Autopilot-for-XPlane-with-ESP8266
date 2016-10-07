/*
 * Web pages for web-server.
 * Supported pages:
 * "/" or index.html
 * "/xplane.kml" - Request page from Coggle Earth
 * "/eart.kml" - Startupscript for Google Earth to implement Link requester
 */

static const char index_html[] PROGMEM = R"=====(
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <title>%%TITLE%%</title>
  <style>
    .midt {
      margin: auto;
    }
  </style>
  <script>
  function getKML() {
    alert("When downloaded, press 'Run' to start Google Earth")
  };
  </script>
</head>
<body style="margin: 20px;">
  <div class="midt">
    <h1>%%TITLE%%</h1>
    <h2>Functions:</h2>
    <table>
    <tr><td><button style="width:100%" onclick="window.location.href = '/earth.kml'; ; ">Get KML start script</button></td></tr>
    <tr><td><button style="width:100%" onclick="window.location.href = '/config.html';">Config X-Plane connection</button></td></tr>
    </table>
    <p width="150px">Run KML start script when downloaded, to Start Google Earth.</p>;
  </div>
</body>
</html>
)=====";

static const char earth_kml[] PROGMEM = R"=====(<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2" xmlns:kml="http://www.opengis.net/kml/2.2" xmlns:atom="http://www.w3.org/2005/Atom">
<NetworkLink>
  <name>xPlane</name>
  <open>1</open>
  <gx:FlyTo>
    <gx:duration>1</gx:duration>
  </gx:FlyTo> 
  <gx:flyToMode>smooth</gx:flyToMode>
  <flyToView>1</flyToView>
  <Link>
    <href>http://%%URL%%/xplane.kml</href>
    <refreshMode>onInterval</refreshMode>
    <refreshInterval>0.2</refreshInterval>
  </Link>
</NetworkLink>
</kml>
)=====";

static const char xplane_kml[] PROGMEM = R"=====(<?xml version='1.0' encoding='UTF-8'?>
<kml xmlns='http://www.opengis.net/kml/2.2'>
<Placemark>
  <name>X Plane</name>
  <Camera id="C1">
    <longitude>%%LON%%</longitude>
    <latitude>%%LAT%%</latitude>
    <altitude>%%ALT%%</altitude>
    <heading>%%HDG%%</heading>
    <tilt>%%TLT%%</tilt>
    <roll>%%ROL%%</roll>
  </Camera>
  <Point>
  <coordinates>%%LAT%%,%%LON%%</coordinates>
  </Point>
</Placemark>
</kml>
)=====";

static const char config_html[] PROGMEM = R"=====(
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />
  <title>%%TITLE%%</title>
  <style>
    .ip {
      width: 100%;
      text-align: right;
    }
    .tdip {
      width:30px;
    }
    .prt {
      width: 100%;
      text-align: right;
    }
    .midt {
      margin: auto;
    }
  </style>
  <script>
  </script>
</head>
<body style="margin; 20px;">
  <div class="midt">
    <h1>%%TITLE%%</h1>
    <h2>Settings:</h2>
    <form method='POST' action='/'>
    <h3>X Plane host machine:</h3>
    <table cellspacing=4 cellpadding=2>
    <tr><td>Receive Port:</td><td colspan="4"><input name='rp' type='text' class='prt' value='%%RP%%'</td><td>Receive from X Plane</td></tr>
    <tr><td>Send Port:</td><td colspan="4"><input name='tp' type='text' class='prt' value='%%TP%%'</td><td>Send to X Plane</td></tr>
    <tr><td>UDP-framerate:</td><td colspan='4'><input name='fr' type='text' class='prt' value='%%FR%%'</td><td>Updates from X Plane/sec.</td></tr>
    <tr><td colspan=5 style='text-align:right'><button type='reset' value='Reset'>Reset</button> <button type='cancel' value='Cancel'>Cancel</button> <button type='submit' value='Submit'>Update</button></td><td></td></tr>
    </table>
    </form>
  </div>
</body>
</html>
)=====";


