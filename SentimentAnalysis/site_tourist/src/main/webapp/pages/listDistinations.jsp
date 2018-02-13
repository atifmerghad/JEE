<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>


<%@ taglib prefix="s" uri="/struts-tags"%>




<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>



<%@ taglib prefix="sjdt" uri="/struts-jquery-datatables-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
  <title>Touristical Monuments &mdash; Project Made By GI2 Students</title>
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/vendor/bootstrap/css/bootstrap.min.css");%> />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/vendor/metisMenu/metisMenu.min.css");%> />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/dist/css/sb-admin-2.css");%> />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/vendor/morrisjs/morris.css");%> />
      <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/vendor/font-awesome/css/font-awesome.min.css");%> />
  
  <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<sb:head/>
</head>
<body >
  <s:actionerror theme="bootstrap"/>
  <s:actionmessage theme="bootstrap"/>
  <s:fielderror theme="bootstrap"/>



  <div id="">

      <!-- Navigation -->
      <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="">Touristical Monuments</a>
          </div>
          <!-- /.navbar-header -->

          <ul class="nav navbar-top-links navbar-right">
        <li>     <a class="" data-toggle="" href="#">
              <i class="fa fa-book"></i> Listings 
          </a></li>
              <!-- /.dropdown -->
              <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                      <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-user">
                      <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                      </li>
                      <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                      </li>
                      <li class="divider"></li>
                      <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                      </li>
                  </ul>
                  <!-- /.dropdown-user -->
              </li>
              <!-- /.dropdown -->
          </ul>
       
      </nav>

      <div id="page-wrappers row">
              <div class="col-md-2"></div> <div class="col-md-10"><div class="row">
                      <div class="col-lg-12">
                          <h1 class="page-header">Dashboard</h1>
                      </div>
                      <!-- /.col-lg-12 -->
                  </div>
                  <div class="row">
                          <div class="">
                                  <div class="col-sm-10 center">
                                  <div class="row">
                                  				    <div class="panel panel-primary">
						      <div class="panel-heading">Créer une publication | Album photos/videos | ....</div>
						      <div class="panel-body">
						      		<s:form action="addDestination" method="post" enctype="multipart/form-data">
								    <div class="form-group">
										<div class="col-md-6">
								       <s:textfield name="destination.nom" theme="bootstrap" placeholder="Nom de destination" required="required"/>
										</div>
										<s:file name="userImage" theme="bootstrap" class="btn btn-default btn-file" value="Image de destination" required="required"/>  
								      <s:textarea theme="bootstrap"  rows="5" name="destination.description" id="comment" placeholder="Exprimer Vous, Atif"/>
								    </div>
								    <sj:submit value="Publier" class="btn btn-primary" />
								  <!-- <sj:submit value="Annuler" class="btn btn-danger"/>   -->   
								  </s:form>
						    </div>
                                  </div>
                                          <div class="customshadow text-center"><h1>Publications </h2></div><br>
                                        
                                           <s:iterator value="destinations" var="destination">
                                          <div class="panel panel-success customshadow">
                                                <!-- One listing  -->
      
                                                  <div class="panel-body">
                                                      <div class="row">
                                                          <div class="col-md-12 text-center">          
                                                                      <div class="container1">
                                                                      <img src="<s:property value="#destination.photo" />" class="img-rounded" alt="Cinque Terre" width="100%" height="236"> 
                                                                              <div class="topp btn btn-danger"> <div class="rate"><s:property value="#destination.note" />  <i class="fa fa-star"></i> </div> </div>
                                                                          
                                                                        <div class="middle">
                                                                            
                                                                          <div class="text">
                                                                                <s:property value="#destination.description" />
                                                                              </div>
                                                                        </div>
                                                                      </div>
                                                              </div>
                                                      </div>
                                                      
                                                          <div class="comment">
                                                                                         <br><s:form action="addComment" method="post">
                    <s:hidden name="idDestination" value="%{#destination.id}"/>
                    <div class="col-xs-10">
                    <s:textfield name="userComment.text" class="form-control" theme="bootstrap" placeholder="Ajouter des commentaires ..." required="required"/>
                        </div>
                          <s:submit class="btn btn=default" value="commenter"/>
                  </s:form>
                                                
                                                       
                                                      </div>
                                                      <hr>
                                                      <div class="comments">
                                                              <table class="table table-hover">
                                                                      <thead>
                                                                        <tr>
                                                                       
                                                                          <th>Comment</th>
                                                                      
                                                                        </tr>
                                                                      </thead>
                                                                      <tbody>
                                                                        
                                                                      <s:iterator value="commentaires" var="commentaire">
                                                                      <tr>
                                                                        
                                                                          <td>  <strong><s:property value="#commentaire.text" /></strong><br></td>
                                                                        </tr>
          
                     
                    </s:iterator>
                                                                      </tbody>
                                                                    </table> 
                                                      </div>
                                              </div>
                              </div> 
        
                                   </s:iterator>
                                          </div>
                                                    </div>
                                              
                               
                              </div>
                      <!-- One listing  -->
                  </div>
                  
              
          </div>
      </div>
      <!-- /#page-wrapper -->
 
  </div>
  

<!-- Button trigger modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Add a New Monuments</h5>
              <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"></span>
              </button>
            </div>
            <div class="modal-body">
                    <form>
                            <div class="form-group">
                              <label for="exampleFormControlInput1">Titre :</label>
                              <input type="titre" class="form-control" id="exampleFormControlInput1" placeholder="Title">
                            </div>
                
                            <div class="form-group">
                                    <label for="exampleFormControlInput1">Image:</label>
                                    <input type="file" accept="image/png, image/jpeg, image/gif" name="input-file-preview"/> <!-- rename it -->
                                  </div>
                            <div class="form-group">
                              <label for="exampleFormControlTextarea1">Description</label>
                              <textarea class="form-control" name="Description" id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>
                          </form>


            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
              <a  class="btn btn-success" href="login.html">Add</a>
            </div>
          </div>
        </div>
      </div>
  <!-- Latest compiled and minified CSS -->

<!-- Latest compiled and minified JavaScript -->
  <!-- jQuery -->
  
  <script src="/assets/vendor/jquery/jquery.min.js"></script>

  <!-- Bootstrap Core JavaScript -->
 

  <!-- Metis Menu Plugin JavaScript -->
  <script src="../assets/vendor/metisMenu/metisMenu.min.js"></script>

  <!-- Morris Charts JavaScript -->
  <script src="../assets/vendor/raphael/raphael.min.js"></script>
  <script src="../assets/vendor/morrisjs/morris.min.js"></script>
  <script src="../assets/data/morris-data.js"></script>

  <!-- Custom Theme JavaScript -->
  <script src="../assets/dist/js/sb-admin-2.js"></script>

</body>
</html>