<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Evaluacion.aspx.vb" Inherits="programahonor.Evaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/stylesheet.css" rel="stylesheet" />

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>

 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

<%--<h3>Indique la naturaleza de su asociacion con el solicitante</h3>
   
    <asp:RadioButton ID="rbPorfesorUniversitario" runat="server" Text="Profesor Universitario"  />
     <asp:RadioButton ID="rbLiderComunitario" runat="server" Text="Lider comunitario" />
    <asp:RadioButton ID="rbPatrono" runat="server" Text="Patrono" />
    <asp:RadioButton ID="rbOtro" runat="server" Text="Otro (especifique)" />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

<h3>Cuan bien usted conoce al solicitante</h3>
    <asp:RadioButton ID="rbMuybien" runat="server" Text =" Muy bien " />
    <asp:RadioButton ID="rbBastanteBien" runat="server" Text =" Bastante bien " />
    <asp:RadioButton ID="rbEscasamente" runat="server" Text =" Escasamente " />
    
    <h3>Hace cuanto tiempo lo conoce</h3>
    <asp:RadioButton ID="rbMenos" runat="server" Text =" Menos de un año " />
    <asp:RadioButton ID="rbDunoADos" runat="server" Text =" De uno ados años " />
    <asp:RadioButton ID="rbMas" runat="server" Text =" Mas de dos años " />

    <h3>Cual seria su opinion con relacion a que el solicitante aspire a formar parte del Programa de Estudios de Honor </h3>
 <asp:TextBox ID="Profe_Opinion" runat="server" CssClass="MultiLineTextBox" Height="50px" MaxLength="500" Width="600px" TextMode="MultiLine"></asp:TextBox><br />--%>

        <div class="form-group">
            <div class="col-sm-5 col-md-6">
                a. Cumple con su labor.
            </div>
            <div class="col-sm-5 col-sm-offset-2 .col-md-6 col-md-offset-0">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="XmlEvaluacion" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                <asp:XmlDataSource ID="XmlEvaluacion" runat="server" DataFile="~/Content/xml/xmlDepartment.xml"></asp:XmlDataSource>
            </div>
        </div>

        </form>
<%--<table border = "border">
  <tr>
    
    <th> Caracteristicas </th>
       <th> Excelente </th>
    <th> Bueno</th>
    <th> Regular </th>
<th> Deficiente </th>
    <th> N/A</th>
  </tr>
        <tr>
       <th> Laboriosidad: </th>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
     </tr>
       <tr>
       <th> a.	Hace bien la tarea. </th>
       <td>  <asp:RadioButton ID="RadioButton2" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton3" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton4" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton5" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton6" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th> b.	Termina los trabajos a tiempo.</th>
       <td>  <asp:RadioButton ID="RadioButton7" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton8" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton9" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton10" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton11" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>c.	Utiliza bien el tiempo.</th>
       <td>  <asp:RadioButton ID="RadioButton12" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton13" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton14" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton15" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton16" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>
d.	Es fiel a su horario.</th>
       <td>  <asp:RadioButton ID="RadioButton17" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton18" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton19" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton20" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton21" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>e.	Es ordenado(a).</th>
       <td>  <asp:RadioButton ID="RadioButton22" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton23" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton24" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton25" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton26" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>f.	Trabaja según los procedimientos.</th>
       <td>  <asp:RadioButton ID="RadioButton27" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton28" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton29" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton30" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton31" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>g.	Se ajusta a las normas de la institución.</th>
       <td>  <asp:RadioButton ID="RadioButton32" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton33" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton34" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton35" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton36" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>h.	Demuestra calidad en sus trabajos.</th>
       <td>  <asp:RadioButton ID="RadioButton37" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton38" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton39" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton40" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton41" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th>i.	Delega responsabilidades correctamente.</th>
       <td>  <asp:RadioButton ID="RadioButton42" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton43" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton44" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton45" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton46" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th> j.	Sabe trabajar bajo presión.</th>
       <td>  <asp:RadioButton ID="RadioButton47" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton48" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton49" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton50" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton51" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th> k.	Posee habilidad para analizar y resolver problemas.</th>
       <td>  <asp:RadioButton ID="RadioButton52" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton53" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton54" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton55" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton56" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>

   
</table>
<table border = "border">
  <tr>
      <th> Madurez </th>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
     </tr>
       <tr>
       <th> a.	Habilidad para enfrentar retos en la vida. </th>
       <td>  <asp:RadioButton ID="RadioButton57" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton58" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton59" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton60" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton61" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
    <tr>
       <th>b.	Tiene dominio propio .</th>
       <td>  <asp:RadioButton ID="RadioButton62" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton63" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton64" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton65" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton66" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th> c.Actua con rectitud de intencion </th>
       <td>  <asp:RadioButton ID="RadioButton1" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton67" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton68" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton69" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton70" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
    <tr>

       <th> d.	Sabe tomar decisiones. </th>
       <td>  <asp:RadioButton ID="RadioButton72" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton73" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton74" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton75" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton76" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr><tr>
       <th>e.	Es sincero(a). </th>
       <td>  <asp:RadioButton ID="RadioButton77" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton78" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton79" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton80" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton81" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr><tr>
       <th> f.	Proyecta serenidad.</th>
       <td>  <asp:RadioButton ID="RadioButton82" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton83" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton84" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton85" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton86" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr><tr>
       <th>g. Utiliza el sentido común y el buen juicio. </th>
       <td>  <asp:RadioButton ID="RadioButton87" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton88" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton89" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton90" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton91" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>


</table>
<table border = "border">
  <tr>
      <th class="auto-style2"> Relaciones Interpersonales </th>
       <td class="auto-style1">  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
     </tr>
       <tr>
       <th class="auto-style2"> a.	Demuestra habilidad para la comunicación efectiva, cooperación y trabajo en equipo. </th>
       <td class="auto-style1">  <asp:RadioButton ID="RadioButton71" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton92" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton93" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton94" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton95" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
    <tr>
       <th class="auto-style2">&nbsp;b.	Facilita el diálogo con sus pares y personas que le rodean.</th>
       <td class="auto-style1">  <asp:RadioButton ID="RadioButton96" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton97" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton98" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton99" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton100" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
     <tr>
       <th class="auto-style2"> c.	Es educado y aplica normas básicas de urbanidad.</th>
       <td class="auto-style1">  <asp:RadioButton ID="RadioButton101" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton102" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton103" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton104" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton105" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
    <tr>

       <th class="auto-style2"> d.	Posee buen sentido del humor y es afable con sus compañeros. </th>
       <td class="auto-style1">  <asp:RadioButton ID="RadioButton106" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton107" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton108" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton109" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton110" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr><tr>
       <th class="auto-style2">&nbsp;e.	Es capaz de escuchar y aceptar diferentes puntos de vista. </th>
       <td class="auto-style1">  <asp:RadioButton ID="RadioButton111" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton112" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton113" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton114" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton115" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr><tr>
       <th class="auto-style2"> f.	Brinda ayuda ante necesidades ajenas</th>
       <td class="auto-style1">  <asp:RadioButton ID="RadioButton116" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton117" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton118" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton119" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton120" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
      
</table>
<table border = "border">
  <tr>
      <th> Confianza en si mismo </th>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
     </tr>
       <tr>
       <th> a.	Es capaz de reconocer sus propias fortalezas o debilidades. </th>
       <td>  <asp:RadioButton ID="RadioButton121" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton122" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton123" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton124" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton125" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
    <tr>
       <th>b.	Perseverancia en el logro de sus metas.</th>
       <td>  <asp:RadioButton ID="RadioButton126" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton127" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton128" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton129" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton130" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
</table>
</table>
<table border = "border">
  <tr>
      <th style="font-family: Arial; font-size: medium"> Destrezas en comunicación:	 </th>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
       <td>  </td>
     </tr>
       <tr>
       <th> a.	Se expresa en forma oral y escrita correctamente. </th>
       <td>  <asp:RadioButton ID="RadioButton131" runat="server" Text =" Excelente "/></td>
       <td> <asp:RadioButton ID="RadioButton132" runat="server" Text =" Bueno " /> </td>
       <td> <asp:RadioButton ID="RadioButton133" runat="server" Text =" Regular " /> </td>
       <td> <asp:RadioButton ID="RadioButton134" runat="server" Text =" Deficiente " /> </td>
       <td> <asp:RadioButton ID="RadioButton135" runat="server"  Text =" No tengo criterio para juzgar "/> </td>
     </tr>
    </form>--%>
</asp:Content>