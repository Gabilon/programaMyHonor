<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="ResultadoEvaluaciones.aspx.vb" Inherits="programahonor.ResultadoEvaluaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
        	<!-- Optional theme -->
    <link href="Content/stylesheet.css" rel="stylesheet" />
        <script src="Scripts/jquery-2.1.1.min.js"></script>
        <script src="Scripts/bootstrap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
                 
     <form id="form1" runat="server">
          <h1 style= "text-align: center; padding: 5px;"> Resultado de Evaluacion </h1>
            <br></br> 
            <div class=" col-md-12">
                <%--<div class="col-md-6 ">
                    <label>Nombre del estudiante </label>
                    <asp:TextBox ID="Result_NombreEstudiante" runat="server"></asp:TextBox>
                </div>--%>

                <div class="col-md-6">
                    <label># de estudiante </label>
                    <asp:TextBox ID="Result_NumeroEstudiante" runat="server"></asp:TextBox>
                </div>
            </div>
       <%--  <div class=" col-md-12">
              <div class="col-md-6 ">
                    <label>Nombre de los evaluadores</label>
                  </div>
              <div class="col-md-6 ">
                       <asp:TextBox ID="Evaluador1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Evaluador2" runat="server"></asp:TextBox>
                  <asp:TextBox ID="Evaluador3" runat="server"></asp:TextBox>
                </div>
             </div>--%>
         <div class=" col-md-12">
              <div class="col-md-6 ">
                    <label> 1) Indique la naturaleza de su asociacion con el solicitante </label>
                  </div>
              <div class="col-md-6 ">
                       <asp:TextBox ID="Resul_AsociacionEst1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Resul_AsociacionEst2" runat="server"></asp:TextBox>
                  <asp:TextBox ID="Resul_AsociacionEst3" runat="server"></asp:TextBox>
                </div>
             </div>
           
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label> 2) Cuan bien usted conoce al solicitante</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_ConoceEs1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_ConoceEs2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_ConoceEs3" runat="server"></asp:TextBox>

                  
                     
                   
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6">
                    <label> 3) Hace cuanto tiempo lo conoce</label>
                </div>

                <div class="col-md-6">
                   
                     <asp:TextBox ID="Eval_tiempo1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_tiempo2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_tiempo3" runat="server"></asp:TextBox>


                </div>
            </div>


            <div class ="col-md-12">
<div class="col-md-6">
            <label> 4) Cual seria su opinion con relacion a que el solicitante aspire a formar parte del Programa de Estudios de Honor </label>
               </div>
     <div class="col-md-6">
                    <asp:TextBox ID="Eval_OpinionProfEst1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_OpinionProfEst2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_OpinionProfEst3" runat="server"></asp:TextBox>
                    </div>
            </div>
            <div class ="col-md-12">
                <div class="col-md-6">
                <label> 5) Tiene conocimiento de que el solicitante haya estado implicado en alguna accion disciplinaria que pueda afectar su participacion como estudiante</label>
                    </div>
                   <div class="col-md-6">
                    <asp:TextBox ID="Eval_FaltaEst1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FaltaEst2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FaltaEst3" runat="server"></asp:TextBox>
                </div>
                 </div>
         <div class ="col-md-12">
                <div class="col-md-6">
                <label> contesto Sí ? Favor de ampliar la información. </label>
                    </div>
                   <div class="col-md-6">
                    <asp:TextBox ID="Eval_FaltaEsttxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FaltaEst2txt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FaltaEst3txt" runat="server"></asp:TextBox>
                </div>
                 </div>
          
            <div class=" col-md-12">
                <div class="col-md-6">
                     <asp:Label Font-Size="14pt" Text="Caracteristicas:" runat="server" />
                    

                </div>
                <div class="col-md-6">
                 <asp:Label Font-Size="14pt" Text="Calificaciones" runat="server" />
                    
                </div>
            </div>
            <br></br> 
            <div class=" col-md-12">
                <asp:Label Font-Size="14pt" Font-Underline="true" Text="Laborosidad" runat="server" />
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>a. Hace bien las tareas</label>
                </div>
                <div class="col-md-6">

                     <asp:TextBox ID="Eval_Tarea1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Tarea2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Tarea3" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>b. Termina los trabajos a tiempo.</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_Cumplimiento1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Cumplimiento2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Cumplimiento3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>c. Utiliza bien el tiempo.</label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_UsoTiempo1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_UsoTiempo2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_UsoTiempo3" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>d. Es fiel a su horario. </label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_Horario1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Horario2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Horario3" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>e. Es ordenado(a).</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_OrdenEstudiante1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_OrdenEstudiante2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_OrdenEstudiante3" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>f. Trabaja según los procedimientos.</label>
                </div>

                <div class="col-md-6">
                      <asp:TextBox ID="Eval_Procedimiento1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_Procedimiento2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_Procedimiento3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>g. Se ajusta a las normas de la institución.</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_AjustaNormas1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_AjustaNormas2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_AjustaNormas3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6">
                    <label>h. Demuestra calidad en sus trabajos.</label>
                </div>

                <div class="col-md-6">
                     
                     <asp:TextBox ID="Eval_CalidadTrbajo1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_CalidadTrbajo2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_CalidadTrbajo3" runat="server"></asp:TextBox>
                 
                   
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>i. Delega responsabilidades correctamente.</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_DeleganResponsabilidad1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_DeleganResponsabilidad2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_DeleganResponsabilidad3" runat="server"></asp:TextBox>
                 
               
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>j. Sabe trabajar bajo presión.</label>
                </div>

                <div class="col-md-6">
                      <asp:TextBox ID="Eval_Presion1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Presion2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_Presion3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>k. Posee habilidad para analizar y resolver problemas.</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_Habilidad_Analisis_Resolver1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Habilidad_Analisis_Resolver2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_Habilidad_Analisis_Resolver3" runat="server"></asp:TextBox>
                    
                    
                </div>
            </div>
            <div class=" col-md-12">
                   <asp:Label Font-Size="14pt" Text="Madurez:" runat="server" />
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>a. Habilidad para enfrentar retos en la vida.</label>
                </div>

                <div class="col-md-6">

                        <asp:TextBox ID="Eval_EnfrentarRetos1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_EnfrentarRetos2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_EnfrentarRetos3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>b.	Tiene dominio propio </label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_DominioPropio1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_DominioPropio2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_DominioPropio3" runat="server"></asp:TextBox>

                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>c.Actua con rectitud de intencion </label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_Rectitud1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Rectitud2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_Rectitud3" runat="server"></asp:TextBox>

                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>d. Sabe tomar decisiones. </label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_TomadeDecisiones1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_TomadeDecisiones2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_TomadeDecisiones3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>e. Es sincera(a).</ </label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_Sinceridad1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Sinceridad2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_Sinceridad3" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>f. Proyecta serenidad.</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_ProySerenidad1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_ProySerenidad2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_ProySerenidad3" runat="server"></asp:TextBox>
                   
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>g. Utiliza el sentido común. </label>
                </div>
                <div class="col-md-6">
                     <asp:TextBox ID="Eval_SentidoComun1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_SentidoComun2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_SentidoComun3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
          <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>h. Utiliza  el buen juicio. </label>
                </div>
                <div class="col-md-6">
                   <asp:TextBox ID="BuenJuicio1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="BuenJuicio2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="BuenJuicio3" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class=" col-md-12">
                  <asp:Label Font-Size="14pt" Font-Underline="true" Text="Relaciones interpersonales" runat="server" />
                
           
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>a. Demuestra habilidad para la comunicación efectiva.</label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_TrabajoComunicacion1" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_TrabajoComunicacion2" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Eval_TrabajoComunicacion3" runat="server"></asp:TextBox>
                  
                </div>
            </div>
             <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>b. Demuestra habilidad para la  cooperación.</label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_habilidadCooperacion1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_habilidadCooperacion2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_habilidadCooperacion3" runat="server"></asp:TextBox>

                </div>
            </div>
             <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>c. Demuestra habilidad para el trabajo en equipo.</label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_habilidadEquipo1" runat="server"></asp:TextBox>
                      <asp:TextBox ID="Eval_habilidadEquipo2" runat="server"></asp:TextBox>
                      <asp:TextBox ID="Eval_habilidadEquipo3" runat="server"></asp:TextBox>
                   
                     
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>d. Facilita el diálogo con sus pares y personas que le rodean. </label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_FacilitaDialogo1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FacilitaDialogo2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FacilitaDialogo3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>e. Es educado y aplica normas básicas de urbanidad. </label>
                </div>

                <div class="col-md-6">
                     <asp:TextBox ID="Eval_EducacionUrbanidad1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_EducacionUrbanidad2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_EducacionUrbanidad3" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>f. Posee buen sentido del humor y es afable con sus compañeros </label>
                </div>

                <div class="col-md-6">
                    <asp:TextBox ID="Eval_HumorAfabilidad1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_HumorAfabilidad2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_HumorAfabilidad3" runat="server"></asp:TextBox>
                    
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>g. Es capaz de escuchar y aceptar diferentes puntos de vista.</ </label>
                </div>

                <div class="col-md-6">
                      <asp:TextBox ID="Eval_EscuchaOpinion1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_EscuchaOpinion2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_EscuchaOpinion3" runat="server"></asp:TextBox>
                   
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>
                    h. Brinda ayuda ante necesidades ajenas.</label>
                </div>

                <div class="col-md-6">
                       <asp:TextBox ID="Eval_AyudaOtros1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_AyudaOtros2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_AyudaOtros3" runat="server"></asp:TextBox>
                   
                </div>
            </div>
            <div class=" col-md-12">
                  <asp:Label Font-Size="14pt" Font-Underline="true" Text="Confianza en si mismo" runat="server" />
                </div>
                <div class=" col-md-12">
                    <div class="col-md-6 ">
                        <label>a. Es capaz de reconocer sus propias fortalezas o debilidades.</label>
                    </div>

                    <div class="col-md-6">
                    <asp:TextBox ID="Eval_FortaDebilidades1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FortaDebilidades2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_FortaDebilidades3" runat="server"></asp:TextBox>
                        
                    </div>
                </div>
                <div class=" col-md-12">
                    <div class="col-md-6 ">
                        <label>b. Perseverancia en el logro de sus metas. </label>
                    </div>

                    <div class="col-md-6">
                    <asp:TextBox ID="Eval_PerservanciaLogros1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_PerservanciaLogros2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_PerservanciaLogros3" runat="server"></asp:TextBox>
                      
                    </div>
                </div>
                <div class=" col-md-12">
                   <asp:Label Font-Size="14pt" Font-Underline="true" Text="Relaciones interpersonales" runat="server" />
                </div>
                <div class=" col-md-12">
                    <div class="col-md-6 ">
                        <label>a.Se expresa en forma oral y escrita correctamente.</label>
                    </div>

                    <div class="col-md-6">
                    <asp:TextBox ID="Eval_OralEscrita1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_OralEscrita2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Eval_OralEscrita3" runat="server"></asp:TextBox>
                        
                    </div>
                </div>
                 <div class ="col-md-12">
                      <div class="col-md-6">
                <label> ¿Recomienda usted al solicitante para participar en el Programa de Estudios de Honor? </label>
           </div>
                <div class="col-md-6">
                    <asp:TextBox ID="Recomienda1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Recomienda2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Recomieda3" runat="server"></asp:TextBox>
                    </div>
                     </div>
    <div class="col-md-12">
                <div class="col-md-6">
                  <label>Por que ? </label>
                 </div>
          <div class="col-md-6">
               <asp:TextBox ID="PorqueRecomienda1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PorqueRecomienda2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="PorqueRecomienda3" runat="server"></asp:TextBox>
 </div>
                     </div>
               
        </form>

    </div>
    
    
</asp:Content>
