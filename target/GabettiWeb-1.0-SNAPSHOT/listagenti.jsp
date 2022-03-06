<%@ page import="java.util.ArrayList" %>
<%@ page import="model.appartamento.AppartamentoBean" %>
<%@ page import="model.agente.AgenteBean" %>
<%@ page import="model.utente.UtenteBean" %>
<%@ page import="UtilityClass.CompositeKeyAgenteCase" %><%--
  Created by IntelliJ IDEA.
  User: Luca
  Date: 01/03/2022
  Time: 09:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="it">
<%
    ArrayList<AppartamentoBean> inEvidenza = (ArrayList<AppartamentoBean>) request.getAttribute("inEvidenza");
    ArrayList<UtenteBean> utenti = (ArrayList<UtenteBean>) request.getAttribute("utenti");
    ArrayList<CompositeKeyAgenteCase> agentiCase = (ArrayList<CompositeKeyAgenteCase>) request.getAttribute("agentiCase");
%>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="bootstrapcss/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/listaagenti.css">


    <title>Gabetti Nocera | Agente</title>
</head>
<body>
<input type="hidden" id="numAgente" value="0" name="agente">
<section class="banner banner-image" style="background-image: url(images/banner.jpg);">
    <div class="banner_cover"></div>
    <div class="banner_wrap">
    </div>
</section>
<section class="agents_section agents_section_flex agents_section_padding">
    <div class="page page_agents page_main">
        <div class="agents_listing">
            <article class="agent_card">
                <div class="agent_card_wrap">
                    <div class="agent_card_head">
                        <figure class="agent_card_figure">
                            <a href="">
                                <img width="210" height="210" src="images/agente.jpg">
                            </a>
                        </figure>
                        <div class="agent_card_name">
                            <h4 class="name">
                                <a href="">Nathan James</a>
                            </h4>
                            <div class="social">
                                <a href="">
                                    <i class="icon-facebook"></i>
                                </a>
                                <a href="">
                                    <i class="icon-twitter"></i>
                                </a>
                                <a href="">
                                    <i class="icon-instagram"></i>
                                </a>
                                <a href="">
                                    <i class="icon-internet-explorer"></i>
                                </a>
                            </div>
                        </div>
                        <div class="agent_card_listings">
                            <p class="head">Proprietà possedute</p>
                            <p class="count">3</p>
                        </div>
                    </div>
                    <div class="agent_card_details">
                        <p class="content">
                            Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Duis
                            mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                            Cras mattis consectetur purus sit amet fermentum. Vivamus sagittis lacus vel augue laoreet
                            rutrum faucibus dolor auctor. Morbi…
                        </p>
                        <div class="agent_card_contact">
                            <div class="agent_card_contact_wrap">
                                <p class="contact">Cellulare: <a href="">3312294330</a></p>
                                <p class="contact">Telefono: <a href="">3312294330</a></p>
                                <p class="contact">Whatsapp: <a href="">3312294330</a></p>
                                <p class="contact">Email: <a href="">3312294330</a></p>
                                <p class="contact">Indirizzo: <a href="">3312294330</a></p>
                            </div>
                            <a href=" " class="agent_card_link">
                                <span>Visualizza le mie proprietà</span>
                                <i class="icon-angle-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </article>
        </div>
        <div class="list_pagination">
            <a class="list_pagination_button current">1</a>
            <a class="list_pagination_button current">2</a>
        </div>
    </div>
    <div class="page_right page_sidebar">
        <aside class="featured_sidebar">
            <section class="widget">
                <h3 class="title">Proprietà in evidenza</h3>
                <article class="featured_card featured_card_block">
                    <div class="featured_card_wrap">
                        <figure class="featured_card_figure">
                            <div class="featured_card_picture">
                                <a href="">
                                    <img width="680" height="510" src="images/prova.jpg">
                                </a>
                            </div>
                        </figure>
                        <div class="featured_card_details">
                            <h3>
                                <a href=""> Villa on Grand Avenue</a>
                            </h3>
                            <p class="featured_card_description">Spacious and fabulous home in a prime location. This
                                executive…</p>
                            <div class="featured_card_features_wrap">
                                <div class="featured_card_feature">
                                    <span class="features_title">Camere da letto</span>
                                    <div>
                                        <i class="feature_icon icon-bed"></i>
                                        <span class="text">3</span>
                                    </div>
                                </div>
                                <div class="featured_card_feature">
                                    <span class="features_title">Bagni</span>
                                    <div>
                                        <i class="feature_icon icon-shower"></i>
                                        <span class="text">3</span>
                                    </div>
                                </div>
                                <div class="featured_card_feature">
                                    <span class="features_title">Superficie</span>
                                    <div>
                                        <i class="feature_icon icon-crop_square"></i>
                                        <span class="text">500</span>
                                        <span class=>mq</span>
                                    </div>
                                </div>
                            </div>
                            <div class="featured_card_priceLabel">
                                <div class="featured_card_price">
                                    <span class="status">For Sale</span>
                                    <p class="price">€800,000</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </article>
            </section>
        </aside>
    </div>
</section>
</body>
</html>
