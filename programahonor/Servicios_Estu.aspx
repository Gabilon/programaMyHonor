<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Estudiantes.Master" CodeBehind="Servicios_Estu.aspx.vb" Inherits="programahonor.Servicios_Estu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
        <link href="Content/stylesheet.css" rel="stylesheet" />
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!--<img src="http://www.uprb.edu/actividades/UPRB-portal-demo/IMAGES/HEADBANNER/HEADER-BANNER-FW_r2_c2.jpg" class="img-responsive" alt="Responsive image" id = "pic">-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <h1 style="text-align: center">Servicios</h1>
        <div class="container-fluid">
            <ul class="nav nav-pills nav-stacked col-md-2">
                <li class="active"><a href="#tab_a" data-toggle="pill">Componentes par el Estudiante</a></li>
                <li><a href="#tab_b" data-toggle="pill">Beneficios para el Estudiante</a></li>
                <li><a href="#tab_c" data-toggle="pill">Requisitos de admisión y selección de estudiantes</a></li>
                <li><a href="#tab_d" data-toggle="pill">Retención de Estudiantes y "Status" Probatorio</a></li>
                <li><a href="#tab_e" data-toggle="pill">Requisitos para otorgar el Certificado</a></li>

            </ul>
            <div class="tab-content col-md-10">
                <div class="tab-pane fade in active" id="tab_a">
                    <h2>Componentes Académicos del Programa</h2>
                    <h4>El Programa de Honor ofrece unas secciones especiales de varios cursos para los estudiantes del programa.</h4>
                    <h3>1.  Cursos Equivalentes</h3>
                    <p>
                        Estos cursos son iguales en título y objetivos a los cursos regulares descritos oficialmente. Sin embargo, serán diferentes en la forma y orden de exposición, en amplitud y profundidad de los temas a discutirse, así como en la metodología que habrá de usarse.
                        <br>
                        <br>
                        El contenido de los mismos será modificado de manera que un 80% coincidirá con el de los cursos regulares y el 20% restante será el contenido modificado para convertirlo en un curso de Honor.
                        <br>
                        <br>
                        La valoración de créditos de estos cursos permanecerá inalterada. Las secciones separadas para los cursos equivalentes a ser dictadas a estudiantes del Programa, tendrán una cabida máxima igual a la mitad de la capacidad máxima definida para los cursos regulares a que corresponden; y en ningún caso superior a dieciocho estudiantes.
                        <br>
                        <br>
                    </p>

                    <h3>2. Cursos Especiales y/o Interdisciplinarios</h3>
                    <p>
                        Esta categoría incluye cursos que son de nueva creación. La planificación, creación y aprobación de estos cursos debe someterse y agilizarse durante el transcurso del semestre anterior al cual se ofrecerá. El objetivo de los mismos es permitirle al estudiante obtener un conocimiento más profundo y completo de la temática estudiada.
                        <br>
                        <br>
                        Éstos, a su vez, podrán ser de dos tipos: estudio independiente y seminarios de investigación. Estos cursos no duplican los objetivos o contenidos de los cursos regulares de la Institución. Los temas de los seminarios y de los estudios independientes podrán variar cada semestre y serán escogidos con el cuidado de no duplicar el contenido de cursos regulares. Los estudiantes podrán tomar y recibir crédito por más de un seminario o estudio independiente.
                        <br>
                        <br>
                    </p>
                    <h4>a. Estudio Independiente*</h4>
                    <p>
                        El estudio independiente permitirá una relación estrecha entre el estudiante y el profesor. De esta forma el profesor estará en posición de guiar al estudiante hacia la adquisición de conocimientos y de cualidades esenciales al quehacer intelectual y académico. El profesor ayudará al estudiante en la comprensión de temas que se investigan y prestará atención al desarrollo de las destrezas de análisis crítico y razonamiento conducente para lograr que el estudiante se exprese con la claridad y el rigor necesario.
                        <br>
                        <br>
                        El estudiante deberá analizar críticamente, bajo la dirección del tutor, un tema específico utilizando para ello una bibliografía amplia. El curso tendrá un valor de uno a tres créditos y será requisito mínimo de una y media hora de contacto semanal. La hora y el día de la reunión será acordada por el estudiante y el tutor. Los grupos a formarse no excederá el número de cinco (5) estudiantes.
                        <br>
                        <br>
                        Luego de revisar el plan, el/la Director(a) del Programa se comunicará con el profesor a través del director del departamento correspondiente. El profesor encargado del estudio independiente redactará el plan del curso.
                        <br>
                        <br>
                        El estudiante presentará los resultados del estudio independiente ante el Consejo Directivo.
                        <br>
                        <br>
                        * El estudio independiente aún no está activo en el PEH del CUB.
                        <br>
                        <br>
                    </p>
                    <h4>b. Seminario de Investigación</h4>
                    <p>
                        El seminario de investigación permitirá estudiar a profundidad un tema de interés y redactar un informe del proceso y los hallazgos de su investigación. El trabajo se realizará bajo la dirección del profesor y con la colaboración de un bibliotecario.
                        <br>
                        <br>
                        Se dará importancia a la metodología de la investigación, la claridad y el rigor de pensamiento y presición en la expresión. Se fomentará el enfoque interdisciplinario. El estudiante hará una presentación oral de los puntos contenidos en su trabajo de investigación ante el Consejo Directivo del Programa.
                        <br>
                        <br>
                        El profesor pasará juicio sobre la metodología, aplicación, originalidad y resultados del trabajo asignando una calificación de la escala A a F. Este curso tendrá un valor de tres (3) créditos y aceptará un máximo de diez (10) estudiantes.
                        <br>
                        <br>
                    </p>

                    <h4>c. Metodología Educativa y Estrategias Institucionales a Utilizarse para lograr los Objetivos de los Cursos</h4>
                    <p>
                        1. Conferencias y discusiones en el salón de clases
                        <br>
                        <br>
                        2. Uso de programas educativos innovadores, tales como los computarizados y los audiovisuales
                        <br>
                        <br>
                        3. Proyectos de investigación y trabajos creativos
                        <br>
                        <br>
                        4. Redacción de informes
                        <br>
                        <br>
                        5. Exámenes escritos parciales y finales
                        <br>
                        <br>
                        6. Exámenes orales
                        <br>
                        <br>
                        7. Conferencias y otras actividades a ofrecerse por invitados especiales
                        <br>
                        <br>
                        8. Viajes de observación y estudio
                        <br>
                        <br>
                        9. Actividades co-curriculares
                        <br>
                        <br>
                    </p>
                </div>

                <div class="tab-pane fade" id="tab_b">
                    <h2>Beneficios para el estudiante</h2>
                    <h4>Los estudiantes del Programa se beneficiarán de consejería académica a tono con sus habilidades especiales, destrezas y necesidades de clases no tradicionales, acceso a material restringido y facilidades físicas exclusivas de la Biblioteca, prematrícula, matrícula adelantada, acceso a computadoras para la preparación de monografías e informes de investigación relacionados con el Programa y participación en simposios y congresos científicos.
                        <br>
                        <br>
                        Tendrán la experiencia de preparar y someter para la publicación ensayos, artículos científicos y obras de creación literaria en la revista de su Colegio. Todos los años se adjudicará reconocimiento especial a los estudiantes más destacados del Programa de Estudios de Honor.
                        <br>
                        <br>
                        Con el fin de lograr y mantener el interés y entusiasmo de los estudiantes del Programa, se propone ofrecer los siguientes beneficios o incentivos:<br>
                        <br>
                    </h4>
                    <p>
                        <ol>
                            <li>Una sala de reuniones para que los estudiantes puedan compartir académica y socialmente
                                <br>
                                <br>
                            </li>

                            <li>El mismo acceso que tiene la facultad a los anaqueles de la biblioteca y el mismo beneficio de préstamo
                                <br>
                                <br>
                            </li>

                            <li>Prioridad en la utilización de las salas de estudio de la biblioteca
                                <br>
                                <br>
                            </li>

                            <li>Acceso prioritario a boletos para las actividades culturales
                                <br>
                                <br>
                            </li>

                            <li>Acceso al uso de computadoras existentes en la Sala de Reuniones del Programa para la preparación de monografías, propuestas y otros trabajos escritos
                                <br>
                                <br>
                            </li>

                            <li>Recibir al completar los requisitos, un certificado que acredite el cumplimiento con los requisitos del Programa.
                                <br>
                                <br>
                            </li>

                            <li>Matrícula adelantada
                                <br>
                                <br>
                            </li>

                            <li>Participación en la revista académica del Colegio de una Síntesis del Programa de Honor o una reseña sobre el mismo
                                <br>
                                <br>
                            </li>

                            <li>Todos los estudiantes que lo soliciten pueden recibir cartas de recomendación
                                <br>
                                <br>
                            </li>

                            <li>Acceso a consejería personal y de carreras grupal e individualilzada
                                <br>
                                <br>
                            </li>

                            <li>Orientación respecto a intercambios estudiantiles, experiencias de verano, becas y otras actividades académicas<br>
                                <br>
                            </li>

                            <li>Otros beneficios se podrán identificar posteriormente
                                <br>
                                <br>
                            </li>
                        </ol>
                    </p>
                </div>

                <div class="tab-pane fade" id="tab_c">
                    <h3>Requisitos de Admisión y selección de Estudiantes</h3>
                    <br>
                    <h4>Requisitos de Admisión</h4>
                    <p>
                        El Programa de Estudios de Honor ofrecerá a los estudiantes la oportunidad de un desarrollo académico de excelencia.
                        <br>
                        <br>
                        El ingreso al Programa es voluntario. Se espera que además de un expediente académico sobresaliente (3.40 o más), el estudiante posea las siguientes características: interés, compromiso, liderazgo y confianza en sí mismo. El estudiante completará la solicitud de ingreso al Programa.
                    </p>
                    <br>

                    <h4>Selección de Estudiantes</h4>

                    <p>
                        La solicitud pasará por un proceso de evaluación. Los candidatos serán citados a entrevista con el Consejo Directivo.
                        <br>
                        <br>
                        El Director del Programa notifica por escrito la decisión que tomó el Consejo Directivo. Los estudiantes denegados podrán solicitar admisión nuevamente una vez sean estudiantes regulares de la Universidad y cumplan con los requisitos:
                    </p>
                    <br>

                    <ol>
                        <li>Serán elegibles los estudiantes que aspiren a un Grado Asociado o Bachillerato en los Colegios</li>
                        <br>
                        <li>Para los estudiantes de primer año se fijará un índice de ingreso que sea del 5-10% superior al IGS de los estudiantes admitidos en el año académico anterior</li>
                        <br>
                        <li>Los estudiantes regulares con un promedio general de 3.40 o más podrán solicitar al Programa si cumplen con los requisitos de admisión de los estudiantes de nuevo ingreso, sin considerar su IGS</li>
                        <br>
                        <li>Todos los estudiantes deben llenar una solicitud de ingreso al Programa</li>
                        <br>
                        <li>Tres cartas de recomendación de, por lo menos, un profesor universitario o dos maestros de la escuela superior de su procedencia</li>
                        <br>
                        <li>Asistir a una entrevista con el Director y miembros del Consejo Directivo.</li>
                        <br>
                    </ol>
                </div>

                <div class="tab-pane fade" id="tab_d">
                    <h3>Retención de Estudiantes y "Status" Probatorio</h3>
                    <br>
                    <h4>Retención de Estudiantes</h4>
                    <p>
                        Todos los estudiantes del Programa deberán mantener un índice general mínimo de 3.33 y no menor de 3.0 en una escala de 4.0.<br>
                        <br>
                        La asistencia a las reuniones y actividades co-curriculares es requisito del Programa. Se podrá separar al estudiante del Programa si no participa de las mismas<br>
                        <br>
                    </p>
                    <h4>"Status" Probatorio</h4>
                    <p>
                        Una vez en el Programa, si el estudiante obtiene un índice general que no alcanza el índice de retención se provee "status" probatorio que ubica al estudiante con un indice general entre 3.0 y 3.3.<br>
                        <br>
                        Durante este período el estudiante podrá demostrar que sí es capaz de alcanzar el índice de retención sin que esto afecte su membresía activa en el Programa. Si el estudiante no supera o alcanza el índice de retención, cesa la participación del mismo como miembro activo del Programa.
                    </p>
                </div>

                <div class="tab-pane fade" id="tab_e">
                    <h3>Requisitos para otorgar el Certificado</h3>
                    <br>
                    <h4>Requisitos Certificado</h4>
                    <br>
                    <p>Si es estudiante de traslado debe aprobar un mínimo de diez (10) créditos del Programa de Traslado. Además, deberá tener participación activa en las actividades co-curriculares, cumplir con una actividad de servicio a la comunidad, presentar su proyecto de investigación y tener dominio básico de las computadoras.</p>
                    <br>

                    <h4>Consideraciones académicas:  </h4>
                    <ul>
                        <li>Se recomienda entre 12 a 15 créditos en cursos equivalentes</li>
                        <br>
                        <li>2-4 cursos equivalentes, 6-12 créditos</li>
                        <br>
                        <li>1 Seminario o curso de investigación, 1-3 créditos</li>
                        <br>
                        <li>1 Estudio Independiente o curso electivo recomendado por el Programa, 3 créditos</li>
                        <br>
                    </ul>

                    <h4>Consideraciones de Servicios y Liderazgo: </h4>

                    <ul>
                        <li>1-2 semestres de Servicio a la Comunidad</li>
                        <br>
                        <li>Asistencia a Actividades Extracurriculares</li>
                    </ul>

                </div>

            </div>
            <!-- tab content -->
        </div>
    </div>
</asp:Content>
