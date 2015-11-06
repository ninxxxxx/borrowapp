<html>
<head>
  <meta charset = "utf-8" />
  <title></title>
<asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
</head>
<body controller="Item">
  <div class="container">


    <g:render template="/menu/navbar"/>

    <div class="row">
     <div class="col-xs-5 "></div>
     <div class="col-xs-5 col-md-6"><h1>รายละเอียดสมาชิก</h1></div>
     <div class="col-xs-5 "></div>  
   </div>

   <br>
   <div class="row">
    <div class="col-xs-6 col-md-4"></div>
    <div class="col-xs-6 col-md-4">
    </div>
    </div>


        <g:hiddenField name="itemId" value="${item.id}"/>

<table id="itemTable"  align="center" style="width:50%" class="table table-striped">
    
      <tbody>
           
            <tr>
              <th>ชื่อ</th>   <td>${item.title} </td>
            </tr>
           
            <tr>
              <th>หมวดหมู่ </th>   <td>${item.category} </td>
            </tr>
            
            <tr>
              <th>จำนวนขั้นต่ำ</th><td>${item.least} </td>
            </tr>

            <tr>
              <th>จำนวนที่มีอยู่</th>   <td> ${item.amount}</td>
            </tr>
            <tr>
              <td>
                <g:link action="editItem" params="[itemId:"${item.id}"]" class="btn btn-default">EDIT</g:link>
                <g:link action="deleteItem" params="[itemId:"${item.id}"]" class="btn btn-default">DELETE</g:link>
                %{-- <g:actionSubmit value="EDIT" action="editItem" params="[itemId:"${item.id}"]" class="btn btn-default"/>  --}%
                %{-- <g:actionSubmit value="DELETE" action="deleteItem" params="[itemId:"${item.id}"]" class="btn btn-default"/>  --}%
                <g:actionSubmit value="BACK" action="itemMain" class="btn btn-default"/>  </td>
            </tr>

      </tbody>
      </table>




    <div class="col-xs-6 col-md-4"></div>
  </div>


</div>


</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>