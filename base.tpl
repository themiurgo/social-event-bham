<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Social Event 2013</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }

      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 700px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
  </head>
  <body>
    <div class="container-narrow">

      <div class="row">

        <div class="well">
          <h1>Research Student and Staff Social</h1>
          <p class="lead">Minigolf - Wednesday 20 March 2013</p>
          <hr/>
          <p>Each year, the school organises a start-of-year social for the staff and
research students. This is a great opportunity to get to know everyone
and enjoy some time together away from research and teaching. This year, the
school is very kindly funding a minigolf game at <a
href="http://www.adventureislandminigolf.co.uk/">Starcity</a> followed by a meal at
a nearby restaurant.</p>

<p>The trip will take place on Wednesday 20th March. We will be departing
from the school at 4.45pm towards the University railway station, where we will
catch minibuses directed to the minigolf course. Research students play for free! For staff, minigolf tickets
cost £6 each. Partners are also very welcome with tickets costing £6 each.</p>

<p>After the game, we will have dinner at <a
href="http://www.ko-starcity.co.uk/">Kebabish Original</a>. A curry-based
buffet will be available. The food is halal and there are vegetarian dishes.
The cost of a meal is £10.50 and does not include drinks. For who wants to join
us only for the meal, we will start at around 7.30.

<p>This form will close at midday on Saturday 16, please sign up before then.</p>
</div>
        <section class="span6">

%if defined('message'):
<b>{{message}}</b>
%end
          <form method="post" name="social" id="social">

            <div class="control-group">
              <label class="control-label" for="inputEmail"><i class="icon-user"></i> Name</label>
              <div class="controls controls-row">
                <input type="text" class="input-xxlarge" id="name" placeholder="Your Name" name="name">
              </div>
            </div>

            <div class="control-group">
              <label class="control-label" for="inputEmail">Are you student or staff?</label>
                <select name="role" id="role">
                  <option>Student</option>
                  <option>Staff</option>
                </select>
            </div>

<p>
Checked: yes. Unchecked: no.
</p>

            <div class="control-group">
              <label class="control-label" for="inputEmail"><i
class="icon-envelope"></i><input type="checkbox"
class="input-xxlarge" checked id="taxi" name="taxi"> Do you need a taxi ride?</label>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputEmail"><i
class="icon-envelope"></i><input type="checkbox"
class="input-xxlarge" checked id="minigolf" name="minigolf"> Are you coming to minigolf?</label>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputEmail"><i
class="icon-envelope"></i><input type="checkbox"
class="input-xxlarge" id="minigolf-p1" name="minigolf-p1"> Are bringing a plus
one to minigolf?</label>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputEmail"><i
class="icon-envelope"></i><input type="checkbox"
class="input-xxlarge" checked id="dinner" name="dinner"> Are you coming for dinner?</label>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputEmail"><i
class="icon-envelope"></i><input type="checkbox"
class="input-xxlarge" id="dinner-p1" name="dinner-p1"> Are bringing a plus
one for dinner?</label>
              <label class="control-label" for="inputEmail"><i
class="icon-envelope"></i><input type="checkbox"
class="input-xxlarge" id="taxi-p1" name="taxi-p1"> Does your plus one need
taxi?</label>
            </div>

            <div class="control-group">
              <div class="controls">
                <button type="submit" class="btn btn-success">Send Message</button>
              </div>
            </div>

          </form>
          <br class="clear">
                
        </section><!-- end left -->

        <section class="span6">
        </section><!--end right --> 
      </div><!--end row -->

<div class="container-narrow">
<h2>Who has signed up</h2>
<table class="table">
<thead>
    <tr>
        <th>Name</th>
        <th></th>
        <th>Bus</th>
        <th>Minigolf</th>
        <th>Dinner</th>
        <th>Bus+1</th>
        <th>Minigolf+1</th>
        <th>Dinner+1</th>
    </tr>
</thead>
    %for element in objects:
    <tr>
        <td>{{element['name']}}</td>
        <td>{{element['role']}}</td>
        <td>{{element['taxi']}}</td>
        <td>{{element['minigolf']}}</td>
        <td>{{element['dinner']}}</td>
        <td>{{element['taxip1']}}</td>
        <td>{{element['minigolfp1']}}</td>
        <td>{{element['dinnerp1']}}</td>
    </tr>
    %end
</table>


      <hr>

      <footer>
        <p>&nbsp;</p>
      </footer>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

</body>
</html> 
