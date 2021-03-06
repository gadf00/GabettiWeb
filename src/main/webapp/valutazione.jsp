<%@ page import="java.util.ArrayList" %>
<%@ page import="UtilityClass.Città" %><%--
  Created by IntelliJ IDEA.
  User: Luca
  Date: 18/03/2022
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="it">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery.sticky.js"></script>
    <link rel="stylesheet" href="icomoon/style.css">

    <link rel="stylesheet" href="bootstrapcss/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/valutazione.css">
    <link rel="stylesheet" href="css/aggiunte.css">
    <title>Gabetti Nocera | Valutazione Immobile</title>
    <link rel="shortcut icon" type="image/jpg" href="images/favicon-256x256.png"/>

</head>

<%
    ArrayList<Città> allCittàZone = (ArrayList<Città>) request.getSession().getAttribute("allCittaZone");
    if (allCittàZone == null) {
        session.setAttribute("nomepagina", "valutazione.jsp");
        response.sendRedirect(response.encodeRedirectURL("ServletValutazioneCampiRicerca"));
        return;
    }
    ArrayList<String> categorie = (ArrayList<String>) request.getSession().getAttribute("categorie");
%>
<body>
<%@ include file="loader.html"%>
<nav id="navbar">
    <a href="index.jsp" class="logo">
        <img src="images/logo.png">
    </a>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
        <i class="icon-bars"></i>
    </label>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="listaappartamenti.jsp">Lista Immobili</a></li>
        <li><a class="active" href="valutazione.jsp">Valutazione Immobile</a></li>
        <li><a href="listaagenti.jsp">I Nostri Agenti</a></li>
        <li><a href="contact.jsp">Contattaci</a></li>
    </ul>
</nav>
<div class="content">
    <section class="banner" style="background-image: url(images/banner.jpg); background-position: center 0%;">
        <div class="banner_cover"></div>
        <div class="banner_wrap">
            <h1 class="banner_title">Valutazione immobile</h1>
        </div>
    </section>
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
    <section class="section_valutazione">
        <div class="div_page_valutazione">
            <div class="page_valutazione">
                <div class="valutazione">
                    <div class="valutazione_wrap">
                        <div class="valutazione_heading">
                            <p class="valutazione_quote">
                                <span>Vuoi vendere la tua casa?</span>
                            </p>
                            <h2 class="valutazione_title">Richiedi una valutazione gratuita</h2>
                            <p class="valutazione_subtitle">
                                <span>Compila questi campi per scoprire quanto vale la tua casa!</span>
                            </p>
                        </div>
                            <div class="div_valutazione_form">
                            <section class="section_valutazione_form">
                                <form action="ServletMail" class="valutazione_form">
                                    <input type="hidden" name="action" value="valutazione">
                                    <div class="valutazione_form_field half_size">
                                        <label>Indirizzo</label>
                                        <input type="text"
                                               placeholder="Indirizzo del tuo immobile compreso di numero civico" name="indirizzo">
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Comune</label>
                                        <input type="text" placeholder="Inserisci il comune" name="comune">
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Tipo immobile</label>
                                        <select name="tipoImmobile">
                                            <option value="" selected disabled>Seleziona tipo immobile</option>
                                            <option value="Appartamento">Appartamento</option>
                                            <option value="Abitazione economica">Abitazione economica</option>
                                            <option value="Loft Open space ">Loft / Open Space</option>
                                            <option value="Mansarda">Mansarda</option>
                                            <option value="Stabile Palazzo">Stabile / Palazzo</option>
                                            <option value="Rustico Casale">Rustico / Casale</option>
                                            <option value="Attico">Attico</option>
                                            <option value="Villetta a schiera">Villetta a schiera</option>
                                            <option value="Appartamento di lusso">Appartamento di lusso</option>
                                        </select>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Superficie in mq</label>
                                        <input type="text" placeholder="Inserisci la superficie" name="superficie">
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Piano</label>
                                        <select name="piano">
                                            <option value="" selected disabled>Seleziona piano immobile</option>
                                            <option value="Interrato Seminterrato">Interrato / Seminterrato</option>
                                            <option value="Piano terra">Piano terra</option>
                                            <option value="Piano rialzato">Piano rialzato</option>
                                            <option value="1 piano">1° Piano</option>
                                            <option value="2 piano">2° Piano</option>
                                            <option value="3 piano">3° Piano</option>
                                            <option value="4 piano">4° Piano</option>
                                            <option value="5 piano e oltre">5° Piano e oltre</option>
                                        </select>
                                    </div>
                                    <div class="form_piano half_size">
                                        <label>Ultimo piano?</label>
                                        <div>
                                            <input type="radio" name="ultimoPiano" value="Si">
                                            <label>Si.</label>
                                        </div>
                                        <div>
                                            <input type="radio" name="ultimoPiano" value="No">
                                            <label>No.</label>
                                        </div>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Locali</label>
                                        <input type="text" placeholder="Inserisci il numero dei locali" name="locali">
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Bagni</label>
                                        <input type="text" placeholder="Inserisci il numero dei bagni"name="bagni">
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Stato dell'appartamento</label>
                                        <select name="statoAppartamento">
                                            <option value="" selected disabled>Seleziona stato appartamento</option>
                                            <option value="Da ristrutturare">Da ristrutturare</option>
                                            <option value="Abitabile">Abitabile</option>
                                            <option value="Ristrutturato">Ristrutturato</option>
                                            <option value="Nuova costruzione">Nuova costruzione</option>
                                        </select>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Riscaldamento</label>
                                        <select name="riscaldamento">
                                            <option value="" selected disabled>Seleziona tipo riscaldamento</option>
                                            <option value="Non presente">Non presente</option>
                                            <option value="Autonomo">Autonomo</option>
                                            <option value="Condominiale">Condominiale</option>
                                            <option value="Pompe di calore">Pompe di calore</option>
                                        </select>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Anno costruzione immobile</label>
                                        <input type="text" placeholder="Inserisci l'anno costruzione immobile" name="annoDiCostruzione">
                                    </div>
                                    <div class="form_features full_size">
                                        <label>L'immobile dispone di</label>
                                        <div class="choice-features">
                                            <input type="checkbox" value="Ascensore">
                                            <label class="choice">Ascensore</label>
                                        </div>
                                        <div class="choice-piano">
                                            <input type="checkbox" value="Posto auto garage">
                                            <label class="choice">Posto auto / garage</label>
                                        </div>
                                        <div class="choice-features">
                                            <input type="checkbox" value="Posto moto">
                                            <label class="choice">Posto moto</label>
                                        </div>
                                        <div class="choice-piano">
                                            <input type="checkbox" value="Balcone">
                                            <label class="choice">Balcone</label>
                                        </div>
                                        <div class="choice-features">
                                            <input type="checkbox" value="Terrazzo">
                                            <label class="choice">Terrazzo</label>
                                        </div>
                                        <div class="choice-piano">
                                            <input type="checkbox" value="Giardino">
                                            <label class="choice">Giardino</label>
                                        </div>
                                        <div class="choice-features">
                                            <input type="checkbox" value="Cantina">
                                            <label class="choice">Cantina</label>
                                        </div>
                                        <div class="choice-piano">
                                            <input type="checkbox" value="Soffitta">
                                            <label class="choice">Soffitta</label>
                                        </div>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Nome</label>
                                        <input type="text" placeholder="Inserisci il tuo nome" name="nome" required>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Cognome</label>
                                        <input type="text" placeholder="Inserisci il tuo cognome" name="cognome" required>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Telefono</label>
                                        <input type="text" placeholder="Inserisci il tuo numero di telefono" name="telefono" required>
                                    </div>
                                    <div class="valutazione_form_field half_size">
                                        <label>Email</label>
                                        <input type="text" placeholder="Inserisci la tua email" name="email" required>
                                    </div>
                                    <div class="valutazione_form_submit">
                                        <input type="submit" class="submit_button" value="Invia Richiesta Valutazione">
                                    </div>
                                </form>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="footer.jsp"/>
</div>


<script src="script/valutazione.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="script/index.js"></script>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery.sticky.js"></script>
</body>
</html>

