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
						<sec:ifAllGranted roles="ROLE_ADMIN">
							<ul class="nav navbar-nav">
								<li><g:link  url="./" >หน้าหลัก</g:link></li>
								<li><g:link  controller="Menu" action="noti" >แจ้งเตือน</g:link></li>
								<li><g:link  controller="Menu" action="history" >ประวัติ</g:link></li>
				    	    	<li><g:link controller="Item" action="itemMain" >อุปกรณ์</g:link></li>
								<li><g:link controller="User" action="userMain" >สมาชิก</g:link></li>
								
							</ul>
						</sec:ifAllGranted>
						<sec:ifAllGranted roles="ROLE_USER">
							<ul class="nav navbar-nav">
								<li><g:link  url="./" >หน้าหลัก</g:link></li>
								<li><g:link  controller="Picking" action="pickingMain" >การเบิก</g:link></li>
				    	    	<li><g:link controller="Borrowing" action="borrowingMain" >การยืม</g:link></li>
								<li><g:link  controller="Menu" action="history" >ประวัติ</g:link></li>
								
							</ul>
						</sec:ifAllGranted>
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