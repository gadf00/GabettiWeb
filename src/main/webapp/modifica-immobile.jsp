<%@ page import="model.utente.UtenteBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.appartamento.AppartamentoBean" %>
<%@ page import="model.indirizzo.IndirizzoBean" %>
<%@ page import="model.agente.AgenteBean" %><%--
  Created by IntelliJ IDEA.
  User: gaeta
  Date: 28/04/2022
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifica-Immobile</title>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="css/amministratoreagente.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="icomoon/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="bootstrapcss/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<%
    UtenteBean admin = (UtenteBean) session.getAttribute("utente");
    if (admin == null || !admin.getRuolo().equals("Admin")) {
        response.sendRedirect(response.encodeRedirectURL("login.jsp"));
        return;
    }

    ArrayList<UtenteBean> utenti = (ArrayList<UtenteBean>) session.getAttribute("array");
    if (utenti == null) {
        response.sendRedirect(response.encodeRedirectURL("login.jsp"));
        return;
    }
    AgenteBean agente = (AgenteBean) request.getAttribute("agente");
    AppartamentoBean appartamentoBean = (AppartamentoBean) request.getAttribute("modifica-appartamento");
    if(appartamentoBean==null){
        response.sendRedirect(response.encodeRedirectURL("gestione-lista-immobili.jsp"));
        return;
    }

    IndirizzoBean indirizzoBean =(IndirizzoBean) request.getAttribute("modifica-indirizzo");
    if(appartamentoBean==null){
        response.sendRedirect(response.encodeRedirectURL("gestione-lista-immobili.jsp"));
        return;
    }

%>
<body>
<jsp:include page="sidebar.jsp" />
<section class="home-section">
    <div class="div_addProperty_page">
        <div class="addProperty_page_head">
            <div class="addProperty_head_title">
                <h1 class="head_title">Modifica immobile</h1>
            </div>
        </div>
        <div class="addProperty_page_content">
            <form class="form_addProperty" action="ServletModificaAppartamento" method="post">
                <input type="hidden" name="idAppartamento" value="<%=appartamentoBean.getIdAppartamento()%>">
                <div class="addProperty_tab">
                    <h3 class="tab_title">Informazioni generali</h3>
                </div>
                <div class="addProperty_content">
                    <div class="form_content_fields">
                        <div class="content_fields_row">
                            <div class="property_title">
                                <div class="content_fields_column full_size">
                                    <label class="label_property_title">Titolo immobile*</label>
                                    <input type="text"  placeholder="<%=appartamentoBean.getNomeAppartamento()%>"
                                           name="titoloImmobile" value="<%=appartamentoBean.getNomeAppartamento()%>">
                                </div>
                            </div>
                            <div class="property_address">
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Citt??*</label>
                                    <input type="text"  placeholder="<%=indirizzoBean.getCitta()%>" name="citta" value="<%=indirizzoBean.getCitta()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Provincia*</label>
                                    <input type="text"  placeholder="<%=indirizzoBean.getProvincia()%>" name="provincia" value="<%=indirizzoBean.getProvincia()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Indirizzo*</label>
                                    <input type="text"  placeholder="<%=indirizzoBean.getVia()%>" name="indirizzo" value="<%=indirizzoBean.getVia()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Numero civico</label>
                                    <input type="text" placeholder="<%=indirizzoBean.getNumeroCivico()%>" name="numeroCivico" value="<%=indirizzoBean.getNumeroCivico()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">CAP*</label>
                                    <input type="text"  placeholder="<%=indirizzoBean.getCap()%>>" name="cap" value="<%=indirizzoBean.getCap()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Zona</label>
                                    <input type="text"  placeholder="<%=indirizzoBean.getZona()%>" name="zona" value="<%=indirizzoBean.getZona()%>">
                                </div>
                            </div>
                            <div class="property_description">
                                <div class="content_fields_column full_size">
                                    <label class="label_property_title">Descrizione*</label>
                                    <textarea rows="10"  placeholder="<%=appartamentoBean.getDescrizioneAppartamento()%>" name="descrizione"><%=appartamentoBean.getDescrizioneAppartamento()%></textarea>
                                </div>
                            </div>
                            <div class="property_features">
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Prezzo*</label>
                                    <input type="text"  placeholder="<%=appartamentoBean.getPrezzo()%>" name="prezzo" value="<%=appartamentoBean.getPrezzo()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Visualizza Prezzo</label>
                                    <select name="visualizzazionePrezzo">
                                        <option value="" selected disabled>Seleziona se mostrare il prezzo</option>
                                        <%if(appartamentoBean.getVisualizzaPrezzo() == 1){%>
                                        <option selected value="Si">SI</option>
                                        <%}else{%>
                                        <option value="Si">SI</option>
                                        <%}%>
                                        <%if(appartamentoBean.getVisualizzaPrezzo() == 0){%>
                                        <option selected value="No">NO</option>
                                        <%}else{%>
                                        <option value="No">NO</option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Tipo immobile*</label>
                                    <select  name="tipoImmobile">
                                        <option value="" selected disabled>Seleziona categoria immobile</option>
                                        <%if(appartamentoBean.getCategoria().equals("Appartamento")){%>
                                            <option selected value="Appartamento">Appartamento</option>
                                        <%}else{%>
                                            <option value="Appartamento">Appartamento</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Abitazione economica")){%>
                                            <option selected value="Abitazione economica">Abitazione economica</option>
                                        <%}else{%>
                                            <option value="Abitazione economica">Abitazione economica</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Loft / Open space")){%>
                                            <option selected value="Loft / Open space ">Loft / Open Space</option>
                                        <%}else{%>
                                            <option value="Loft / Open space ">Loft / Open Space</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Mansarda")){%>
                                            <option selected value="Mansarda">Mansarda</option>
                                        <%}else{%>
                                            <option value="Mansarda">Mansarda</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Stabile / Palazzo")){%>
                                            <option selected value="Stabile / Palazzo">Stabile / Palazzo</option>
                                        <%}else{%>
                                            <option value="Stabile / Palazzo">Stabile / Palazzo</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Rustico / Casale")){%>
                                            <option selected value="Rustico / Casale">Rustico / Casale</option>
                                        <%}else{%>
                                            <option value="Rustico / Casale">Rustico / Casale</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Attico")){%>
                                            <option selected value="Attico">Attico</option>
                                        <%}else{%>
                                            <option value="Attico">Attico</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Villetta a schiera")){%>
                                            <option selected value="Villetta a schiera">Villetta a schiera</option>
                                        <%}else{%>
                                            <option value="Villetta a schiera">Villetta a schiera</option>
                                        <%}%>
                                        <%if(appartamentoBean.getCategoria().equals("Appartamento di lusso")){%>
                                            <option selected value="Appartamento di lusso">Appartamento di lusso</option>
                                        <%}else{%>
                                            <option value="Appartamento di lusso">Appartamento di lusso</option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Stato appartamento*</label>
                                    <select  name="statoImmobile">
                                        <option value="" selected disabled>Seleziona stato immobile</option>
                                        <%if(appartamentoBean.getTipoVendita().equals("In Vendita")){%>
                                            <option selected value="In Vendita">In Vendita</option>
                                        <%}else{%>
                                            <option value="In Vendita">In Vendita</option>
                                        <%}%>
                                        <%if(appartamentoBean.getTipoVendita().equals("In Affitto")){%>
                                        <option selected value="In Affitto">In Affitto</option>
                                        <%}else{%>
                                        <option value="In Affitto">In Affitto</option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Superficie in mq</label>
                                    <input type="text" placeholder="<%=appartamentoBean.getSuperficie()%>"
                                           name="superficie" value="<%=appartamentoBean.getSuperficie()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Numero Locali</label>
                                    <input type="text" placeholder="<%=appartamentoBean.getLocali()%>" name="locali" value="<%=appartamentoBean.getLocali()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Piano</label>
                                    <select name="piano">
                                        <option value="" selected disabled>Seleziona Piano</option>
                                        <%if(appartamentoBean.getPiano().equals("Interrato Seminterrato")){%>
                                            <option selected value="Interrato Seminterrato">Interrato / Seminterrato</option>
                                        <%}else{%>
                                        <option value="Interrato Seminterrato">Interrato / Seminterrato</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("Piano terra")){%>
                                            <option selected value="Piano terra">Piano terra</option>
                                        <%}else{%>
                                            <option value="Piano terra">Piano terra</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("Piano rialzato")){%>
                                            <option selected value="Piano rialzato">Piano rialzato</option>
                                        <%}else{%>
                                            <option value="Piano rialzato">Piano rialzato</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("1 piano")){%>
                                            <option selected value="1 piano">1?? Piano</option>
                                        <%}else{%>
                                            <option value="1 piano">1?? Piano</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("2 piano")){%>
                                            <option selected value="2 piano">2?? Piano</option>
                                        <%}else{%>
                                            <option value="2 piano">2?? Piano</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("3 piano")){%>
                                            <option selected value="3 piano">3?? Piano</option>
                                        <%}else{%>
                                            <option value="3 piano">3?? Piano</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("4 piano")){%>
                                            <option selected value="4 piano">4?? Piano</option>
                                        <%}else{%>
                                            <option value="4 piano">4?? Piano</option>
                                        <%}%>
                                        <%if(appartamentoBean.getPiano().equals("5 piano e oltre")){%>
                                            <option selected value="5 piano e oltre">5?? Piano e oltre</option>
                                        <%}else{%>
                                            <option value="5 piano e oltre">5?? Piano e oltre</option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Posti auto</label>
                                    <input type="text"  placeholder="<%=appartamentoBean.getPostoAuto()%>"
                                           name="postiAuto" value="<%=appartamentoBean.getPostoAuto()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Numero Bagni</label>
                                    <input type="text"  placeholder="<%=appartamentoBean.getBagni()%>"
                                           name="numeroBagni" value="<%=appartamentoBean.getBagni()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Numero Camere Da Letto</label>
                                    <input type="text"  placeholder="<%=appartamentoBean.getCamereLetto()%>"
                                           name="camereLetto" value="<%=appartamentoBean.getCamereLetto()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Riscaldamento</label>
                                    <select name="riscaldamento">
                                        <option value="" selected disabled>Seleziona tipo riscaldamento</option>
                                        <%if(appartamentoBean.getRiscaldamento().equals("Non presente")){%>
                                            <option selected value="Non presente">Non presente</option>
                                        <%}else{%>
                                            <option value="Non presente">Non presente</option>
                                        <%}%>
                                        <%if(appartamentoBean.getRiscaldamento().equals("Autonomo")){%>
                                            <option selected value="Autonomo">Autonomo</option>
                                        <%}else{%>
                                            <option value="Autonomo">Autonomo</option>
                                        <%}%>
                                        <%if(appartamentoBean.getRiscaldamento().equals("Condominiale")){%>
                                            <option selected value="Condominiale">Condominiale</option>
                                        <%}else{%>
                                            <option value="Condominiale">Condominiale</option>
                                        <%}%>
                                        <%if(appartamentoBean.getRiscaldamento().equals("Pompe di calore")){%>
                                        <option selected value="Pompe di calore">Pompe di calore</option>
                                        <%}else{%>
                                        <option value="Pompe di calore">Pompe di calore</option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Classe energetica</label>
                                    <input type="text"  placeholder="<%=appartamentoBean.getClasseEnergetica()%>"
                                           name="classeEnergetica" value="<%=appartamentoBean.getClasseEnergetica()%>">
                                </div>
                                <div class="content_fields_column half_size">
                                    <label class="label_property_title">Agente</label>
                                    <select required name="Agente">
                                        <option value="" selected disabled>Seleziona l'agente</option>
                                        <%
                                            for (UtenteBean utenteBean : utenti) {
                                                if (utenteBean.getRuolo().equals("Agente")) {
                                                    if(agente.getIdAgente() == appartamentoBean.getIdAgente()){
                                                    %>
                                                        <option selected value="<%=agente.getIdAgente()%>"><%=utenteBean.getNome() + " " + utenteBean.getCognome()%></option>
                                                    <%
                                                    }
                                                    else{%>
                                                        <option value="<%=agente.getIdAgente()%>"><%=utenteBean.getNome() + " " + utenteBean.getCognome()%></option>
                                                <%}
                                                }
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="div_button_submit">
                            <input type="submit" value="Modifica Immobile">
                        </div>
                    </div>
                </div>
                <input type="hidden" name="data" value="" id="data">
            </form>
        </div>
    </div>
</section>

<script>
    let sidebar = document.querySelector(".sidebar");
    let closeBtn = document.querySelector("#btn");
    let searchBtn = document.querySelector(".bx-search");

    closeBtn.addEventListener("click", () => {
        sidebar.classList.toggle("open");
        menuBtnChange();//calling the function(optional)
    });

    searchBtn.addEventListener("click", () => { // Sidebar open when you click on the search iocn
        sidebar.classList.toggle("open");
        menuBtnChange(); //calling the function(optional)
    });

    // following are the code to change sidebar button(optional)
    function menuBtnChange() {
        if (sidebar.classList.contains("open")) {
            closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
        } else {
            closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");//replacing the iocns class
        }
    }
</script>

<script>
    function previewImages() {

        var preview = document.querySelector('#gallery_image_container');

        if (this.files) {
            [].forEach.call(this.files, readAndPreview);
        }

        function readAndPreview(file) {

// Make sure `file.name` matches our extensions criteria
            if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
                return alert(file.name + " is not an image");
            } // else...

            var reader = new FileReader();

            reader.addEventListener("load", function () {
                var image = new Image();
                image.height = 100;
                image.title = file.name;
                image.src = this.result;
                preview.appendChild(image);
            });

            reader.readAsDataURL(file);

        }

    }

    document.querySelector('#upload-photo').addEventListener("change", previewImages);

    $('#reset-image').click(function () {
        $("#upload-photo").val('');
        $("#gallery_image_container").empty();
    });


</script>

<script>
    function previewImages() {

        var preview = document.querySelector('#planimetria_image_container');

        if (this.files) {
            [].forEach.call(this.files, readAndPreview);
        }

        function readAndPreview(file) {

// Make sure `file.name` matches our extensions criteria
            if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
                return alert(file.name + " is not an image");
            } // else...

            var reader = new FileReader();

            reader.addEventListener("load", function () {
                var image = new Image();
                image.height = 100;
                image.title = file.name;
                image.src = this.result;
                preview.appendChild(image);
            });

            reader.readAsDataURL(file);

        }

    }

    document.querySelector('#upload-planimetria').addEventListener("change", previewImages);

    $('#reset-planimetria').click(function () {
        $("#upload-planimetria").val('');
        $("#planimetria_image_container").empty();
    });
</script>

<script>
    function previewImages() {

        var preview = document.querySelector('#video_image_container');

        if (this.files) {
            [].forEach.call(this.files, readAndPreview);
        }

        function readAndPreview(file) {

// Make sure `file.name` matches our extensions criteria
            if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
                return alert(file.name + " is not an image");
            } // else...

            var reader = new FileReader();

            reader.addEventListener("load", function () {
                var image = new Image();
                image.height = 100;
                image.title = file.name;
                image.src = this.result;
                preview.appendChild(image);
            });

            reader.readAsDataURL(file);

        }

    }

    document.querySelector('#upload-video').addEventListener("change", previewImages);

    $('#reset-video').click(function () {
        $("#upload-video").val('');
    });
</script>

<script>
    $(document).ready(function () {
        var today = new Date();
        var month = today.getMonth() + 1;
        if (month < 10) {
            month = '0' + month;
        }
        var date = today.getFullYear() + '-' + month + '-' + today.getDate();
        $("#data").val(date);
    });

</script>

<script>
    function readFile(e) {
        var files;
        console.log("SIUM");
        if (e.target.files) {
            files = e.target.files
        } else {
            files = e.dataTransfer.files
        }
        if (files.length == 0) {
            alert('What you dropped is not a file.');
            return;
        }
        var file = files[0];
        document.getElementById('fileDragName').value = file.name
        document.getElementById('fileDragSize').value = file.size
        document.getElementById('fileDragType').value = file.type
        reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById('fileDragData').value = e.target.result;
        }
        reader.readAsDataURL(file);
    }

    function getTheFile(e) {
        e.target.style.borderColor = '#ccc';
        readFile(e);
    }

    function getDate() {
        var today = new Date();
        var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
        return date;
    }


</script>


<script src="script/index.js"></script>
<script src="bootstrap/js/jquery-3.3.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery.sticky.js"></script>

</body>
</html>
