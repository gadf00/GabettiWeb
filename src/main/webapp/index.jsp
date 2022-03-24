<%--
  Created by IntelliJ IDEA.
  User: Luca
  Date: 06/03/2022
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="model.appartamento.AppartamentoBean, java.util.ArrayList" %>
<%@ page import="model.agente.AgenteBean" %>
<%@ page import="model.utente.UtenteBean" %>
<%@ page import="model.indirizzo.IndirizzoBean" %>
<%@ page import="UtilityClass.CompositeKeyAgenteCase" %>
<%@ page import="model.multimedia.MultimediaBean" %>
<%@ page import="UtilityClass.Città" %>
<html lang="it">

<%
    ArrayList<Città> allCittàZone = (ArrayList<Città>) request.getSession().getAttribute("allCittaZone");
    if (allCittàZone == null) {
        session.setAttribute("nomepagina", "index.jsp");
        response.sendRedirect(response.encodeRedirectURL("ServletValutazioneCampiRicerca"));
        return;
    }
    ArrayList<String> categorie = (ArrayList<String>) request.getSession().getAttribute("categorie");
    ArrayList<AppartamentoBean> appartamenti = (ArrayList<AppartamentoBean>) request.getAttribute("appartamenti");
    if (appartamenti == null) {
        response.sendRedirect(response.encodeRedirectURL("IndexServlet"));
        return;
    }

    ArrayList<AgenteBean> agenti = (ArrayList<AgenteBean>) request.getAttribute("agenti");
    if (agenti == null) {
        response.sendRedirect(response.encodeRedirectURL("IndexServlet"));
        return;
    }

    ArrayList<UtenteBean> utente = (ArrayList<UtenteBean>) request.getAttribute("utente");
    if (utente == null) {
        response.sendRedirect(response.encodeRedirectURL("IndexServlet"));
        return;
    }

    ArrayList<IndirizzoBean> indirizzi = (ArrayList<IndirizzoBean>) request.getAttribute("indirizzi");
    if (indirizzi == null) {
        response.sendRedirect(response.encodeRedirectURL("IndexServlet"));
        return;
    }

    ArrayList<CompositeKeyAgenteCase> agenteCase = (ArrayList<CompositeKeyAgenteCase>) request.getAttribute("agenteCase");
    if (agenteCase == null) {
        response.sendRedirect(response.encodeRedirectURL("IndexServlet"));
        return;
    }

    ArrayList<MultimediaBean> multimedia = (ArrayList<MultimediaBean>) request.getAttribute("multimedia");
    if (multimedia == null) {
        response.sendRedirect(response.encodeRedirectURL("IndexServlet"));
        return;
    }
%>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="icomoon/style.css">

    <link rel="stylesheet" href="bootstrapcss/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/aggiunte.css">

    <title>Gabetti Nocera | Homepage</title>

</head>
<body>
<nav id="navbar">
    <a href="index.jsp" class="logo">
        <img src="images/logo.png">
    </a>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
        <i class="icon-bars"></i>
    </label>
    <ul>
        <li><a href="index.jsp" class="active">Home</a></li>
        <li><a href="#">Lista Immobili</a></li>
        <li><a href="valutazione.html">Valutazione Immobile</a></li>
        <li><a href="listaagenti.html">I Nostri Agenti</a></li>
        <li><a href="contact.html">Contattaci</a></li>
    </ul>
</nav>
<div class="content">
    <header class="master">
        <section class="homepage_sfondo" style="background-image: url(images/sfondo.jpg); background-size: cover;">
            <div class="wrapper_homepage_sfondo">
                <div class="wrapper_content">
                    <p class="sfondo_title">Compra o vendi</p>
                    <h3 class="sfondo_slogan">Vuoi acquistare una nuovo immobile o venderne uno esistente? Gabetti ti
                        offre
                        una soluzione fantastica!</h3>
                    <div class="sfondo_choice_button">
                        <a href="" class="button_valutatore">Valuta un immobile</a>
                        <a href="" class="button_cerca">Cerca un immobile</a>
                    </div>
                </div>
            </div>
        </section>

    </header>
    <div class="div_search div_search_init">
        <form class="search_form search_form_header advance_search_form" action="ServletRicerca" method="post">
            <div class="search_fields">
                <div class="search_wrap search_data">
                    <div class="top_fields">
                        <div class="search_select search_option">
                            <label>Località</label>
                            <span class="search_selectwrap">
							<div class="bootstrap-select picker trigger" style="width: 100%;">
							  <button type="button" onclick="apriScegliLocalita()" class="btn dropdown-toggle">
								<div class="filter-option">
								  <div class="filter-option-inner">
									<div id="valore_localita" class="filter-option-text">
									  Qualsiasi
									</div>
									  <input type="hidden" name="localita_immobile" id="localita_immobile"
                                             value="Qualsiasi">
								  </div>
								</div>
							  </button>
							  <div id="selezionaLocalita" class="dropdown-content wrap_content">
								<ul class="ul_inner">
								  <li>
									<a onclick="cambiaLocalita(this)" role="option" href="#">
									  <span class="icon-check check_mark"></span>
									  <span class="text">Qualsiasi</span>
									</a>
								</li>
                                    <%for (Città c : allCittàZone) {%>
								  <li>
									  <a onclick="cambiaLocalita(this)" role="option" href="#">
										<span class="icon-check check_mark"></span>
										<span class="text"><%=c.getNomeCittà()%></span>
									  </a>
								  </li>
                                    <%for (String z : c.getZone()) {%>
								  <li>
									<ul class="ul_inner">
									  <li>
										<a onclick="cambiaLocalita(this)" role="option" href="#">
										  <span class="icon-check check_mark"></span>
										  <span class="sublist text"><%=z%></span>
										</a>
									  </li>

                                        <%
                                                }
                                            }
                                        %>
									</ul>
								  </li>
								</ul>
							  </div>
							</div>
						  </span>
                        </div>
                        <div class="search_select search_option">
                            <label>Stato Immobile</label>
                            <span class="search_selectwrap">
							<div class="dropdown bootstrap-select picker trigger" style="width: 100%;">
							  <button type="button" onclick="apriScegliStato()" class="btn dropdown-toggle">
								<div class="filter-option">
								  <div class="filter-option-inner">
									<div id="valore_stato" class="filter-option-text">
									  Qualsiasi
									</div>
									<input type="hidden" name="stato_immobile" id="stato_immobile" value="Qualsiasi">
								  </div>
								</div>
							  </button>
							  <div id="selezionaStato" class="dropdown-content">
								<ul class="ul_inner">
								  <li>
									<a onclick="cambiaStato(this)" role="option" href="#">
									  <span class="icon-check check_mark"></span>
									  <span class="text">Qualsiasi</span>
									</a>
								</li>
								  <li>
									  <a onclick="cambiaStato(this)" role="option" href="#">
										<span class="icon-check check_mark"></span>
										<span class="text">In Vendita</span>
									  </a>
								  </li>
								  <li>
									<a onclick="cambiaStato(this)" role="option" href="#">
									  <span class="icon-check check_mark"></span>
									  <span class="text">in Affitto</span>
									</a>
								</li>
								</ul>
							  </div>
							</div>
						  </span>
                        </div>
                        <div class="search_select search_option">
                            <label>Tipo Immobile</label>
                            <span class="search_selectwrap">
							<div class="bootstrap-select picker trigger" style="width: 100%;">
							  <button type="button" onclick="apriScegliTipo()" class="btn dropdown-toggle">
								<div class="filter-option">
								  <div class="filter-option-inner">
									<div id="valore_tipo" class="filter-option-text">
									  Qualsiasi
									</div>
									<input type="hidden" name="tipo_immobile" id="tipo_immobile" value="Qualsiasi">
								  </div>
								</div>
							  </button>
							  <div id="selezionaTipo" class="dropdown-content wrap_content_max">
								<ul class="ul_inner">
								  <li>
									<a onclick="cambiaTipo(this)" role="option" href="#">
									  <span class="icon-check check_mark"></span>
									  <span class="text">Qualsiasi</span>
									</a>
								  </li>
                                    <%for (String s : categorie) {%>
								  <li>
									  <a onclick="cambiaTipo(this)" role="option" href="#">
										<span class="icon-check check_mark"></span>
										<span class="text"><%=s%></span>
									  </a>
								  </li>
                                    <%}%>
								</ul>
							  </div>
							</div>
						  </span>
                        </div>
                    </div>
                    <div id="advanced_option_div" class="form_collapsed_field_wrapper" style="display: none;">
                        <div class="collapsed_field_container search_advanced_fields">
                            <div class="search_option search_select search_beds">
                                <label>Min camere da letto</label>
                                <div class="bootstrap-select picker trigger" style="width: 100%;">
                                    <button type="button" onclick="apriScegliMinCamere()" class="btn dropdown-toggle">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div id="valore_minCamere" class="filter-option-text">
                                                    Qualsiasi
                                                </div>
                                                <input type="hidden" name="camere_immobile" id="camere_immobile"
                                                       value="Qualsiasi">
                                            </div>
                                        </div>
                                    </button>
                                    <div id="selezionaMinCamere" class="dropdown-content wrap_content_half">
                                        <ul class="ul_inner">
                                            <li>
                                                <a onclick="cambiaMinCamere(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">Qualsiasi</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaMinCamere(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">1</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaMinCamere(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Min bagni</label>
                                <div class="bootstrap-select picker trigger" style="width: 100%;">
                                    <button type="button" onclick="apriScegliMinBagni()" class="btn dropdown-toggle">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div id="valore_minBagni" class="filter-option-text">
                                                    Qualsiasi
                                                </div>
                                                <input type="hidden" name="bagni_immobile" id="bagni_immobile"
                                                       value="Qualsiasi">
                                            </div>
                                        </div>
                                    </button>
                                    <div id="selezionaMinBagni" class="dropdown-content wrap_content_half">
                                        <ul class="ul_inner">
                                            <li>
                                                <a onclick="cambiaMinBagni(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">Qualsiasi</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaMinBagni(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">1</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaMinBagni(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Prezzo minimo</label>
                                <input name="minPrezzo_immobile" type="text" placeholder="Qualsiasi">
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Prezzo massimo</label>
                                <input name="maxPrezzo_immobile" type="text" placeholder="Qualsiasi">
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Min Posti Auto</label>
                                <div class="bootstrap-select picker trigger" style="width: 100%;">
                                    <button type="button" onclick="apriScegliMinAuto()" class="btn dropdown-toggle">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div id="valore_minAuto" class="filter-option-text">
                                                    Qualsiasi
                                                </div>
                                                <input type="hidden" name="auto_immobile" id="auto_immobile"
                                                       value="Qualsiasi">
                                            </div>
                                        </div>
                                    </button>
                                    <div id="selezionaMinAuto" class="dropdown-content wrap_content_half">
                                        <ul class="ul_inner">
                                            <li>
                                                <a onclick="cambiaMinAuto(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">Qualsiasi</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaMinAuto(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">1</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaMinAuto(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Agenti</label>
                                <div class="bootstrap-select picker trigger" style="width: 100%;">
                                    <button type="button" onclick="apriScegliAgente()" class="btn dropdown-toggle">
                                        <div class="filter-option">
                                            <div class="filter-option-inner">
                                                <div id="valore_agente" class="filter-option-text">
                                                    Qualsiasi
                                                </div>
                                                <input type="hidden" name="agente_immobile" id="agente_immobile"
                                                       value="Qualsiasi">
                                            </div>
                                        </div>
                                    </button>
                                    <div id="selezionaAgente" class="dropdown-content wrap_content_half">
                                        <ul class="ul_inner">
                                            <li>
                                                <a onclick="cambiaAgente(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">Qualsiasi</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaAgente(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">1</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a onclick="cambiaAgente(this)" role="option" href="#">
                                                    <span class="icon-check check_mark"></span>
                                                    <span class="text">2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Superificie minima (mq)</label>
                                <input name="minSuperficie_immobile" type="text" placeholder="Qualsiasi">
                            </div>
                            <div class="search_option search_select search_beds">
                                <label>Superficie massima (mq)</label>
                                <input name="maxSuperficie_immobile" type="text" placeholder="Qualsiasi">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="search_button">
                <div class="search_buttonwrap">
                    <div class="search_advance">
                        <button type="button" onclick="advancedOption()" id="advanced_options"
                                class="search_advance_button">
                            <i class="icon-search-plus"></i>
                        </button>
                    </div>
                    <div class="search_buttonSubmit">
                        <button class="submit button_search">
                            <i class="icon-search"></i>
                            <span>Cerca</span>
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="wrapper_home_section diagonal_wrapper">
        <section class="home_section diagonal_mod section_content">
            <article class="main_content">
                <div>
                    <section class="section_principalProperties section_principalProperties_stretched">
                        <div class="title_container">
                            <div class="title_row">
                                <div class="title_wrap">
                                    <div class="section_head">
                                        <h2 class="section_title">Proprietà in evidenza</h2>
                                        <p class="section_description">Visualizza le proprietà in primo piano</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section_properties_list">
                        <div class="diagonal_shape"></div>
                        <div class="properties_list_container">
                            <div class="properties_list_row">
                                <div class="properties_list_wrap">
                                    <div class="properties_pagination">
                                        <%for (int i = 0; i < appartamenti.size() && i < 8; i++) {%>
                                        <div class="property_style">
                                            <div class="property_card_style">
                                                <div class="property_picture_wrapper">
                                                    <div class="property_tags_bot">
                                                        <div class="agent_wrapper">
                                                            <div class="agent_list">
                                                                <a href="" class="agent_image">
                                                                    <img src="images/agente.jpg">
                                                                </a>
                                                                <div class="agent_info">
                                                                    <a href="" class="agent_title"><%
                                                                        for (AgenteBean bean : agenti) {
                                                                            if (bean.getIdAgente() == appartamenti.get(i).getIdAgente()) {
                                                                                for (UtenteBean utenteBean1 : utente) {
                                                                                    if (utenteBean1.getIdUtente() == bean.getIdAgente()) {
                                                                    %><%=utenteBean1.getNome() + " " + utenteBean1.getCognome()%><%
                                                                                    }
                                                                                }
                                                                            }
                                                                        }%></a>
                                                                    <a href="" class="agent_agency">Gabetti Nocera
                                                                        Inferiore</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="property_status">
                                                            <span class="property_status_text"><%=appartamenti.get(i).getTipoVendita()%></span>
                                                        </div>
                                                    </div>
                                                    <a class="property_picture">
                                                        <%
                                                            boolean p = false;
                                                            for (MultimediaBean multimediaBean : multimedia) {
                                                                if (multimediaBean.getIdAppartamento() == appartamenti.get(i).getIdAppartamento() && multimediaBean.getFotoString() != null && !p) {
                                                        %>
                                                        <img
                                                                src="data:image/png;base64,<%=multimediaBean.getFotoString().get(0)%>"
                                                                alt="images/prova.jpg">
                                                        <%
                                                                    p = true;
                                                                    break;
                                                                }
                                                            }
                                                        %>
                                                    </a>
                                                </div>
                                                <div class="property_detail_wrapper">
                                                    <h3 class="property_heading">
                                                        <a href="${pageContext.request.contextPath}/ServletDettagliAppartamento?id=<%=appartamenti.get(i).getIdAppartamento()%>"><%=appartamenti.get(i).getNomeAppartamento()%>
                                                        </a>
                                                    </h3>
                                                    <div class="property_address">
                                                        <% for (IndirizzoBean linkIndirizzo : indirizzi) {
                                                            if (linkIndirizzo.getIdAppartamento() == appartamenti.get(i).getIdAppartamento()) {%>
                                                        <a href="https://www.google.it/maps/place/
                                                                    <%=linkIndirizzo.toString()%>"
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                        <span class="address">
																	<i class="icon-map-marker"></i>
																</span>
                                                        <%
                                                            for (IndirizzoBean indirizzoBean : indirizzi) {
                                                                if (indirizzoBean.getIdAppartamento() == appartamenti.get(i).getIdAppartamento()) {
                                                                    if (indirizzoBean.toString().length() > 42) {%>
                                                        <%=indirizzoBean.toString().substring(0, 42) + "..."%><%
                                                    } else { %>

                                                        <%=indirizzoBean.toString()%><%
                                                                }
                                                            }
                                                        }
                                                    %>
                                                        </a>
                                                    </div>
                                                    <div class="prorperty_added">
                                                        <span>Aggiunto il: </span>
                                                        <%=appartamenti.get(i).getData()%>
                                                    </div>
                                                    <div class="property_features_wrap">
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Camere</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-bed"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getCamereLetto()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Bagni</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-shower"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getBagni()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Superficie</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-square-o"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getSuperficie()%></span>
                                                                <span>mq</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="property_price">
                                                        <div class="property_price_box">
                                                            <span class="property_card_status"><%=appartamenti.get(i).getTipoVendita()%></span>
                                                            <p class="property_card_price">
                                                                €<%=appartamenti.get(i).getPrezzo()%>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <%}%>
                                    </div>
                                    <div class="pagination_wrapper">
                                        <div class="pagination">
                                            <a href="" class="btn_real current">1</a>
                                            <a href="" class="btn_real">2</a>
                                            <a href="" class="btn_real">3</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section_principalProperties section_principalProperties_stretched">
                        <div class="title_container">
                            <div class="title_row">
                                <div class="title_wrap">
                                    <div class="section_head">
                                        <h2 class="section_title">Proprietà in vendita</h2>
                                        <p class="section_description">Visualizza le proprietà in vendita</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section_properties_list">
                        <div class="diagonal_shape"></div>
                        <div class="properties_list_container">
                            <div class="properties_list_row">
                                <div class="properties_list_wrap">
                                    <div class="properties_pagination">
                                        <%
                                            for (int i = 0; i < appartamenti.size() && i < 8; i++) {
                                                if (appartamenti.get(i).getTipoVendita().equals("in vendita")) {
                                        %>
                                        <div class="property_style">
                                            <div class="property_card_style">
                                                <div class="property_picture_wrapper">
                                                    <div class="property_tags_bot">
                                                        <div class="agent_wrapper">
                                                            <div class="agent_list">
                                                                <a href="" class="agent_image">
                                                                    <img src="images/agente.jpg">
                                                                </a>
                                                                <div class="agent_info">
                                                                    <a href="" class="agent_title"><%
                                                                        for (AgenteBean bean : agenti) {
                                                                            if (bean.getIdAgente() == appartamenti.get(i).getIdAgente()) {
                                                                                for (UtenteBean utenteBean1 : utente) {
                                                                                    if (utenteBean1.getIdUtente() == bean.getIdAgente()) {
                                                                    %><%=utenteBean1.getNome() + " " + utenteBean1.getCognome()%><%
                                                                                    }
                                                                                }
                                                                            }
                                                                        }%></a>
                                                                    <a href="" class="agent_agency">Gabetti Nocera
                                                                        Inferiore</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="property_status">
                                                            <span class="property_status_text"><%=appartamenti.get(i).getTipoVendita()%></span>
                                                        </div>
                                                    </div>
                                                    <a class="property_picture">
                                                        <img width="488" height="326" src="images/prova.jpg">
                                                    </a>
                                                </div>
                                                <div class="property_detail_wrapper">
                                                    <h3 class="property_heading">
                                                        <a href="${pageContext.request.contextPath}/ServletDettagliAppartamento?id=<%=appartamenti.get(i).getIdAppartamento()%>"><%=appartamenti.get(i).getNomeAppartamento()%>
                                                        </a>
                                                    </h3>
                                                    <div class="property_address">
                                                        <a href="">
																<span class="address">
																	<i class="icon-map-marker"></i>
																</span>
                                                            <%
                                                                for (IndirizzoBean indirizzoBean : indirizzi) {
                                                                    if (indirizzoBean.getIdAppartamento() == appartamenti.get(i).getIdAppartamento()) {
                                                            %><%=indirizzoBean.getVia() + ", " + indirizzoBean.getCitta() + ", " + indirizzoBean.getProvincia()%><%
                                                                }
                                                            }
                                                        %>
                                                        </a>
                                                    </div>
                                                    <div class="prorperty_added">
                                                        <span>Aggiunto il: </span>
                                                        <%=appartamenti.get(i).getData()%>
                                                    </div>
                                                    <div class="property_features_wrap">
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Camere</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-bed"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getCamereLetto()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Bagni</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-shower"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getBagni()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Superficie</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-square-o"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getSuperficie()%></span>
                                                                <span>mq</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="property_price">
                                                        <div class="property_price_box">
                                                            <span class="property_card_status"><%=appartamenti.get(i).getTipoVendita()%></span>
                                                            <p class="property_card_price">
                                                                €<%=appartamenti.get(i).getPrezzo()%>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <%
                                                }
                                            }%>
                                    </div>
                                    <div class="pagination_wrapper">
                                        <div class="pagination">
                                            <a href="" class="btn_real current">1</a>
                                            <a href="" class="btn_real">2</a>
                                            <a href="" class="btn_real">3</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section_principalProperties section_principalProperties_stretched">
                        <div class="title_container">
                            <div class="title_row">
                                <div class="title_wrap">
                                    <div class="section_head">
                                        <h2 class="section_title">Proprietà in affitto</h2>
                                        <p class="section_description">Visualizza le proprietà in affitto</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section_properties_list">
                        <div class="diagonal_shape"></div>
                        <div class="properties_list_container">
                            <div class="properties_list_row">
                                <div class="properties_list_wrap">
                                    <div class="properties_pagination">
                                        <%
                                            for (int i = 0; i < appartamenti.size() && i < 8; i++) {
                                                if (appartamenti.get(i).getTipoVendita().equals("in affitto")) {
                                        %>
                                        <div class="property_style">
                                            <div class="property_card_style">
                                                <div class="property_picture_wrapper">
                                                    <div class="property_tags_bot">
                                                        <div class="agent_wrapper">
                                                            <div class="agent_list">
                                                                <a href="" class="agent_image">
                                                                    <img src="images/agente.jpg">
                                                                </a>
                                                                <div class="agent_info">
                                                                    <a href="" class="agent_title"><%
                                                                        for (AgenteBean bean : agenti) {
                                                                            if (bean.getIdAgente() == appartamenti.get(i).getIdAgente()) {
                                                                                for (UtenteBean utenteBean1 : utente) {
                                                                                    if (utenteBean1.getIdUtente() == bean.getIdAgente()) {
                                                                    %><%=utenteBean1.getNome() + " " + utenteBean1.getCognome()%><%
                                                                                    }
                                                                                }
                                                                            }
                                                                        }%></a>
                                                                    <a href="" class="agent_agency">Gabetti Nocera
                                                                        Inferiore</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="property_status">
                                                            <span class="property_status_text"><%=appartamenti.get(i).getTipoVendita()%></span>
                                                        </div>
                                                    </div>
                                                    <a class="property_picture">
                                                        <img width="488" height="326" src="images/prova.jpg">
                                                    </a>
                                                </div>
                                                <div class="property_detail_wrapper">
                                                    <h3 class="property_heading">
                                                        <a href="${pageContext.request.contextPath}/ServletDettagliAppartamento?id=<%=appartamenti.get(i).getIdAppartamento()%>"><%=appartamenti.get(i).getNomeAppartamento()%>
                                                        </a>
                                                    </h3>
                                                    <div class="property_address">
                                                        <a href="">
																<span class="address">
																	<i class="icon-map-marker"></i>
																</span>
                                                            <%
                                                                for (IndirizzoBean indirizzoBean : indirizzi) {
                                                                    if (indirizzoBean.getIdAppartamento() == appartamenti.get(i).getIdAppartamento()) {
                                                            %><%=indirizzoBean.getVia() + ", " + indirizzoBean.getCitta() + ", " + indirizzoBean.getProvincia()%><%
                                                                }
                                                            }
                                                        %>
                                                        </a>
                                                    </div>
                                                    <div class="prorperty_added">
                                                        <span>Aggiunto il: </span>
                                                        <%=appartamenti.get(i).getData()%>
                                                    </div>
                                                    <div class="property_features_wrap">
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Camere</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-bed"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getCamereLetto()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Bagni</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-shower"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getBagni()%></span>
                                                            </div>
                                                        </div>
                                                        <div class="property_feature">
                                                            <span class="property_feature_title">Superficie</span>
                                                            <div class="feature_icon_wrapper">
                                                                <i class="icon-square-o"></i>
                                                                <span class="figure"><%=appartamenti.get(i).getSuperficie()%></span>
                                                                <span>mq</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="property_price">
                                                        <div class="property_price_box">
                                                            <span class="property_card_status"><%=appartamenti.get(i).getTipoVendita()%></span>
                                                            <p class="property_card_price">
                                                                €<%=appartamenti.get(i).getPrezzo()%>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>
                                    </div>
                                    <div class="pagination_wrapper">
                                        <div class="pagination">
                                            <a href="" class="btn_real current">1</a>
                                            <a href="" class="btn_real">2</a>
                                            <a href="" class="btn_real">3</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="section_agents_list">
                        <div class="agents_container">
                            <div class="agents_row">
                                <div class="agents_column_wrap">
                                    <div class="agents_header">
                                        <div class="agents_header_content">
                                            <span class="agents_subtitle">Incontra i nostri Agenti</span>
                                            <h2 class="agents_title">Agenti</h2>
                                            <p class="agents_description">Mettiti in contatto con i nostri esperti
                                                immobiliari.</p>
                                        </div>
                                    </div>
                                    <div class="agents_list">
                                        <div class="agents_list_wrap">
                                            <%for (int j = 0; j < agenteCase.size(); j++) {%>
                                            <article class="agent_content">
                                                <div class="agent_content_wrap">
                                                    <div class="agent_content_picture">
                                                        <a href="">
                                                            <img src="images/agente.jpg" height="210" width="210">
                                                        </a>
                                                    </div>
                                                    <div class="agent_content_details">
                                                        <h3>
                                                            <a href=""><%
                                                                for (AgenteBean agenteBean : agenti) {
                                                                    if (agenteBean.getIdAgente() == agenteCase.get(j).getBean().getIdAgente()) {
                                                                        for (UtenteBean utenteBean : utente) {
                                                                            if (agenteBean.getIdUtente() == utenteBean.getIdUtente()) {
                                                            %><%=utenteBean.getNome() + " " + utenteBean.getCognome()%><%
                                                                            }
                                                                        }
                                                                    }
                                                                }%></a>
                                                        </h3>
                                                        <p class="agent_content_phone">
                                                            <a href=""><%=agenteCase.get(j).getBean().getTelefonoCellulare()%>
                                                            </a>
                                                        </p>
                                                        <a href="" class="agent_content_email"><%
                                                            for (AgenteBean agenteBean : agenti) {
                                                                if (agenteBean.getIdAgente() == agenteCase.get(j).getBean().getIdAgente()) {
                                                                    for (UtenteBean utenteBean : utente) {
                                                                        if (agenteBean.getIdUtente() == utenteBean.getIdUtente()) {
                                                        %><%=utenteBean.getEmail()%><%
                                                                        }
                                                                    }
                                                                }
                                                            }%></a>
                                                        <div class="agent_listed">
                                                            <p class="figure"><%=agenteCase.get(j).getContaCase()%>
                                                            </p>
                                                            <p class="heading">Immobili pubblicati</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </article>
                                            <%}%>
                                            <div class="pagination_wrapper">
                                                <div class="pagination">
                                                    <a href="" class="btn_real current">1</a>
                                                    <a href="" class="btn_real">2</a>
                                                    <a href="" class="btn_real">3</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </article>
        </section>
    </div>
    <div class="footer_wrapper">
        <footer class="general_footer">
            <div class="top_footer">
                <div class="footer_logo">
                    <a href="" title="Gabetti Nocera Inferiore">
                        <img src="images/logogabetti.svg" height="200" width="200">
                    </a>
                </div>
                <div class="footer_socials">
                    <a class="facebook" href="">
                        <icon class="icon-facebook"></icon>
                    </a>
                    <a class="instagram" href="">
                        <icon class="icon-instagram"></icon>
                    </a>
                </div>
            </div>
            <div class="footer_widgets_wrap">
                <div class="footer_widgets">
                    <div class="navigation">
                        <section class="navigation_menu">
                            <h3 class="title">Link veloci</h3>
                            <div class="menu_footer">
                                <ul class="menu">
                                    <li class="menu_item">
                                        <a href="">Home</a>
                                    </li>
                                    <li class="menu_item">
                                        <a href="">Lista Immobili</a>
                                    </li>
                                    <li class="menu_item">
                                        <a href="">Valutazione Immobile</a>
                                    </li>
                                    <li class="menu_item">
                                        <a href="">I Nostri Agenti</a>
                                    </li>
                                    <li class="menu_item">
                                        <a href="">Contattaci</a>
                                    </li>
                                </ul>
                            </div>
                        </section>
                    </div>
                </div>
                <div class="footer_widgets">
                    <div class="contact_widget">
                        <h3 class="title">I nostri contatti</h3>
                        <div class="contact_widget_item">
                            <p class="contact_icon">
                                <i class="icon-map-marker"></i>
                            </p>
                            <p class="contact_content">Via Attilio Barbarulo, 132, 84014 Nocera inferiore SA</p>
                        </div>
                        <div class="contact_widget_item">
                            <p class="contact_icon">
                                <i class="icon-whatsapp"></i>
                            </p>
                            <a class="contact_content" href="">3312294330</a>
                        </div>
                        <div class="contact_widget_item">
                            <p class="contact_icon">
                                <i class="icon-mail_outline"></i>
                            </p>
                            <a class="contact_content">example@gmail.com</a>
                        </div>
                    </div>
                </div>

            </div>
        </footer>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="script/index.js"></script>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery.sticky.js"></script>
</body>
</html>

