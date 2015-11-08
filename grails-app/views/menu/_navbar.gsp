<nav class="navbar navbar-default">
	  	<div class="container-fluid">
	    	<!-- Brand and toggle get grouped for better mobile display -->
	    	<div class="navbar-header">
	      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
		      	</button>
		      	<a class="navbar-brand" href="http://www.coe.psu.ac.th/">COE</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="admin.html">Home <span class="sr-only">(current)</span></a></li>
							<li><g:link  url="./noti" >แจ้งเตือน</g:link></li>
							<li><g:link  url="./history" >ประวัติ</g:link></li>
				        	<li><g:link controller="Item" action="itemMain" >อุปกรณ์</g:link></li>
							<li><g:link controller="User" action="userMain" >สมาชิก</g:link></li>
							
						</ul>
						%{-- <ul class="nav navbar-nav ">
		        			<g:actionSubmit value="Sign out" action="signOut" class="btn btn-default navbar-btn"/>
		      			</ul> --}%
						
						<ul class="nav navbar-nav navbar-right">
						
		        			%{-- <form method="get" action="http://www.google.com/search">
									<input type="text"   name="q" size="20" style="color:#808080;"
									maxlength="100" value="Google site search"
									onfocus="if(this.value==this.defaultValue)this.value=''; this.style.color='black';" 
									onblur="if(this.value=='')this.value=this.defaultValue; "/>
									<input type="submit" value="Go!" class="btn btn-default navbar-btn" />
									<input type="hidden" name="sitesearch"  value="" />
							</form> --}%
							    <sec:ifLoggedIn>
    							  <li>
    							    <a href="${createLink(uri: '/j_spring_security_logout')}" >  
    							      Logout (<sec:loggedInUserInfo field="username" />)
    							    </a>
    							  </li>
    							</sec:ifLoggedIn>

						</ul>
	    	</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>