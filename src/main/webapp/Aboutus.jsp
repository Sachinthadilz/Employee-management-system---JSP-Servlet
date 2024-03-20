<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
       <style>
		
*{
    margin:0px;
    padding: 0px;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body{
    background-color:#f0f0f0 ;
}


/*who we are*/
    .section{
        width:100%;
        min-height:80vh;
    }

    .container{
        width:80%;
        display: block;
        margin: auto;
        padding-top: 100px;
    }

    .content-section{
        float: left;
        width: 55%;
        box-shadow:0 0 2.5rem rgba(0, 0, 0,0.28);
    }

    .image-section{
        float: right;
        width: 40%;
    }

    .image-section img{
        width: 120%;
        height: auto;
    }

    .container .title{
        text-transform: uppercase;
        font-size: 35px;
        text-align: center;
        margin-bottom: 10px;
    }

    .container .content-section .content{
        margin: 30px;
    }

    .content-section .content h3{
        margin-top: 20px;
        color: #373636; 
        font-size: 25px;
    }

    .content-section .content p{
        margin-top: 10px;
        font-family: sans-serif;
        font-size: 17px;
        line-height: 1.5;
    }
/*end*/


/*why to choose us*/
    .title {
        color: #000000;
        font-style:bold; 
        font-size: 30px;
        text-align: center;
        position: relative;
        padding-top:60px;
    }

    .flex-container{
        width:100%;
        height: auto;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        padding-top: 50px;
        padding-bottom: 80px;
        justify-content: center;
    }

    .flex-box{
        width: 200px;
        height: 100px;
        background-color: #ffffff;
        background-image: linear-gradient(315deg, #ffffff 0%, #d7e1ec 74%);
        border-radius: 20px;
        margin: 10px;
        font-size: 25px;
        text-align: center;
        text-decoration-color: #ddd;
        line-height: 100px;
    }
/*why to choose us end*/


/*stretagy*/
    .wrapper{
        margin-top: 20px;
        text-align: center ;
        margin-bottom:70px;
    }

    .wrapper .stretagy{
        display: flex;
        width: auto;
        justify-content: center;
    }

    .wrapper .stretagy .target{
        width:300px;
        margin: 20px;
        margin-right: 50px;
        margin-left:50px ;
        justify-content: center;
        background-color: #fff;
        padding: 10px 10px;
        box-shadow:0 0 2.5rem rgba(0, 0, 0,0.28);
    }


    .wrapper .stretagy .target .target-image{
        margin: 0 auto;
        border-radius: 50%;
        padding: 5px;
        cursor: pointer;
        position: relative;
    }

    .wrapper .stretagy .target .target-image img{
        height: 100%;
        width: 100%;
    }

    .wrapper .stretagy .target h4{
        margin-bottom: 50px;
        font-size: 22px;
    }

    .wrapper .stretagy .target p{
        justify-content: center;
        margin: 20px;
    }
/*stratgy end*/


/*Responsive*/
    @media screen and (max-width:768px) {
        .container{
            width: 80%;
            display: block;
            margin: auto;
            padding-top: 50px;
        }

        .content-section{
            float: none;
            width: 100%;
            display: block;
            margin: auto;
        }

        .image-section{
            float: none;
            width: 100%;
        }

        .image-section img{
            width: 100%;
            height: auto;
            display: block;
            margin: auto;
        }

        .content-section .title{
            text-align:center;
            font-size: 19px;
        }

        .wrapper{
            width: 100%;
            height: auto;
            display: block;
            margin: auto;
            float: none;
        }

        .wrapper .stretag{
            float: none;
            width: 100%;
            display: block;
            margin: auto;
        }

        .wrapper .stretagy .target{
            float: none;
            width: 100%;
            display: block;
            margin: auto;
        }

        .wrapper .stretagy .target .target-image{
            float: none;
            width: 100%;
        }
    }


</style>
    </head>
    <body>
      <jsp:include page="common/header.jsp"></jsp:include>
        <!--who we are-->
            <div class="section">
                <div class="container">
                    <div class ="title">
                        <h1>About Us</h1>
                    </div>
                    <br>
                    <div class="content-section">
                        <div class="content">
                            <h3>Who we are</h3>
                            <br>
                            <p>Welcome to our Empower Me. We are dedicated to providing a comprehensive and efficient solution for managing your workforce, ensuring optimal employee performance and organizational success. Our platform is a trusted resource for HR professionals and businesses of all sizes seeking a streamlined and effective employee management system.</p>
                        </div>
                    </div>
                    
                    <div class="image-section">
                        <img src="images/s3.jpeg">
                    </div>
                </div>
            </div> 
        <!--end--> 

<br><br><br>
        <!--why to choose us-->
            <div class ="title">
                <h3>Why Choose Our EMS</h3>
            </div>

            <div class ="flex-container">
                <div class="flex-box">
                    <b>Proffesional</b>
                </div>
                <div class="flex-box"> 
                    <b>Experinced</b>
                </div>
               
                <div class="flex-box">
                    <b>Transparency</b>
                </div>
                <div class="flex-box">
                    <b>Experts in HR</b>
                </div>
                <div class="flex-box">
                    <b>Quality Service</b>
                </div>
            </div>
        <!--end-->


        <!--stretagy-->
            <div class="wrapper">
                <div class="stretagy">
                    
                    <div class="target">
                        <div class="target-image">
                            <img src="images/mission.jpg" width="200px" height="200px">
                        </div>
                        <h4>Mission</h4>
                        <p><b>Our mission is to provide a secure, user-friendly platform for businesses to efficiently manage their employees, from recruitment to retirement, ensuring a harmonious and productive work environment.</b></p>
                    </div>

                    <div class="target">
                        <div class="target-image">
                            <img src="images/vision.webp" width="200px" height="200px">
                        </div>
                        <h4>Vision</h4>
                        <p><b>Our vision is to offer businesses and HR professionals access to a comprehensive employee management system, streamlining HR tasks, and fostering a thriving workplace. This system includes features for HR analytics, employee self-service, and performance management.</b></p>
                    </div>

                    <div class="target">
                        <div class="target-image">
                            <img src="images/value_200x200.jpg" width="200px" height="200px">
                        </div>
                        <h4>Value</h4>
                        <p><b>Our employee management system provides a convenient and accessible solution for organizations to enhance their HR processes. It eliminates the need for paperwork and simplifies tasks, making employee management efficient and stress-free.</b></p>
                    </div>

                </div>
            </div>
        <!--end-->

   <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>