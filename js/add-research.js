

            ///place all your jquery functions here///
            page = 1;
            setPage();
            //initInput();

            $("#next").click(function(){
                
                if(page<3){
                    page++;
                    setPage();
                }
            })

            //previouse button click
            $("#prev").click(function(){
                if(page>1){
                    page--;
                    setPage();
                }
            })

           /// $("#submit").click(function(){
               /* var values = $("input[name='fname[]']").map(function(){
                    return $(this).val();
                }).get();
                alert(values); */

                //var title = $("#title").val();
               // echo("hellow");
                /*$.post('temp.php',{posttitle:title}, function(data){
                    alert(data);
                });*/
           // })

           $("#submit").click(function(){

                //book details variable
                var title = $("#title").val();
                //alert(title);
                var abs = $("#abstract").val();
                //alert(abs);
                var pubdate = $("#pubdate").val();
                //alert(pubdate);
                var dept = $("#department").val();
                //alert(dept);
                var kw = $("#keywords").val().split("\n");
                //alert(kw);
                var ref = $("#reference").val().split("\n");
                //alert(ref);

                var stat = $("#status").val();
                alert(stat);

                //author details variables
                var fname = $("input[name='fname[]']").map(function(){return $(this).val();}).get();
                //alert(fname);
                var mname = $("input[name='mname[]']").map(function(){return $(this).val();}).get();
                //alert(mname);
                var lname = $("input[name='lname[]']").map(function(){return $(this).val();}).get();
                //alert(lname);
                var suf = $("input[name='suf[]']").map(function(){return $(this).val();}).get();
                //alert(suf);
                var add = $("input[name='add[]']").map(function(){return $(this).val();}).get();
                //alert(add);
                var contact = $("input[name='contact[]']").map(function(){return $(this).val();}).get();
                //alert(contact);
                var email = $("input[name='email[]']").map(function(){return $(this).val();}).get();
               // alert(email);


                //validation of author details
                var authorList = new Array();
                var aut;
                for(i=0; i<fname.length; i++){
                    if (fname[i].length == 0 || mname[i].length == 0 || lname[i].length == 0 || add[i].length == 0 || contact[i].length == 0 || email[i].length == 0){
                        //alert("misiing");
                    }else{
                      aut   = fname[i] + "," + mname[i] + "," + lname[i] + "," + suf[i] + "," + add[i] + "," + contact[i] + "," + email[i];
                        authorList.push(aut);
                    }
                }


                    

                //ajax post
               $.ajax({
                url:"temp.php",
                type:"POST",
                cache:false,
                data:{           // multiple data sent using ajax
                    title:title,
                    abstract:abs,
                    pubdate:pubdate,
                    dept:dept,
                    kw:kw,
                    ref:ref,
                    stat: stat,
                    firstname: fname,
                    middlename: mname,
                    lastname: lname,
                    suffix: suf,
                    address: add,
                    contact: contact,
                    email: email

                },   
                success: function (data) {
                    $("#debug").html(data);        
                }
            });


           }) 




            $("#addField").click(function(){
                var name = $("#autSearch").val();
                if(name.length>0){
                    initInput(name);
                }else{
                    alert("Please Select Author");
                }
                
            })


            //page handling
            function setPage(){
                $("#aut_list").show();
                if(page==1){
                    $("#prev").hide();
                    $("#submit").hide();
                    $("#next").show();
                    $("#page2").hide();
                    $("#page3").hide();
                    $("#page1").slideDown("slow");
                }else if(page==2){
                    $("#prev").show();
                    $("#page1").hide();
                    $("#page3").hide();
                    $("#page2").slideDown("slow");
                }else if(page==3){
                    $("#next").hide();
                    $("#submit").show();
                    $("#page1").hide();
                    $("#page2").hide();
                    $("#page3").slideDown("slow");
                }
            }

            //init author info field
            function initInput(name){
                var nameArr = name.split("-");
                var finalName = null;
                $.ajax({
                    url:"getAuthor.php",
                    type:"POST",
                    cache:false,
                    data: {name:nameArr},
                    success: function(data){
                        finalName = data.split("?");
                        //alert(finalName);
                                        //alert(finalName);
                var fname = document.createElement("input");
                fname.type = "text";
                fname.name = "fname[]";
                fname.placeholder = "First Name";
                fname.readOnly = true;
                fname.value = finalName[0];

                var mname = document.createElement("input");
                mname.type = "text";
                mname.name = "mname[]";
                mname.placeholder = "Middle Name";
                mname.readOnly = true;
                mname.value = finalName[1];


                var lname = document.createElement("input");
                lname.type = "text";
                lname.name = "lname[]";
                lname.placeholder = "Lastname";
                lname.readOnly = true;
                lname.value = finalName[2];

                var suf = document.createElement("input");
                suf.type = "text";
                suf.name = "suf[]";
                suf.placeholder = "Suffix (e.g: Jr. / Sr.)";
                suf.readOnly = true;
                suf.value = finalName[3];

                var add = document.createElement("input");
                add.type = "text";
                add.name = "add[]";
                add.placeholder = "Address";
                add.readOnly = true;
                add.value = finalName[4];

                var contact = document.createElement("input");
                contact.type = "text";
                contact.name = "contact[]";
                contact.placeholder = "Contact";
                contact.readOnly = true;
                contact.value = finalName[5];

                var email = document.createElement("input");
                email.type = "text";
                email.name = "email[]";
                email.placeholder = "Email";
                email.readOnly = true;
                email.value = finalName[6];

               // <?php    }
                //} ?>

                var table = document.getElementById("aut_list");
                var row = table.insertRow(1);

                var fnameCon = row.insertCell(0);
                fnameCon.appendChild(fname);

                var mnameCon = row.insertCell(1);
                mnameCon.appendChild(mname);

                var lnameCon = row.insertCell(2);
                lnameCon.appendChild(lname);

                var sufCon = row.insertCell(3);
                sufCon.appendChild(suf);

                var addCon = row.insertCell(4);
                addCon.appendChild(add);

                var conCon = row.insertCell(5);
                conCon.appendChild(contact);

                var emailCon = row.insertCell(6);
                emailCon.appendChild(email);

                //var x = document.getElementById("authorName").options.namedItem(name).value;
                //
                //var x = document.getElementById("authorName").options.length;
                document.getElementById('autSearch').value = '';
                //(data);
                document.getElementById("authorName").options.namedItem(name).remove();
                }
                });


              /*  <?php 
                include_once 'connection.php'; 
                    $dbconfig = new dbconfig();
                    $conn = $dbconfig->getCon();
                    $query= "SELECT * FROM author";
                    $result = $conn->query($query);
                    if($result->num_rows > 0){
                        while($row = $result->fetch_assoc()){



                ?> */


            }