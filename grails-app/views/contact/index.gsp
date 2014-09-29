<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
<meta charset="ISO-8859-1">
<title>Contact</title>
</head>
<body>
<div id="page">
<header  class="container">
			<div id="menu" class="navbar navbar-default navbar-fixed-top" >
			<div class="navbar-header">
			<button class="btn btn-success navbar-toggle"
			data-toggle="collapse"
			data-target=".navbar-collapse"><span class="glyphicon glyphicon-chevron-down"></span></button>
				<div id="logo">
					<h4><a href="#">Various Browsers</a></h4>
				</div>
				</div>
				
				<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
						<li class="nav "><g:link controller= "modified" class="create" action="index" >Home</g:link></li>
						<li  class="nav "><g:link controller= "aboutspage" class="create" action="index" >About</g:link></li>
						<li  class="nav active"><g:link controller= "contact" class="create" action="index" >Contact</g:link></li>	</ul>
				</div>
					
			</div>
			
</header>

<section id="body" class="container">

	<div id="contactForm">
	
	<h2>Contact Us</h2>
	<p>This doesn't really work. But a simple example of form.</p>
	
	<div class="row">
	
	<form class="form-horizontal">
	
	<div class="form-group">
	<label for="nameInput" class="control-label col-md-2">Your Name</label>
			<div class="col-md-10">
			<input 	
					name="nameInput"
					class="form-control"
					placeholder="Enter your Name"/>
			</div>
	</div>
	
	<div class="form-group">
	<label for="emailId" class="control-label col-md-2">Email</label>
			<div class="col-md-10">
			<input name="emailId"
					type="email"
					class="form-control" 
					placeholder="someone@something.com"/>
					</div>
	</div>
	
	<div class="form-group">
	<label class="control-label col-md-2">Favorite</label>
	<div class="col-md-10">
		<div class=" btn-group btn-group-sm" data-toggle="buttons">
		<label class="btn btn-success active"><input type="checkbox">Dude</label>
		<label class="btn btn-success"><input type="checkbox">Vinodh</label>
		<label class="btn btn-success"><input type="checkbox">MyOrg</label></div>
	</div>
	</div>
	
	<div class="form-group">
	<label class="control-label col-md-2">Reason</label>
			<div class="col-md-10">
			<select class="form-control">
			<option>Adoration</option>
			<option>Ordering a list</option>
			<option>Complaint</option>
			<option>I am Lost</option>
			</select>
			</div>
	</div>
	
	<div class="dropdown">
	<ul class="dropdown-menu">
	<li><a>Vinodh</a></li>
	<li><a>MyOrg</a></li>
	<li><a>Camry</a></li>
	</ul>
	</div>
	
	<div class="form-group">
	<label for="sampleTA" class="control-label col-md-2">Message</label>
	<div class="col-md-10">
	<textarea name="sampleTA" cols="40" rows="6" class="form-control" placeholder="Blah ... Blah ..... Blah...."></textarea>
	</div>
	</div>
	
	
	<input type="submit" value="Submit" class="btn btn-success col-md-offset-2">
	</form>
	
	</div>
	<h3>Our Fake Address</h3>
	
	<div>
	<address> 
	2600 Tropical Point<br/>
	1324 <br/>
	Fortworth <br/>
	Texas - 76131
	</address>
	</div>
	
	</div>

</section>

<hr/>
<footer  class="container">
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas est mi, conse</p>
</footer>

</div>
</body>
</html>
