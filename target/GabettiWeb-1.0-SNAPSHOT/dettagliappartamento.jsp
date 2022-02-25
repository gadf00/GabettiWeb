<%@ page import="model.appartamento.AppartamentoBean" %>
<%@ page import="model.agente.AgenteBean" %>
<%@ page import="model.utente.UtenteBean" %>
<%@ page import="model.indirizzo.IndirizzoBean" %>
<%@ page import="model.multimedia.MultimediaBean" %><%--
  Created by IntelliJ IDEA.
  User: Luca
  Date: 23/02/2022
  Time: 09:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    AppartamentoBean appBean = (AppartamentoBean) request.getAttribute("appartamento");
    AgenteBean agenteBean = (AgenteBean) request.getAttribute("agente");
    UtenteBean utenteBean = (UtenteBean) request.getAttribute("utente");
    IndirizzoBean indirizzoBean = (IndirizzoBean) request.getAttribute("indirizzo");
    MultimediaBean multimediaBean = (MultimediaBean) request.getAttribute("multimedia");
%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Gabetti</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/line-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/material-icons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/Map-Clean.css">
    <link rel="stylesheet" href="assets/css/MUSA_carousel-extended-1.css">
    <link rel="stylesheet" href="assets/css/MUSA_carousel-extended.css">
    <link rel="stylesheet" href="assets/css/Simple-Slider.css">
    <link rel="stylesheet" href="assets/css/Slider-Range.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body style="background: #f7f7f7;">
<header style="height: 300px;background: url(assets/img/cta-bg.jpg) top / cover;width: 1903px;">
    <nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav"
         style="padding-bottom: 0px;width: 1903px;margin-bottom: 0px;">
        <div class="container"><a class="navbar-brand" href="#page-top"
                                  style="width: 130px;height: 130px;background: url(assets/img/gabettinocera.png) no-repeat;background-size: contain;padding-top: 0px;padding-bottom: 0px;margin-right: 0px;"></a>
            <button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler float-end"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i
                    class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive" style="height: 100px;">
                <ul class="navbar-nav d-xl-flex ms-auto align-items-xl-center" style="height: 100px;">
                    <li class="nav-item d-xl-flex"><a class="nav-link d-xl-flex align-items-xl-center" href="#features"
                                                      style="height: 50px;padding: 0px;padding-right: 8px;padding-left: 8px;/*color: rgb(255,255,255);*/font-size: 15px;">Features</a>
                    </li>
                    <li class="nav-item"><a class="nav-link d-xl-flex align-items-xl-center" href="#contact"
                                            style="height: 50px;padding: 0px;padding-right: 8px;padding-left: 8px;/*color: rgb(255,255,255);*/font-size: 15px;">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<section
        style="position: absolute;height: 100px;width: 1903px;padding-bottom: 0px;padding-top: 0px;margin-top: -50px;margin-left: 0px;margin-right: 0px;">
    <form style="width: 1440px;height: 100px;margin-top: 0px;margin-right: 231.5px;margin-left: 231.5px;padding-right: 100px;padding-left: 100px;">
        <div style="height: 100px;">
            <div class="d-inline-flex float-start" style="width: 330px;height: 100px;"><select class="form-select"
                                                                                               style="border-radius: 0px;">
                <optgroup label="This is a group">
                    <option value="12" selected="">This is item 1</option>
                    <option value="13">This is item 2</option>
                    <option value="14">This is item 3</option>
                </optgroup>
            </select></div>
            <div class="d-inline-flex float-start" style="width: 330px;height: 100px;"><select class="form-select"
                                                                                               style="border-radius: 0px;">
                <optgroup label="This is a group">
                    <option value="12" selected="">This is item 1</option>
                    <option value="13">This is item 2</option>
                    <option value="14">This is item 3</option>
                </optgroup>
            </select></div>
            <div class="d-inline-flex float-start" style="width: 330px;height: 100px;"><select class="form-select"
                                                                                               style="border-radius: 0px;">
                <optgroup label="This is a group">
                    <option value="12" selected="">This is item 1</option>
                    <option value="13">This is item 2</option>
                    <option value="14">This is item 3</option>
                </optgroup>
            </select></div>
            <div class="d-inline-flex float-start" style="width: 90px;height: 100px;">
                <button class="btn btn-primary btn-lg" type="button"
                        style="padding: 0px;padding-top: 0px;width: 90px;background: rgb(140,1,42);border-radius: 0px;border-style: none;border-color: rgb(33,37,41);">
                    <i class="fa fa-search-plus"></i></button>
            </div>
            <div class="d-inline-flex float-start" style="width: 160px;height: 100px;">
                <button class="btn btn-primary" type="button"
                        style="background: rgb(178,1,53);border-radius: 0px;width: 160px;border-style: none;border-color: rgb(33,37,41);">
                    SEARCH
                </button>
            </div>
        </div>
    </form>
</section>
<section
        style="width: 1440px;height: 4300px;margin-right: 231.5px;margin-left: 231.5px;padding-right: 100px;padding-left: 100px;padding-bottom: 0px;">
    <div class="container" style="padding-right: 0px;padding-left: 0px;margin: 0px;width: 1240px;height: 4100px;">
        <div style="height: 4100px;width: 1240px;">
            <div data-aos="fade-up" data-aos-delay="100" data-aos-once="true"
                 style="height: 170px;padding-bottom: 50px;">
                <div style="width: 405px;height: 24px;">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#"><span style="color: #b20135;">Home</span></a></li>
                        <li class="breadcrumb-item"><a href="#"><span style="color: #b20135;">Library</span></a></li>
                        <li class="breadcrumb-item"><a href="#"><span style="color: #b20135;">Data</span></a></li>
                    </ol>
                    <h1 style="height: 36px;font-size: 27px;margin-bottom: 5px;color: #b20135;"><%=appBean.getNomeAppartamento()%>
                    </h1>
                    <p style="height: 23px;"><%=indirizzoBean.toString()%><br></p>
                </div>
                <div class="d-inline-flex float-start" style="width: 405px;height: 120px;"></div>
                <div class="float-end" style="width: 140px;height: 60px;padding-left: 20px;">
                    <p style="height: 25px;margin-bottom: 0px;"><%=appBean.getTipoVendita()%>
                    </p>
                    <p style="height: 40px;margin-bottom: 0px;font-size: 24px;color: #b20135;">€500.000</p>
                </div>
            </div>
            <div style="height: 3930px;">
                <div data-aos="fade-up" data-aos-delay="100" class="simple-slider" style="height: 720px;">
                    <div class="swiper-container" style="height: 720px;">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"
                                 style="background: url(assets/img/exterior-03-1240x720.jpg) center center / cover no-repeat;height: 720px;"></div>
                            <div class="swiper-slide"
                                 style="background: url(assets/img/living-00-1240x720.jpg) center center / cover no-repeat;height: 720px;"></div>
                            <div class="swiper-slide"
                                 style="background: url(assets/img/dining-00-1240x720.jpg) center center / cover no-repeat;height: 720px;"></div>
                        </div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="d-inline-flex" style="padding-top: 50px;height: 3150px;margin-top: 50px;">
                    <div data-aos="fade-right"
                         style="width: 850px;height: 3100px;margin-right: 30px;background: #fff;box-shadow: 0px 0px 20px #dddddd;">
                        <div style="height: 3100px;margin-bottom: 30px;padding: 30px;">
                            <div style="height: 75px;padding-bottom: 30px;margin-bottom: 30px;border-bottom: 1px solid #dddddd ;border-left-width: 0px;">
                                <div class="d-inline-flex float-start" style="height: 20px;width: 175px;">
                                    <p class="d-inline-flex"
                                       style="height: 18px;margin-bottom: 0px;font-size: 15px;font-weight: bold;">ID
                                        proprietà:</p>
                                    <p class="d-inline-flex" style="font-size: 15px;font-weight: bold;">&nbsp;123</p>
                                </div>
                                <div class="d-inline-flex float-end" style="height: 45px;width: 176px;"><span
                                        class="text-center" style="width: 45px;padding: 10px;"><i
                                        class="fa fa-share-alt" style="font-size: 25px;width: 25px;"></i></span><span
                                        class="text-center" style="width: 45px;padding: 10px;"><i class="fa fa-heart"
                                                                                                  style="font-size: 25px;width: 25px;"></i></span><span
                                        class="text-center" style="width: 45px;padding: 10px;"><i class="material-icons"
                                                                                                  style="font-size: 25px;width: 25px;">compare_arrows</i></span><span
                                        class="text-center" style="width: 45px;padding: 10px;"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor"
                                        viewBox="0 0 16 16" class="bi bi-printer-fill"
                                        style="font-size: 25px;width: 25px;">
                                                <path d="M5 1a2 2 0 0 0-2 2v1h10V3a2 2 0 0 0-2-2H5zm6 8H5a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1z"></path>
                                                <path d="M0 7a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2h-1v-2a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2H2a2 2 0 0 1-2-2V7zm2.5 1a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"></path>
                                            </svg></span></div>
                            </div>
                            <div class="d-inline-flex" style="height: 85px;">
                                <div style="width: 62px;height: 55px;margin-bottom: 30px;margin-right: 20px;"><span
                                        style="margin-bottom: 15px;font-size: 15px;">Letti</span>
                                    <div style="height: 25px;"><i class="fa fa-bed"
                                                                  style="font-size: 24px;width: 24px;height: 24px;"></i><span
                                            style="margin-left: 15px;font-weight: bold;">3</span></div>
                                </div>
                                <div style="width: 62px;height: 55px;margin-bottom: 30px;margin-right: 20px;"><span
                                        style="margin-bottom: 15px;font-size: 15px;">Bagni</span>
                                    <div style="height: 25px;"><i class="fa fa-shower"
                                                                  style="font-size: 24px;width: 24px;height: 24px;"></i><span
                                            style="margin-left: 15px;font-weight: bold;">3</span></div>
                                </div>
                                <div style="width: 62px;height: 55px;margin-bottom: 30px;margin-right: 20px;"><span
                                        style="margin-bottom: 15px;font-size: 15px;">Garage</span>
                                    <div style="height: 25px;"><i class="fas fa-car"
                                                                  style="font-size: 24px;width: 24px;height: 24px;"></i><span
                                            style="margin-left: 15px;font-weight: bold;">3</span></div>
                                </div>
                                <div style="width: 112px;height: 55px;margin-bottom: 30px;margin-right: 20px;"><span
                                        style="margin-bottom: 15px;font-size: 15px;">Area</span>
                                    <div style="height: 25px;"><i class="fa fa-square-o"
                                                                  style="font-size: 24px;width: 24px;height: 24px;"></i><span
                                            style="margin-left: 15px;font-weight: bold;">500</span><span
                                            style="margin-left: 15px;">mq</span></div>
                                </div>
                                <div style="width: 150px;height: 55px;margin-bottom: 30px;margin-right: 20px;"><span
                                        style="margin-bottom: 15px;font-size: 15px;">Grandezza lotto&nbsp;</span>
                                    <div style="height: 25px;width: 150px;"><i class="fa fa-arrows-alt"
                                                                               style="font-size: 24px;width: 24px;height: 24px;"></i><span
                                            style="margin-left: 15px;font-weight: bold;">1000</span><span
                                            style="margin-left: 15px;">mq</span></div>
                                </div>
                            </div>
                            <h1 style="margin-bottom: 20px;font-size: 20px;color: #b20135;">Descrizione</h1>
                            <div style="height: 180px;margin-bottom: 10px;">
                                <p style="height: 180px;">Beautiful home on quiet, tree lined street. Addition and
                                    renovation create desirable layout with gracious master suite, oversized walk-in
                                    closet and lovely bathroom! Formal living room with working fireplace and French
                                    doors open to gorgeous, lushly landscaped yard. Home features formal dining room,
                                    elegant kitchen with wood beamed ceilings, bright breakfast room off family room
                                    overlooking magnificent pool and patio.&nbsp;<br><br></p>
                            </div>
                            <h1 style="margin-bottom: 20px;font-size: 20px;color: #b20135;">Dettagli addizionali</h1>
                            <ul class="list-inline" style="height: 620px;margin-bottom: 30px;padding: 0px;">
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                                <li class="list-inline-item d-xl-flex align-items-xl-center"
                                    style="height: 44px;width: 750px;padding: 20px;padding-top: 7px;padding-bottom: 7px;background: #f7f7f7;">
                                    <span style="height: 30px;">APPLIANCES:</span><span style="height: 30px;">&nbsp;Built-In &amp; Freestanding Range, Dishwasher<br></span>
                                </li>
                            </ul>
                            <div style="height: 170px;margin-bottom: 10px;">
                                <h1 style="margin-bottom: 20px;font-size: 20px;color: #b20135;">Caratteristiche</h1>
                                <div style="height: 130px;">
                                    <div class="d-inline-flex" style="height: 40px;">
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                    </div>
                                    <div class="d-inline-flex" style="height: 40px;">
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                    </div>
                                    <div class="d-inline-flex" style="height: 40px;">
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                        <div style="height: 40px;width: 260px;padding-right: 20px;padding-bottom: 20px;padding-left: 20px;">
                                            <i class="fa fa-check"
                                               style="width: 20px;height: 20px;font-size: 20px;color: #b20135;"></i><span
                                                style="margin-left: 5px;">Electric Range</span></div>
                                    </div>
                                </div>
                            </div>
                            <div style="height: 700px;margin-bottom: 20px;">
                                <h1 style="margin-bottom: 20px;font-size: 20px;color: #b20135;">Planimetria</h1>
                                <div style="padding: 20px;height: 625px;border-top: 1px solid #dddddd ;border-right: 1px solid #dddddd ;border-bottom: 1px solid #dddddd ;border-left: 1px solid #dddddd ;">
                                    <div style="height: 585px;background: url(assets/img/floor-plan-01.jpg) center / cover no-repeat;"></div>
                                </div>
                            </div>
                            <div style="height: 500px;margin-bottom: 20px;">
                                <h1 style="margin-bottom: 20px;font-size: 20px;color: #b20135;">Video</h1>
                                <div style="padding: 20px;height: 440px;border-top: 1px solid #dddddd;border-right: 1px solid #dddddd;border-bottom: 1px solid #dddddd;border-left: 1px solid #dddddd;">
                                    <div style="height: 400px;">
                                        <iframe allowfullscreen="" frameborder="0" width="560" height="315"
                                                style="height: 400px;width: 748px;background: url(assets/img/exterior-03-1240x720.jpg) center / cover;"></iframe>
                                    </div>
                                </div>
                            </div>
                            <div style="height: 500px;margin-bottom: 20px;">
                                <h1 style="margin-bottom: 20px;font-size: 20px;color: #b20135;">Mappa</h1>
                                <div style="padding: 20px;height: 440px;border-top: 1px solid #dddddd;border-right: 1px solid #dddddd;border-bottom: 1px solid #dddddd;border-left: 1px solid #dddddd;">
                                    <div style="height: 400px;">
                                        <iframe allowfullscreen="" frameborder="0" loading="lazy"
                                                src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCghlu8qhmsmptec4eSidg5APpA57lCPlU&amp;q=Via+Piano+71+Striano&amp;zoom=14"
                                                width="100%" height="400"></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-aos="fade-left" style="width: 360px;">
                        <aside style="height: 2000px;">
                            <section
                                    style="height: 1067px;margin-bottom: 30px;padding: 0px;background: #ffffff;box-shadow: 0px 0px 20px #dddddd;">
                                <div class="d-xl-flex justify-content-xl-center"
                                     style="width: 360px;height: 128px;padding-bottom: 10px;">
                                    <div style="width: 128px;margin-top: -40px;height: 128px;background: url(assets/img/image.jpg) no-repeat;background-size: cover;padding-bottom: 10px;"></div>
                                </div>
                                <h1 style="text-align: center;height: 25px;margin: 0px;margin-top: 0px;margin-bottom: 20px;font-size: 24px;color: #b20135;padding-bottom: 0px;">
                                    Agente <%=utenteBean.getNome() + " " + utenteBean.getCognome()%>
                                </h1>
                                <div style="height: 100px;margin-right: 0px;margin-bottom: 0px;margin-left: 0px;padding-right: 15px;padding-bottom: 15px;padding-left: 15px;">
                                    <p style="height: 23px;margin-bottom: 10px;">Ufficio: 0818276649</p>
                                    <p style="height: 23px;margin-bottom: 10px;">Cellulare: 3312294330</p>
                                    <p style="height: 23px;margin-bottom: 10px;">Email: example@gmail.com</p>
                                </div>
                                <div style="height: 60px;">
                                    <button class="btn btn-primary btn-lg" type="button"
                                            style="height: 60px;width: 360px;border-radius: 0px;border-top-color: rgb(178,1,53);background: rgb(178,1,53);">
                                        le mie proprietà
                                    </button>
                                </div>
                                <div style="height: 730px;">
                                    <form style="height: 730px;">
                                        <p style="height: 90px;margin: 0px;padding: 20px;border-bottom: 1px solid #dddddd ;">
                                            <label class="form-label"
                                                   style="height: 15px;font-size: 13px;margin-bottom: 10px;">Nome</label><input
                                                class="form-control" type="text"
                                                style="height: 23px;border-radius: 0px;border-width: 0px;"
                                                placeholder="Nome"></p>
                                        <p style="height: 90px;margin: 0px;padding: 20px;border-bottom: 1px solid #dddddd ;">
                                            <label class="form-label"
                                                   style="height: 15px;font-size: 13px;margin-bottom: 10px;">Email</label><input
                                                class="form-control" type="text"
                                                style="height: 23px;border-radius: 0px;border-width: 0px;"
                                                placeholder="Email"></p>
                                        <p style="height: 90px;margin: 0px;padding: 20px;border-bottom: 1px solid #dddddd ;">
                                            <label class="form-label"
                                                   style="height: 15px;font-size: 13px;margin-bottom: 10px;">Telefono</label><input
                                                class="form-control" type="text"
                                                style="height: 23px;border-radius: 0px;border-width: 0px;"
                                                placeholder="Telefono"></p>
                                        <p style="height: 200px;margin: 0px;padding: 20px;border-bottom: 1px solid #dddddd;">
                                            <label class="form-label"
                                                   style="height: 15px;font-size: 13px;margin-bottom: 10px;">Messaggio</label><textarea
                                                class="form-control"
                                                style="height: 135px;padding: 0px;border-color: rgba(33,37,41,0);"
                                                placeholder="Sarei interessato a questa abitazione..."></textarea></p>
                                        <div style="height: 128px;padding: 20px;padding-top: 20px;"><span>GDPR Agreement&nbsp;*<br><br></span>
                                            <div class="form-check" style="height: 60px;"><input
                                                    class="form-check-input" type="radio" id="formCheck-1"
                                                    style="border-radius: 20%;"><label class="form-check-label"
                                                                                       for="formCheck-1"
                                                                                       style="font-size: 13px;">I
                                                consent to having this website store my submitted information so they
                                                can respond to my inquiry.<br></label></div>
                                        </div>
                                        <div style="height: 60px;margin-top: 8px;margin-bottom: 8px;">
                                            <button class="btn btn-primary float-start" type="button"
                                                    style="height: 60px;padding: 0px;padding-top: 20px;padding-bottom: 20px;width: 178px;border-radius: 0px;background: rgb(178,1,53);border-color: rgb(178,1,53);">
                                                <i class="fa fa-whatsapp"
                                                   style="width: 15px;height: 15px;margin-right: 4px;"></i><span>WHATSAPP</span>
                                            </button>
                                            <button class="btn btn-primary float-end" type="button"
                                                    style="height: 60px;padding: 0px;padding-top: 20px;padding-bottom: 20px;width: 178px;border-radius: 0px;border-color: rgb(178,1,53);background: rgb(178,1,53);">
                                                <i class="fa fa-phone"
                                                   style="width: 15px;height: 15px;margin-right: 4px;"></i><span>chiama ora</span>
                                            </button>
                                        </div>
                                        <div style="height: 60px;margin-top: 8px;margin-bottom: 8px;">
                                            <button class="btn btn-primary float-start" type="button"
                                                    style="height: 60px;padding: 0px;padding-top: 20px;padding-bottom: 20px;width: 360px;border-radius: 0px;background: rgb(178,1,53);border-color: rgb(178,1,53);">
                                                <i class="far fa-envelope"
                                                   style="width: 15px;height: 15px;margin-right: 4px;font-size: 16px;"></i><span>invia messaggio</span>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </section>
                            <section style="height: 605px;padding: 0px;margin-bottom: 30px;">
                                <h1 style="font-size: 30px;color: #b20135;margin-bottom: 20px;height: 40px;">Proprietà
                                    in evidenza</h1>
                                <article
                                        style="margin-bottom: 50px;height: 560px;background: #ffffff;box-shadow: 0px 0px 20px #dddddd;">
                                    <div style="height: 560px;">
                                        <div style="height: 280px;background: url(assets/img/Risorsa1-100.jpg) center / cover no-repeat;"></div>
                                        <div style="padding: 25px;height: 280px;">
                                            <h1 style="font-size: 20px;color: #b20135;height: 28px;margin-bottom: 15px;">
                                                Home in Merrick Way</h1>
                                            <p style="height: 45px;font-size: 14px;">Enchanting three bedroom, three
                                                bath home with spacious one bedroom…<br></p>
                                            <div class="d-flex" style="height: 68px;margin-bottom: 10px;">
                                                <div style="width: 80px;padding-right: 15px;padding-bottom: 15px;"><span
                                                        style="margin-bottom: 10px;font-size: 14px;">Letti</span>
                                                    <div style="height: 25px;"><i class="fa fa-bed"
                                                                                  style="font-size: 24px;"></i><span
                                                            style="padding-left: 10px;">3</span></div>
                                                </div>
                                                <div style="width: 80px;padding-right: 15px;padding-bottom: 15px;"><span
                                                        style="margin-bottom: 10px;font-size: 14px;">Bagni</span>
                                                    <div style="height: 25px;"><i class="fa fa-shower"
                                                                                  style="font-size: 24px;"></i><span
                                                            style="padding-left: 10px;">3</span></div>
                                                </div>
                                                <div style="width: 145px;padding-bottom: 15px;padding-right: 15px;">
                                                    <span style="margin-bottom: 10px;font-size: 14px;">Area</span>
                                                    <div style="height: 25px;"><i class="far fa-square"
                                                                                  style="font-size: 24px;"></i><span
                                                            style="padding-left: 10px;">300</span><span
                                                            style="padding-left: 10px;">mq</span></div>
                                                </div>
                                            </div>
                                            <div style="height: 58px;"><span
                                                    style="margin-bottom: 5px;"><%=appBean.getTipoVendita()%></span>
                                                <p style="font-size: 22px;color: #b20135;">€ 500.000</p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                                <article
                                        style="margin-bottom: 50px;height: 560px;background: #ffffff;box-shadow: 0px 0px 20px #dddddd;">
                                    <div style="height: 560px;">
                                        <div style="height: 280px;background: url(assets/img/Risorsa1-100.jpg) center / cover no-repeat;"></div>
                                        <div style="padding: 25px;height: 280px;">
                                            <h1 style="font-size: 20px;color: #b20135;height: 28px;margin-bottom: 15px;">
                                                Home in Merrick Way</h1>
                                            <p style="height: 45px;font-size: 14px;">Enchanting three bedroom, three
                                                bath home with spacious one bedroom…<br></p>
                                            <div class="d-flex" style="height: 68px;margin-bottom: 10px;">
                                                <div style="width: 80px;padding-right: 15px;padding-bottom: 15px;"><span
                                                        style="margin-bottom: 10px;font-size: 14px;">Letti</span>
                                                    <div style="height: 25px;"><i class="fa fa-bed"
                                                                                  style="font-size: 24px;"></i><span
                                                            style="padding-left: 10px;">3</span></div>
                                                </div>
                                                <div style="width: 80px;padding-right: 15px;padding-bottom: 15px;"><span
                                                        style="margin-bottom: 10px;font-size: 14px;">Bagni</span>
                                                    <div style="height: 25px;"><i class="fa fa-shower"
                                                                                  style="font-size: 24px;"></i><span
                                                            style="padding-left: 10px;">3</span></div>
                                                </div>
                                                <div style="width: 145px;padding-bottom: 15px;padding-right: 15px;">
                                                    <span style="margin-bottom: 10px;font-size: 14px;">Area</span>
                                                    <div style="height: 25px;"><i class="far fa-square"
                                                                                  style="font-size: 24px;"></i><span
                                                            style="padding-left: 10px;">300</span><span
                                                            style="padding-left: 10px;">mq</span></div>
                                                </div>
                                            </div>
                                            <div style="height: 58px;"><span
                                                    style="margin-bottom: 5px;"><%=appBean.getTipoVendita()%></span>
                                                <p style="font-size: 22px;color: #b20135;">€ 500.000</p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </section>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer data-aos="fade-up" data-aos-once="true"
        style="height: 600px;border-top-left-radius: 0px;border-width: 0px;overflow: hidden;position: relative;padding-top: 0px;padding-bottom: 0px;">
    <div class="diagonalfooteragente"></div>
</footer>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.4.8/swiper-bundle.min.js"></script>
<script src="assets/js/move.js"></script>
<script src="assets/js/MUSA_carousel-extended.js"></script>
<script src="assets/js/new-age.js"></script>
<script src="assets/js/Simple-Slider.js"></script>
</body>

</html>
