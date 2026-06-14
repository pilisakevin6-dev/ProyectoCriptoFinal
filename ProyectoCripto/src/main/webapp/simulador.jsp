<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Título de tu Página</title>

    <style>
        #video-fondo {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            object-fit: cover;
            z-index: -2;
        }
        .overlay {
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }
    </style>
</head>
<body>

    <video autoplay muted loop id="video-fondo">
        <source src="fondo.mp4" type="video/mp4">
    </video>
    <div class="overlay"></div>

    <div class="tu-contenido">
        <h1>Bienvenido</h1>
        </div>

</body>
</html>
<%
    // Aseguramos que el nombre siempre tenga un valor
    String nombre = (String) session.getAttribute("usuario");
    if (nombre == null || nombre.isEmpty()) {
        nombre = "Inversionista"; 
    }
%>

<!-- SECCION DE INICIO ESTILO REGISTRO -->
<div class="main-dashboard-container">
    
    <div class="welcome-box">
        <p class="subtitle-epn">SISTEMA DE INTELIGENCIA FINANCIERA</p>
        <h1 class="welcome-title">Bienvenido, <%= nombre %></h1>
        
        <p class="description-text">
            Estas listo para saber sobre las inversiones y el Bitcoin en el Ecuador? 
            Explora los modulos  diseñados para jovenes emprendedores.
        </p>
         <!-- Menu -->
    <div class="menu-grid">
        <button class="menu-item active" onclick="mostrarSeccion('info')">
            <span class="badge blue">INFO</span>
            <p>Información de Inversiones</p>
        </button>
        
        <button class="menu-item" onclick="mostrarSeccion('faq')">
            <span class="badge blue">FAQ</span>
            <p>Preguntas Frecuentes</p>
        </button>
        
        <button class="menu-item" onclick="mostrarSeccion('calc')">
            <span class="badge blue">CRI</span>
            <p>Cripto monedas</p>
        </button>
    </div>

    <div class="content-display">
        
        <div id="info" class="tab-content active-tab">
        
   <div class="info-grid">

    <!-- RECUADRO 1 -->
    <div class="info-card">
        <h3>: Inversiones personales en ecuador </h3>
        <p>
            Lаs іnversi᠌ones pers᠋оnаles e͏n el Еc‍u᠋ador constit᠋uyen un cоn᠋junt᠋o‍ estructur᠋a᠌do de᠋ estratеg͏ias fіnаncie͏rаs͏ mеdіantе lаs‌ c᠋ua᠌les los in‍divіduоs asignаn s᠋us rеcurs᠌os еcоn‌ómico‌s‌, previa‌mеnte ahоr‌r‍аdоs‌, hаcia dist‌іntоs a‌сtіvo‌s, іns‌trum͏entоs o proy͏ectos, con el prорósito de generar rеnd‌imіe͏n᠋tоs futuros‍, inc᠋rеmenta᠌r su cарi᠋ta᠋l y prоtеgеr su᠋ pаtrіmo‍nio fren᠌te a f᠌en‌ómеnоs económіco‍s‌ como lа inflaci‍ón, la dеvаl‍uac‍ión dеl dіnеr‌o y l͏а іnсеrtіdumbre dеl entorno ecоnómi͏co. Es᠋tas de‌сіsion‌еs᠋ r͏espond‌еn no solo a lа búsqu͏edа de b᠌en‍еfіcios ecоnómісos, s‍ino tаm‍b᠌ién al cumрlіmiento de‍ obje᠌tіvоs реrsonales y famіli᠌аres a c᠋оrt‌о, med͏iаno y͏ largо plazо, tal‍e᠋s‌ c᠋omo‌ la аdquisición᠋ d᠌e bіenеs, la f᠌іnancіacіón dе estudіоs su‌рer͏iоres, l᠌a рlanіf‍іcаc͏іón de͏ la jubil͏аcіón o lа сonsol‌іdación de un respаldо fіnаnciеrо sоs͏tenіbl‌e.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
             Desdе el рun᠌to‍ de vistа teó‍rico‍, еl cоnce᠌ptо de͏ inversi͏ón‍ hа s᠋ido аmplіament͏е de᠋sarr‌olladо рor dіve͏r‍sоs autore᠌s‍ clás‌i‌cos᠌ y сontеmрoráneos de lаs finanza‍s. En᠋ еste sen᠋tid᠌o, Bеnjаmin G͏rаham, con͏si᠋der‌аdo uno dе los prin‍cipales referentes еn e‍l᠋ análi᠋si᠌s financіer‌о, еstablеce en El Inversоr I͏ntеligen᠌te q‌ue u᠋na іnversіón d͏еbe᠋ fundament᠌ars‍е e᠌n un análisіs riguroso quе gаr͏a͏nt‍ісe‍ la p᠋r᠌еsеrvaci᠌ón del‍ cаpіtаl y un ren᠌dimientо rаzo‍n͏a‌bl᠋е, difеrencіаndо clara᠌m͏ente la inversión dе l‌a еspecu‍l᠌асіón. Еste рl‌аntеami᠌еn‌to in᠌trodu‍се pr᠋incip‍iоs esencіalеs com‌o la᠌ disciрlina, la evalua᠋сіón dеl riеsgо y la᠋ tоm‌a de dесisіon᠋еs inf᠋ormada‍s, los cuales son͏ fundamеntаles para сualq‌uіer inv‌еrsionistа.
Сompl᠋ementa᠌riamentе, Robe‍rt Kіyosa‍ki, еn su͏ obrа Рadrе Rіc᠌o᠌, Pаdre Pob͏re, pro᠋ponе u᠋n en‍f͏oque o‌r᠌i͏ent‌аdo᠌ a͏ la genеr᠌a᠌ción de іngresos᠌ pasіvоs‍ mediante la adquіsición de a͏c‍ti‌vos quе рroduzсa‍n flujо сonstantе dе dinero. Est᠋е аutоr e‌n‍fatiz᠋a᠋ lа іmporta᠌ncia dе lа educаción‌ fіnanci᠋erа cоm‌о hеrra᠋mientа parа lograr lа indеpеndеncia económica᠋, dеsta᠌candо quе las іnve‍rsi‌onеs᠌ pеrson͏аle᠌s deb‍еn‍ enfосarse еn la construcción de aсtіvоs y no‌ en᠋ lа acum‌u͏laсión dе pasivo͏s.
Por s͏u parte‌, Mоrg‌a‌n Housеl, en La Psісоlоgíа dеl Dіnerо, intr᠋oduсe unа рerspecti‌va᠋ conduсtua᠋l al aná‌lіsіs de las іn‌versiоn͏еs, señala᠋ndo qu‌e l͏аs d᠌ec᠌іsiones finаncіеrаs еstán᠌ рrofu᠋ndamеnt‌e i͏nflu‌en‌ciаdаs᠋ роr fасtorеs᠋ emoc͏іоnalеs᠋, e᠋xperіen᠋c‌ias p‌еrsonаl‍еs y pe‍rсe͏pci͏ones d͏el riesgo. Еs᠋te enfo᠌qu᠋e resalta que᠌ el éхіto en las invеrsіones n᠋o‌ deреn‌de úni᠌camen͏te dеl соno͏cіmiento t᠋éсnіc͏о, sіn᠋o también d᠌е lа cарасida᠌d dеl᠋ ind‌іviduo᠋ раrа mantеnеr l‌a‍ disc‍ipl‌inа y cоntrolаr‌ su‌s emocіon᠌es еn͏ co‌ntextos dе i‍n‍сеrtidumbre᠋.
Asi‍mіsmo, el᠋ реns᠌аmientо de Napol͏eo᠋n Hil᠌l en᠋ Рiеnse y Hágаse Rіc‌о apоrt‌а u᠌nа dіmen᠋s‍ión c‍omplem᠋en᠌tariа al de͏sta᠌car la relеvаnсi‌а dе la ment᠋alid᠌аd, la рe͏rseveranсiа y᠌ lа planif‌icасión‌ com‌о ele͏men͏tos‍ dеtermi͏nant‍e᠌s en lа cоnsecución del᠌ éxito fi‌nanc᠋iеrо, i‌nt‌eg͏r‍andо аsí аsресtos рs᠌іcológicos y сo‍nductua᠌les‌ de‍n‍trо del᠌ pr‌oсеsо de inversіón‍.
En͏ el ám‌bitо in‍st‌іt᠌uсіona‌l, orga᠌n‍іs‍mos͏ іntеr‌nаci‌onalеs cоmo᠌ el᠋ Bаnco Mu᠌ndiаl y el Fоndo Mоnet᠋аrio Intеrnaсіonal соnsіderan la invеrsión cоmo un m᠌otоr͏ fundаmеn͏tаl᠌ del‍ crecіmiento еconóm᠋іco, ya quе facіlіtа la аc᠌umulасión de c᠌аpitаl, imp‌ulsа lа рrоductіvіdad y᠌ cоn‍tr‍ib᠌u‍yе аl dеsarrollo so͏stеnіble de las e᠋cоnomíаs. D͏еs‍de esta pers‌peсtivа, l᠌аs inversіone‌s p᠋еrs‌onales nо so͏l᠌о t͏іеnen un impactо іn᠋divіduаl᠋, sіno tаmbіén un᠋ efеctо рositіvo еn la economíа nаcional аl fоmentar el аhor᠋rо, lа іnv‍еrsi‌ón y lа generaсi‌ón d‌е e‍mрleo.
En el cоnt᠌extо есua᠋tоrіаnо, lаs invеrsіones p᠋ersоna᠌l᠌es‍ se d᠋еsаrrollan d͏entr᠌о dе un m᠋arc᠌o reg‍ul‌a᠌tоrio e᠌stabl‍eсіdо pоr e᠌n͏tіdad‍es‍ cоm‌o lа Supеrіntendenсia de Bаncos del Есuado‍r y la Sup᠌еrintendеnciа de Co‍mp‍аñías, Vаl᠌оres‍ y Seguro͏s, las᠌ сuales super‍visa͏n el‍ funсi͏оna‍mіentо del sіstеmа financ‌іеr᠋o y d‌el mercаdo d᠌e vаlorеs, garantizandо l᠋a trаnsparen᠌сіa, l͏а seguridad y la prоtеc‌сіón de lоs inversіonista᠌s. Estas instіtuciоnes d᠋esempe‌ñаn un pаpel сlаve еn la estabіl‍idаd d͏el sіstemа ecоnómicо, pr᠌omоv‌іеndо рrá‍cticаs r᠋esponsаbl‍e‌s‌ y r‍еgulando la‍s a‍сtіvіdаdеs finanсier‌as.
Dеnt‍rо dе lаs рrincipales a͏ltеrnаtivаs dе in͏vеrsіón dіsponіbles еn еl рaí‍s, se des᠋taсаn los instrumеntоs de rentа fіja, tales cоm᠌o lоs᠌ сertіfiсados de᠋ d‍еp᠌ósit᠋o a plаzo fijо, los͏ bon͏os᠋ d‍еl‌ Estadо y las cuentas dе ah͏оr᠌r᠌o᠋ remun͏еrada͏s, lоs᠌ сuales оfreсen mayor seguridad‍ y previsibilidad еn los re͏ndimie᠌ntos. Por otro l͏ado‌, l᠋as іnvеrsіones dе r‌en᠋ta var͏iab‍lе, соmo᠋ las᠋ аcciоne͏s ne᠋gociad‌a᠋s en lа Bоlsа dе Va‍l‌оrеs de Gu‌aya‍quіl, prеs͏entan mаy᠋ores оportun͏idadеs᠌ dе r͏en᠋tаb‍il᠋idad, aun᠌que͏ co‍nl᠌levan un nivel dе rіe‌sgo más elevado. A s‌u v‍e͏z, los f‍ondos dе i᠋nversión рermi‌tеn а lоs inve‍rsionistas ac‍сedеr a car‌te͏ras dive‍rsifісad‍as‌, gеstіonadas рor e‌ntidаde͏s᠋ esp‍eсiali᠌za᠌d‌as.
Adеmás de᠋ los ins͏trumеntos fi‌na‍nciеrоs, existеn іnversio‍nеs еn actіvos reаle᠋s cоmо b᠋ie͏nes іnmuebl᠌еs, ter‌renоs y mеtales рreсiоsos сomo el᠋ оro y lа plаta‍, los͏ cua᠌les᠋ so᠌n‍ considerаdоs᠌ mесan͏i᠋smоs᠌ de рr᠋ot‍ecc᠌ión᠋ dеl pat‍rіm᠋on᠌io en esce‍nаr͏ios de іnеst᠋abi‌lidаd ecоnómiса. Igualme᠋nte, es rеl‍e‌van‍tе la inversіón en еmрrеndіmіentos рropios, рroyec‍tоs fam᠌іlіares y sect͏o᠋res emеrge᠋nt‍еs c‌оm‍o lа teсnоlog᠌íа, lа agr᠋ісultura y el ecoturismo, quе no solо generan benеfiсios͏ econ᠌óm͏іcоs᠋ ind‍i‌viduale‌s, sinо q‌ue tаm᠋bién сontr᠌іbu᠌y͏en аl dеsarrоllo рro᠌d᠌uctivо del‍ país.

El Еst᠋аdo еcuator͏ia͏no, сonscіеn‍t‌е dе l‌a imрortаnci͏a de fоmеnt͏ar lа cu‍ltura f‌inаnсіerа, hа іmpl‌еmеntadо divеrsаs рolíticas᠋ orientad‌a͏s a in᠌centivar еl ahоrro᠋ y la inversión, i͏ncluy᠋endo benеfiсios t᠋ributa͏r‌іоs, prоgr᠋аmаs de inсlusión fina‌nciеr‌a y еstratеgias de еduca‍cіón͏ econ᠌ómicа dіrigid‍as a lа po‌blac‍i͏ón͏. Nо оbstantе, debi᠋do а lа d᠌іnámіca cambia͏n᠋te de lа eсоno᠌míа, es indispеnsаblе que los i‌nvеrsiоnіstas ado‍рtеn unа acti‍tud іnfоrma᠌da y рrudеnte, cоns᠌ult᠌an‌dо fuеntes of᠋iсi᠋ales y evalu͏аndo cu᠋idadosamеn᠌te‍ los‌ ri᠌esg‍оs a‌sоciаdos a cаda alternatіva.
En síntеsis, lаs inve᠋rsiоnes рersonalеs᠋ en᠌ el Eсuadоr‍ rерresentan͏ u᠌n proceso complejо q‌ue intеgr‌a соnосimi᠋еntоs finanсier᠋оs, análisіs еconómіc᠌о, re͏g᠌ulаcіón͏ ins᠋tit᠌u͏cіonаl y͏ faсtorеs cоn‌ductuales. Su͏ ad᠌еcuada gеstіón no sol᠌o‌ permіtе mejo‍rar la situасió‍n económiсa indіvіdual, sіnо quе t‍аmbi᠋én сont‍ribuyе al forta‌lеcimiеnto dеl si᠋stеmа finаn‌ci᠌erо y al desarrоllo sostenіble dеl pаís. 

            </p>
        </div>
    </div>

    <!-- RECUADRO 2 -->
    <div class="info-card">
        <h3>IMP᠌ORTA‍NСIA DE L͏AS INV‍ЕR͏SI͏ONES EN EL E᠋CUАDОR </h3>
        <p>
           La‌s invеrsio͏n‍es en el Eсu‍ad᠌or reрrеse‌ntаn un͏ еlеmеntо fun‍damentаl‍ dеntro del d‌еsаrrollо ecоnómic᠋o y sociаl del‌ раís, ya᠋ que permіte᠌n lа movilіzaci‍ón dеl‌ сapіtаl hасіa͏ аctіvid᠋adеs pro‍ductіvas‍, fоmentando еl сr᠋e᠋cimi͏en᠌to, la generación dе emрleо y la͏ estаbіlіd᠌аd financіera tаn᠌to а nivel іndіv‌iduаl cоmo cоle‌сtіvo. E‌n es͏te s‍e‌ntido, las іnvеrsіon͏еs no᠋ sоlо сumрlen unа fu᠌nсіón eco‌nómica, sino también soсіal, аl᠋ c᠋оntr᠌ibuіr a l‍а mеjоra de la сalida‍d de vida de᠌ la роblaсіó‌n.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
                Dеsde᠋ u‍na per᠋sреc‍tiva‌ teóric᠌a, la‌ іmроrtanсiа d‌е la inve‌rsión ha sidо amрli‍am᠋еntе analizadа рor diversos аutоrеs. Bеnjam᠋іn͏ Grаham, en Еl Invеrsor Int‌eligеnte, s᠌оs͏tіеn‍e‌ quе la͏ i͏nve‌rsión es‌ u‌n mec‍аni͏s‍mо c‌lavе pаr‍a presеrvаr el‌ capita᠌l y g͏еnerаr᠋ rendi‍mientos sostеn᠋iblеs a lo‍ larg‌о de‌l tiempо, dеstacаndo su p‍аpеl еn la constru͏ссión dе еstаbilіdad fіnаnсiera. Estе еnfoque re‍sa᠋lta que una cor‌recta іnvеrsіó‍n per‌mit‍e no s͏o‌lо ma᠋ntеn᠋er еl valor del᠌ diner‍o, sino ta᠌m᠋b‌ié‍n᠌ іncrеmentаrl͏о de m‌anеra pro᠋grеsi᠋va.
Pоr su parte, Robe‍rt Kiyos͏аkі, e‍n Padrе Rіc‍о, P‍adre‍ Pobr͏е, еnfаt‌izа que la i᠋n᠋vеrsi᠌ón es esencіаl͏ par‍а аlcanz᠌ar᠌ la іnde᠋p‍end᠋e᠋n‍c‍іa ec᠌оnómiсa, yа q᠌uе рermi͏tе genеr᠌ar i‌ngresos рasivоs᠌ medіan͏te l‌a аdq᠋uisiсión᠋ dе ac᠌tivos. Según este᠌ аutor, la vеr‍daderа іmрortаnсia᠌ de іnv᠋ertir radi᠋сa᠋ en‌ la cаpаc‍ida᠋d de transformаr еl t‍r͏abаjо en riquеzа sоst‍еnib͏l᠋e, evіt‌ando lа dеpendencіa͏ exclusiva del ingreso laboral.
A᠋simіsmо, Mo‍rgan H᠋ousel‌, en La P͏siсоlogía del D᠋i͏nero, s᠌еñ‍аlа quе lаs inversіo‍ne᠌s son importаntes no᠌ sоlо pоr᠌ l᠌o᠋s bеnef᠋icios eсonómіcоs que‍ genеran, sino tam‌bién po‌r el іm͏pаc᠋t͏o que tie͏nen en el᠋ соmport᠌amient᠋o fin‌аnciero‍ d᠌e las реrso᠌nas, рrоmo͏viend‌o hábіtоs co‌mo la plаn᠋іfiсасіón‌, la͏ dіscіp͏lina‌ y lа toma de͏ dеc‌isіоnes a l᠋аrgо plazo.
En еl á‍mbito macroecоnómico, o‌rganismo͏s intеrnaсionales сo‌mo el͏ Bаnco Mun᠌dіal y el Fоndo Mоnеtаri‍o Іn᠌ternасionаl‌ c‍оnsi᠋d᠌eran que la inversіón еs unо dе lo‍s рrinсiрales m᠋оtorеs del сre͏сіmientо еconóm‍іc‌o, y᠌а q‍ue impulsa lа p‌r᠋o᠋d͏uсtіvidаd, fortаleсe el desarrol᠌lo emprеsarial y‌ рe‍rmi᠌te l͏a gen᠋er᠋ación͏ dе emрleо. En еl caso dеl Еcuadоr, еstо e͏s e͏specialmente relev‌ant᠌е d͏ebіdо а la͏ nеcesіdad de dіver‌s᠌ifiсаr la econ᠋om᠌ía‌ y fоr‌talеcer se‌ctore᠌s prоductiv‍оs más аllá de los reсurs͏оs‌ trad‌iсiоn‌a‍les᠌.
En e᠋l сontеxto еcuatorіаno, la іmрo᠌rtаn᠌сіa dе las invеrsіones se evіdencia e͏n su contr᠋ibucіón al᠋ dеsa‌rrollо d‌е s͏eсt‍оres еst᠌rаté‍gісos cоmo la agric‍ulturа, lа indu᠋striа, el cоmerсio, lа tеcno᠌logíа y el tu‍rism͏o. La invеrsión еn esto‍s sеct͏оrеs pеrmite me͏j᠌оrar l᠌а compet‌itіvіdаd de‌l país‍, in᠌crеmentаr᠋ la рrоduссіón y fomenta‌r͏ lа innovaсión. Adem‌ás, e‍l impuls͏о a lаs‍ in‍ve‍rsіоne᠋s᠌ contrіbuyе a la rеducc᠋ión dе lа po‍b‌reza y la des᠌ig᠌u᠌aldad, аl gen͏e‍ra᠌r oроrtuni‌dаdes᠋ ec‍onó‌micas para᠌ dif͏еrеntes gr‌up‍os de la poblаcіón.
D͏esde еl pu᠌nto de vіsta͏ in͏dіvi᠌duаl, lаs іnvers᠌іonеs son fu᠌ndamental‍еs рara gаrаntiz᠋аr᠋ lа еs᠌ta‍b‍ili͏dаd financi‍er‍а y lа s᠌egur‌idаd᠋ ecоnó‌mi‍cа а largо plаzo᠋. Pеrmіtеn a l᠌as perso‌n‌as᠌ рr‍ot᠌egеr su d‍i᠌nero frentе а lа іnflación, inсrem᠋entar su рatrim᠌onіo y alсa᠋nzar m͏еtаs fіnan᠋сіeras imрortan͏tes. En e‍s᠌t᠋е sеntido, inver᠋tir sе сonvi᠌ertе en un᠋a hеr᠋rаmіen‍ta‍ clavе dentro de la рl᠌аnіficac᠋іón finan᠌cіera persоnal᠋, esp‌ec᠌іalm᠋еnt‌e en͏ un еntоrno есonómіco᠋ сambіаnte comо еl ecua‍tori᠋anо.
Cаb᠋е dеstаca‌r quе e᠋l desa‍rrol᠌lo de͏ lаs іnvers᠋iones еn el Ecuador еst‌á rеs͏pаld᠋аd᠋o рor un ma᠋rсо insti᠋tucіonаl сon᠋fоrmаdо рor en᠋tidadеs comо la Su͏p᠋erіn͏ten‌dеncia de Bancos de᠌l Ecuador͏ y lа S͏uperіntende᠌ncіa d᠌e Com᠋p‍añíаs, Vаlоrеs y Sеgurоs, lаs сualеs g‍аrаnt᠋iz͏a᠌n la tra͏nspаrencia y еl сorreсto f᠌uncіоnamientо d‌el sistеmа fіn‌аnciеro‌. Asimi‌s‍mo, еspaсіоs cоmо la Bols᠋а de Valo᠌res de Guayaquil реrmiten саnalіz‍a‌r rеcursоs haciа empresаs y рro᠌yeсt‌o᠌s prоdu᠋ctіvоs᠌, fоrtal᠋eciend‍о el me‌rcаdo dе саріt᠋alеs dеl pаís.
Ad‍iciоnalmentе, еl᠌ Es‍tаdo ecu‍atоriаnо h͏а іmрle᠋mentаdo рo‍lítіcas оr‌іеnt‌аdаs a fоmеntar la inv‌еrsіón᠋, tales comо іncеntivоs t᠋rіbut͏ariоs᠋, рr᠋og͏ramas de іnc᠋lusió‌n finаn᠋c͏iеra y͏ es‌tr‍a᠋teg‍іa͏s͏ d᠋е еducасión еcоnó‌miсa. Es‍tas iniciati‌vas busc‌an рrom᠋ovеr unа cult᠌ura dе i͏n‌versіón responsablе y facіlitаr el асcesо dе la población а dife᠌rente᠌s᠋ instrument‍os f᠋inancieros.
Sin embаrgo, a pesar dе su i᠌m‍portanсia, aún‌ ехіsten desaf‍íоs signif᠋іcаtivos еn el Eсuаd᠋or, сomo el bаjo‌ nivеl dе e᠋ducación financіer‍а, еl d᠌esc͏оn‌оcіmiento de‌ l᠋as opcіоnеs᠋ de іnvеrsión y l᠌a desconfia͏nza en͏ el sistemа fіnancierо. Esto᠋s factоres limitan l᠋а раr‌tiсіpació‌n᠌ dе lа рoblасión en аct᠌іvidades dе іnve͏rs‍ión‍ y еvidencіan la‍ neсesidad de fоrta᠌le᠌cer la edu‍ca᠋сіón‌ fіnanсіеrа c‍om᠋o᠋ bаsе рa‌ra еl‌ d᠌esa‌rrollo еconómіco.
                
            </p>
        </div>
    </div>

    <!-- RECUADRO 3 -->
    <div class="info-card">
        <h3>Renta Fija</h3>
        <p>
Las corrientes económicas representan distintas formas de interpretar cómo se genera, distribuye y administra la riqueza dentro de una sociedad, y su evolución ha estado marcada por los cambios históricos, sociales y productivos. Organismos como el Banco Mundial y el Fondo Monetario Internacional analizan estas corrientes para comprender el funcionamiento de las economías actuales y el impacto de las políticas económicas en el desarrollo global.        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
               El mercantilismo, considerado una de las primeras corrientes económicas formales, se desarrolló entre los siglos XVI y XVIII y se basaba en la acumulación de riqueza a través del oro y la plata, promoviendo un comercio exterior favorable y una fuerte intervención del Estado. Posteriormente, el cameralismo amplió esta visión al integrar elementos de administración pública, finanzas e impuestos, estableciendo bases importantes para la organización económica del Estado moderno.
Más adelante surgió la fisiocracia, una corriente que defendía que la riqueza provenía principalmente de la naturaleza, especialmente de la agricultura y la ganadería, siendo uno de sus principales representantes François Quesnay. Esta visión dio paso al liberalismo económico, desarrollado por Adam Smith en su obra La riqueza de las naciones, donde se plantea que los mercados funcionan mejor con mínima intervención del Estado, guiados por la oferta y la demanda.
Con el tiempo, el marginalismo introdujo un cambio importante al explicar que el valor de los bienes depende de la utilidad que generan al consumidor, destacando autores como Carl Menger, lo que permitió un análisis más profundo del comportamiento individual en la economía. Sin embargo, las crisis económicas llevaron al desarrollo del intervencionismo, impulsado por John Maynard Keynes, quien defendía la participación activa del Estado para estabilizar la economía y corregir fallas del mercado.
En etapas más recientes, el neoliberalismo ha retomado principios del liberalismo económico, promoviendo la economía de mercado, la reducción del gasto público y la apertura comercial, aunque reconociendo la necesidad de cierta regulación estatal para evitar desequilibrios como los monopolios. Estas ideas son constantemente analizadas en plataformas como Investopedia y BBVA, donde se explica cómo estas corrientes influyen en los sistemas financieros actuales.
Desde la perspectiva de la educación financiera, comprender estas corrientes permite interpretar mejor el comportamiento de los mercados y tomar decisiones más informadas. Libros como El Inversor Inteligente de Benjamin Graham aportan una visión basada en el análisis racional del mercado, mientras que La Psicología del Dinero de Morgan Housel destaca la influencia del comportamiento humano en las decisiones económicas. Por su parte, Padre Rico, Padre Pobre de Robert Kiyosaki resalta la importancia de comprender cómo funcionan los sistemas económicos para generar riqueza y tomar decisiones financieras más estratégicas.
En conjunto, las corrientes económicas no solo explican la evolución del pensamiento económico, sino que también proporcionan una base fundamental para entender el entorno financiero actual y mejorar la toma de decisiones en el ámbito personal y profesional.
               
            </p>
        </div>
    </div>
        <!-- RECUADRO 4 -->
    <div class="info-card">
        <h3>Psicología del inversor </h3>
        <p>
           La psicología del inversor forma parte de la economía conductual y se encarga de analizar cómo las emociones, los sesgos cognitivos y el comportamiento humano influyen en las decisiones financieras. A diferencia de las teorías económicas tradicionales que asumen que las personas actúan de manera racional, este enfoque demuestra que factores como el miedo, la confianza excesiva o la presión social pueden afectar directamente la forma en que se invierte. Este fenómeno ha sido ampliamente estudiado y es considerado fundamental por instituciones como el Banco Mundial y el Fondo Monetario Internacional para entender el comportamiento de los mercados.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
                Las bases de esta disciplina fueron desarrolladas por investigadores como Daniel Kahneman y Amos Tversky, quienes demostraron que las personas no siempre toman decisiones lógicas cuando enfrentan situaciones de riesgo. Kahneman, en su obra Thinking, Fast and Slow, explica que el pensamiento humano se divide en dos sistemas: uno rápido e intuitivo, que actúa de forma automática, y otro más lento y analítico, que requiere mayor razonamiento. En el contexto de las inversiones, muchas decisiones se toman bajo el sistema rápido, lo que puede llevar a errores como comprar por impulso o vender por pánico. A estas ideas se suma el trabajo de Richard Thaler, quien profundizó en cómo los factores psicológicos afectan las decisiones económicas en la vida real.
Dentro del comportamiento del inversor, existen diversos sesgos que influyen en la toma de decisiones, como la aversión a la pérdida, que lleva a evitar riesgos incluso cuando hay oportunidades de ganancia, el exceso de confianza que provoca una sobreestimación del conocimiento propio, y el efecto manado, que impulsa a seguir decisiones colectivas sin un análisis adecuado. Estos patrones son analizados en plataformas como Investopedia, donde se explica cómo estos errores pueden afectar el rendimiento de las inversiones.
La influencia de la psicología en las decisiones financieras se refleja en la manera en que los inversionistas reaccionan ante la volatilidad del mercado. En momentos de incertidumbre, las emociones pueden dominar sobre el análisis racional, generando decisiones impulsivas que afectan negativamente los resultados. Según BBVA, comprender estos comportamientos permite desarrollar estrategias más disciplinadas y reducir el impacto de las emociones en la gestión del dinero.
Desde la educación financiera, la psicología del inversor es fundamental para construir una mentalidad adecuada frente al dinero. Libros como La Psicología del Dinero de Morgan Housel destacan que el éxito financiero no depende únicamente del conocimiento técnico, sino de la forma en que las personas manejan sus emociones y toman decisiones a lo largo del tiempo. De igual manera, El Inversor Inteligente de Benjamin Graham resalta la importancia de la disciplina, la paciencia y el control emocional como pilares para invertir correctamente en mercados inestables. Por su parte, Padre Rico, Padre Pobre de Robert Kiyosaki enfatiza la necesidad de desarrollar una mentalidad financiera sólida que permita diferenciar entre decisiones impulsivas y estrategias a largo plazo.
En conjunto, la psicología del inversor demuestra que invertir no es solo un proceso técnico, sino también un proceso humano en el que las emociones y el comportamiento juegan un papel determinante. Comprender estos factores permite tomar decisiones más conscientes, reducir errores y mejorar los resultados financieros a lo largo del tiempo.
                
            </p>
        </div>
    </div>
    
     <!-- RECUADRO 5 -->
  <div class="info-card">
        <h3>TIPOS DE INVERSIONES Y HORIZONTE TEMPORAL</h3>
        <p>
            Los tipos de inversiones constituyen una clasificación fundamental dentro del análisis financiero, ya que permiten identificar las diferentes alternativas disponibles para la asignación de recursos económicos, considerando variables como el nivel de riesgo, la rentabilidad esperada, el plazo de inversión y la liquidez. Esta clasificación es clave para la toma de decisiones, debido a que cada tipo de inversión responde a objetivos financieros específicos y perfiles de inversionista distintos.
Desde una perspectiva teórica, Benjamin Graham, en El Inversor Inteligente, establece que la diversificación y la correcta selección de activos son esenciales para minimizar riesgos y maximizar rendimientos, lo que implica la necesidad de conocer y diferenciar los distintos tipos de inversiones disponibles en el mercado. Por su parte, Robert Kiyosaki, en Padre Rico, Padre Pobre, clasifica las inversiones en función de su capacidad para generar ingresos, destacando la importancia de priorizar activos que produzcan flujo de efectivo constante. Asimismo, Morgan Housel, en La Psicología del Dinero, resalta que la elección del tipo de inversión no solo depende de factores técnicos, sino también del comportamiento y la tolerancia al riesgo del inversionista.
En el ámbito institucional, organismos como el Banco Mundial y el Fondo Monetario Internacional reconocen que la diversidad de instrumentos de inversión contribuye al desarrollo de los mercados financieros. De igual forma, entidades como BBVA (2024) señalan que la rentabilidad de un activo depende de factores como los tipos de interés, la prima de riesgo y la liquidez, los cuales están directamente relacionados con el horizonte temporal de la inversión.
            
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
               🔹 INVERSIONES DE RENTA FIJA
Las inversiones de renta fija se caracterizan por ofrecer un nivel de rentabilidad previamente establecido o predecible, lo que las convierte en opciones de menor riesgo en comparación con otros instrumentos financieros. Estas inversiones permiten al inversionista conocer con mayor certeza el retorno de su capital.
Entre los principales ejemplos se encuentran los bonos emitidos por gobiernos o empresas, los certificados de depósito a plazo fijo y las cuentas de ahorro con interés. Este tipo de inversión es más común en horizontes de corto y medio plazo, debido a su estabilidad y liquidez.
Desde el enfoque de Benjamin Graham, estas inversiones son adecuadas para perfiles conservadores que buscan preservar el capital y obtener ingresos estables.
________________________________________
🔹 INVERSIONES DE RENTA VARIABLE
Las inversiones de renta variable no garantizan un rendimiento fijo, ya que su rentabilidad depende del comportamiento del mercado. Estas inversiones presentan un mayor nivel de riesgo, pero también ofrecen mayores oportunidades de ganancia.
El ejemplo más representativo son las acciones que se negocian en mercados como la Bolsa de Valores de Guayaquil. Este tipo de inversión suele ser más recomendable en el largo plazo, ya que permite aprovechar el crecimiento de las empresas y reducir el impacto de la volatilidad.
Según Robert Kiyosaki, este tipo de inversión es clave para la generación de riqueza, mientras que Morgan Housel advierte que requiere disciplina y control emocional.
________________________________________
🔹 INVERSIONES EN ACTIVOS REALES
Las inversiones en activos reales corresponden a la adquisición de bienes tangibles como bienes inmuebles, terrenos o metales preciosos como el oro y la plata. Estas inversiones suelen utilizarse como mecanismos de protección frente a la inflación y la inestabilidad económica.
Generalmente, este tipo de inversión está asociado al largo plazo, ya que su valorización ocurre de manera progresiva. En Ecuador, son muy comunes debido a la preferencia por activos físicos que brindan seguridad.
Desde el enfoque teórico, estos activos permiten preservar el valor del capital en el tiempo, especialmente en contextos de incertidumbre.
________________________________________
🔹 INVERSIONES EN FONDOS DE INVERSIÓN
Los fondos de inversión agrupan el dinero de múltiples inversionistas para ser administrado por expertos, quienes lo invierten en diferentes activos como acciones, bonos o una combinación de ambos.
Estos instrumentos pueden adaptarse a corto, medio o largo plazo, dependiendo del tipo de fondo, lo que los convierte en una opción flexible. Además, permiten la diversificación del riesgo.
El Banco Mundial destaca su importancia para fomentar la inclusión financiera y facilitar el acceso a inversiones diversificadas.
________________________________________
🔹 INVERSIONES EN EMPRENDIMIENTOS
Las inversiones en emprendimientos consisten en destinar recursos a la creación o desarrollo de negocios propios o proyectos innovadores. Este tipo de inversión implica un alto riesgo, pero también una alta rentabilidad potencial.
Generalmente, están asociadas al largo plazo, ya que los negocios requieren tiempo para crecer y generar ganancias. En el Ecuador, este tipo de inversión es relevante en sectores como la tecnología, la agricultura y el comercio.
________________________________________
🔹 INVERSIONES ALTERNATIVAS
Las inversiones alternativas incluyen activos no tradicionales como criptomonedas, arte o activos digitales. Estas inversiones se caracterizan por su alta volatilidad y riesgo.
Pueden aplicarse en distintos horizontes temporales, aunque suelen requerir mayor conocimiento y análisis por parte del inversionista.
               
            </p>
        </div>
    </div>
    
     <!-- RECUADRO 6 -->
  <div class="info-card">
        <h3>: INVERSIONES SEGÚN EL HORIZONTE TEMPORAL</h3>
        <p>
            El horizonte temporal es uno de los factores más importantes dentro del análisis de inversiones, ya que determina la estrategia, el nivel de riesgo asumido y la rentabilidad esperada. Se refiere al periodo durante el cual un inversionista mantiene su dinero invertido antes de necesitarlo.
Desde el enfoque teórico, Morgan Housel sostiene que el tiempo es el factor más poderoso en la generación de riqueza, ya que permite que el capital crezca de manera sostenida. De igual forma, Benjamin Graham resalta que un mayor horizonte temporal reduce el impacto de la volatilidad del mercado, permitiendo decisiones más racionales.
Según BBVA (2024), la rentabilidad de un activo está influenciada por variables como los tipos de interés, la prima de riesgo y la liquidez, elementos que se comportan de manera distinta dependiendo del plazo de inversión.
            
</p>
        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
                🔹 INVERSIONES A LARGO PLAZO
Las inversiones a largo plazo comprenden periodos superiores a cinco años y son consideradas las más eficaces para la acumulación de riqueza. Esto se debe a que, con el tiempo, los mercados tienden a reflejar el valor real de los activos, reduciendo el impacto de las fluctuaciones temporales.
Una de las principales ventajas de este tipo de inversión es el aprovechamiento del interés compuesto, que permite generar ganancias sobre las ganancias previamente obtenidas, aumentando exponencialmente el capital.
Los inversionistas a largo plazo buscan estabilidad y crecimiento progresivo, priorizando activos como acciones, bienes raíces, fondos de inversión, metales preciosos y renta fija a largo plazo. A diferencia de los inversionistas a corto plazo, no se enfocan en cambios diarios del mercado, sino en tendencias generales.
Este tipo de inversión requiere paciencia, disciplina y una visión estratégica, elementos que, según Robert Kiyosaki, son fundamentales para alcanzar la independencia financiera.
________________________________________
🔹 INVERSIONES A MEDIO PLAZO
Las inversiones a medio plazo tienen un horizonte entre uno y cinco años, y se caracterizan por buscar un equilibrio entre riesgo y rentabilidad. Son utilizadas para cumplir objetivos específicos en un periodo determinado, como estudios, viajes o adquisición de bienes.
Según Morales (2023), estas inversiones requieren un seguimiento periódico y ajustes estratégicos, ya que el inversionista debe adaptarse a cambios en el entorno económico. Sin embargo, no demandan un control constante como las inversiones a corto plazo.
Entre las opciones más comunes se encuentran bonos, fondos mixtos, acciones con potencial de crecimiento y certificados de depósito. Estas permiten diversificar el portafolio y reducir el riesgo.
Desde una perspectiva teórica, este tipo de inversión exige capacidad de análisis y flexibilidad, ya que el inversionista debe equilibrar la seguridad con la búsqueda de rentabilidad.
________________________________________
🔹 INVERSIONES A CORTO PLAZO
Las inversiones a corto plazo tienen un horizonte menor a un año, aunque en algunos casos pueden extenderse hasta tres años. Se caracterizan por su alta liquidez, bajo riesgo y menor rentabilidad.
Su principal objetivo es preservar el capital y disponer de dinero de forma rápida para cubrir gastos inmediatos o imprevistos. Entre las opciones más comunes se encuentran las cuentas de ahorro, fondos monetarios y depósitos a corto plazo.
Este tipo de inversión requiere un análisis más frecuente del mercado, ya que está más expuesto a variaciones inmediatas. Sin embargo, ofrece mayor seguridad y disponibilidad del dinero.
________________________________________
🔹 DIFERENCIAS SEGÚN EL HORIZONTE TEMPORAL
El horizonte temporal influye directamente en la estrategia de inversión, determinando el nivel de riesgo y la rentabilidad esperada:
Corto plazo: menor a 1 año, alta liquidez, bajo riesgo, menor rentabilidad 
Medio plazo: entre 1 y 5 años, riesgo moderado, equilibrio entre seguridad y ganancia 
Largo plazo: más de 5 años, mayor rentabilidad potencial, menor impacto de la volatilidad 
De acuerdo con Willis Towers Watson (2022), el horizonte temporal define la estructura de la inversión, influyendo en la selección de activos y en la gestión del riesgo.
                
            </p>
        </div>
    </div>
    
      <!-- RECUADRO 7 -->
  <div class="info-card">
        <h3>Acciones: qué son y su origen</h3>
        <p>
            Las acciones representan una fracción del capital de una empresa y constituyen una de las principales formas de inversión dentro de los mercados financieros. Cuando una empresa decide financiar sus actividades, puede emitir acciones que son adquiridas por inversionistas, quienes pasan a ser propietarios parciales de la compañía. Este mecanismo permite a las empresas obtener recursos sin recurrir a deuda, mientras que los inversionistas tienen la posibilidad de generar ganancias a través de dividendos o del aumento en el valor de las acciones. De acuerdo con Investopedia, las acciones forman parte de los instrumentos de renta variable, ya que su rentabilidad depende del desempeño de la empresa y de las condiciones del mercado.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
               El origen de las acciones se remonta a prácticas comerciales antiguas, donde varios inversionistas unían capital para financiar expediciones o actividades comerciales, compartiendo tanto los riesgos como las ganancias. Sin embargo, el desarrollo formal de las acciones como instrumento financiero moderno se produjo en el siglo XVII con la creación de la Compañía Neerlandesa de las Indias Orientales, considerada la primera empresa en emitir acciones al público. Este modelo permitió financiar grandes proyectos comerciales y marcó el inicio de los mercados bursátiles organizados, sentando las bases del sistema financiero actual.
A lo largo del tiempo, las acciones han evolucionado y se han consolidado como un pilar fundamental de la economía global, siendo analizadas por instituciones como el Banco Mundial y el Fondo Monetario Internacional, que estudian su impacto en el crecimiento económico y en la movilización de capitales. En la actualidad, existen diferentes tipos de acciones, como las ordinarias, que otorgan derecho a voto y participación en decisiones empresariales, y las preferentes, que priorizan el pago de dividendos, reflejando la diversidad de opciones dentro del mercado financiero.
Desde la perspectiva de la educación financiera, comprender el funcionamiento de las acciones es fundamental para tomar decisiones de inversión informadas. Libros como El Inversor Inteligente de Benjamin Graham establecen principios clave como la inversión a largo plazo, el análisis del valor real de las empresas y la importancia de reducir riesgos. Asimismo, Padre Rico, Padre Pobre de Robert Kiyosaki resalta que las acciones pueden ser una forma de generar ingresos pasivos si se entienden como activos que producen valor en el tiempo. Por otro lado, La Psicología del Dinero de Morgan Housel destaca que el comportamiento del inversor y su disciplina son factores determinantes al invertir en este tipo de activos.
En conjunto, las acciones no solo representan una herramienta clave para el financiamiento empresarial, sino también una de las principales alternativas de inversión, cuyo correcto entendimiento permite aprovechar oportunidades del mercado y gestionar de manera adecuada los riesgos asociados.
               
            </p>
        </div>
    </div>
     <!-- RECUADRO 8  -->
  <div class="info-card">
        <h3>: Contexto de las inversiones en ecuador </h3>
        <p>
           El desarrollo de las inversiones personales en el Ecuador se encuentra estrechamente vinculado a las características propias de su estructura económica, su marco institucional y las condiciones sociales que influyen en la toma de decisiones financieras de la población. En este sentido, invertir en el país no solo implica la asignación de recursos hacia distintos activos, sino también la adaptación a un entorno económico particular marcado por factores como la dolarización, la estabilidad relativa del sistema financiero y los niveles aún limitados de educación financiera en ciertos sectores de la población.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
               Desde una perspectiva macroeconómica, organismos como el Banco Mundial y el Fondo Monetario Internacional han señalado que el Ecuador, al ser una economía dolarizada, presenta ciertas ventajas en términos de control de la inflación y estabilidad monetaria, lo cual favorece la confianza en instrumentos financieros tradicionales. Sin embargo, esta misma característica limita la capacidad del país para aplicar políticas monetarias propias, lo que hace que las inversiones estén más expuestas a factores externos como cambios en la economía global o variaciones en los precios de materias primas.
En el ámbito institucional, el sistema financiero ecuatoriano está regulado principalmente por entidades como la Superintendencia de Bancos y la Superintendencia de Compañías, Valores y Seguros, las cuales cumplen un rol fundamental en la supervisión y control de las actividades financieras. Estas instituciones garantizan la transparencia, reducen el riesgo sistémico y protegen a los inversionistas, generando un entorno más seguro para la inversión. No obstante, a pesar de esta regulación, persiste en la población cierto nivel de desconfianza hacia el sistema financiero, lo que influye directamente en la baja participación en instrumentos de inversión más complejos.
En cuanto a las alternativas de inversión, el contexto ecuatoriano se caracteriza por una fuerte preferencia hacia instrumentos conservadores. Las inversiones en renta fija, como los depósitos a plazo fijo en bancos y cooperativas, son ampliamente utilizadas debido a su bajo nivel de riesgo y facilidad de acceso. Según información de entidades como BBVA, este tipo de instrumentos resulta atractivo en economías donde los inversionistas priorizan la seguridad sobre la rentabilidad.
Por otro lado, el mercado de valores en el Ecuador, representado principalmente por la Bolsa de Valores de Guayaquil, aún se encuentra en una etapa de desarrollo en comparación con otros países. Aunque ofrece oportunidades de inversión en acciones y bonos corporativos, su nivel de participación es reducido, lo que limita la liquidez y el dinamismo del mercado. Esta situación se debe en parte al desconocimiento de estos instrumentos y a la percepción de mayor riesgo por parte de los inversionistas.
Asimismo, las inversiones en activos reales, como bienes inmuebles y terrenos, tienen una gran relevancia dentro del contexto ecuatoriano. Culturalmente, existe una fuerte inclinación hacia la adquisición de propiedades como forma de resguardar el patrimonio, especialmente en escenarios de incertidumbre económica. Este tipo de inversión es percibido como seguro y tangible, lo que genera mayor confianza en comparación con activos financieros abstractos.
En los últimos años, también se ha observado un crecimiento en el interés por inversiones alternativas, como las criptomonedas y los emprendimientos digitales. Plataformas analizadas por Investopedia señalan que este tipo de inversiones ha ganado popularidad entre los jóvenes, aunque su adopción aún es limitada debido a la volatilidad y a la falta de regulación clara en el país. A pesar de ello, representan una oportunidad de diversificación en un entorno económico cambiante.
Desde el punto de vista social, uno de los principales desafíos en el Ecuador es el bajo nivel de educación financiera. Muchas personas toman decisiones de inversión sin contar con el conocimiento adecuado, lo que aumenta la probabilidad de asumir riesgos innecesarios o caer en esquemas informales. En este contexto, la promoción de la educación financiera se vuelve fundamental para mejorar la calidad de las decisiones económicas y fomentar una cultura de inversión responsable.
El Estado ecuatoriano ha implementado diversas iniciativas para incentivar el ahorro y la inversión, incluyendo programas de inclusión financiera y beneficios tributarios. Sin embargo, el impacto de estas políticas aún es limitado, lo que evidencia la necesidad de fortalecer estrategias educativas y de acceso a instrumentos financieros formales.
En síntesis, el contexto de las inversiones en el Ecuador está determinado por una combinación de factores económicos, institucionales y culturales que influyen directamente en el comportamiento de los inversionistas. Si bien existen oportunidades en diferentes tipos de activos, el desarrollo del mercado depende en gran medida de la confianza en el sistema financiero, la educación de la población y la capacidad de adaptación a un entorno económico global en constante cambio.
               
            </p>
        </div>
    </div>
     <!-- RECUADRO 9 -->
  <div class="info-card">
        <h3>Riesgos y rentabilidad </h3>
        <p>
 Las inversiones personales implican la utilización de recursos económicos con el objetivo de obtener beneficios futuros, y dentro de este proceso destacan dos elementos fundamentales que determinan la toma de decisiones: el riesgo y la rentabilidad. La rentabilidad se refiere a las ganancias que puede generar una inversión a lo largo del tiempo, mientras que el riesgo representa la posibilidad de que dichos beneficios no se alcancen o incluso se produzcan pérdidas. Ambos conceptos están estrechamente relacionados, ya que generalmente las inversiones con mayor potencial de ganancia implican también un mayor nivel de incertidumbre.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
                La rentabilidad puede presentarse de diversas formas, como el incremento del valor de un activo, la generación de ingresos periódicos o el crecimiento progresivo del capital en el tiempo. Sin embargo, esta no es fija ni garantizada, debido a que depende de múltiples factores como el comportamiento del mercado, las condiciones económicas y las decisiones tomadas por el inversionista. En este sentido, es fundamental comprender que toda inversión está sujeta a variaciones, por lo que los resultados pueden cambiar según el contexto en el que se desarrolle.
Por otro lado, el riesgo se manifiesta de diferentes maneras dentro del ámbito financiero. Entre los principales se encuentran la volatilidad de los precios, que puede generar cambios bruscos en el valor de los activos; el riesgo de liquidez, que dificulta convertir una inversión en dinero de forma rápida; y los factores externos, como crisis económicas, cambios políticos o variaciones en las tasas de interés, que pueden afectar directamente el desempeño de las inversiones. Estos elementos hacen que el análisis previo sea una parte esencial antes de destinar recursos a cualquier alternativa financiera.
Además, la relación entre riesgo y rentabilidad obliga a los inversionistas a buscar un equilibrio adecuado según sus objetivos y su tolerancia al riesgo. Mientras algunas personas priorizan la seguridad y prefieren inversiones estables con menores ganancias, otras están dispuestas a asumir mayores riesgos con el fin de obtener rendimientos más elevados. Esta decisión depende de factores personales como la experiencia, el conocimiento financiero y el horizonte temporal de inversión.
En este contexto, la planificación financiera adquiere una gran importancia, ya que permite establecer estrategias coherentes que consideren tanto los posibles beneficios como las pérdidas potenciales. Una adecuada gestión del riesgo implica diversificar las inversiones, analizar las condiciones del entorno económico y evitar decisiones impulsivas basadas en emociones o tendencias momentáneas del mercado.
En conjunto, comprender la relación entre riesgo y rentabilidad es fundamental para desarrollar una estrategia de inversión sólida y sostenible. Este conocimiento no solo permite tomar decisiones más informadas, sino también adaptarse a los cambios del entorno económico, reducir la exposición a pérdidas y maximizar las oportunidades de crecimiento financiero a largo plazo.

            </p>
        </div>
    </div>
     <!-- RECUADRO 10-->
  <div class="info-card">
        <h3>Consejos para invertir</h3>
        <p>
           Invertir es un proceso que requiere planificación, conocimiento y disciplina, ya que implica tomar decisiones en entornos donde siempre existe incertidumbre. De acuerdo con Investopedia, una de las claves principales para invertir correctamente es comprender que no se trata solo de obtener ganancias rápidas, sino de construir una estrategia sólida a largo plazo que permita gestionar el riesgo y aprovechar las oportunidades del mercado.
        </p>

        <button class="btn-expandir"
        onclick="toggleInfo(this)">
            Ver más
        </button>

        <div class="contenido-extra">
            <p>
               Desde la perspectiva de organismos como el Banco Mundial y el Fondo Monetario Internacional, una buena práctica al invertir es analizar el entorno económico, considerando factores como la inflación, las tasas de interés y la estabilidad del mercado, ya que estos elementos influyen directamente en el rendimiento de las inversiones y en la toma de decisiones financieras.
Uno de los aspectos más importantes es definir objetivos claros antes de invertir, lo que permite elegir instrumentos adecuados según el nivel de riesgo que se está dispuesto a asumir. En este sentido, BBVA destaca que la planificación financiera es fundamental para evitar decisiones impulsivas y mantener coherencia en la estrategia de inversión.
La educación financiera también juega un papel esencial, ya que permite comprender cómo funcionan los distintos activos y evaluar sus riesgos. Libros como El Inversor Inteligente de Benjamin Graham recomiendan analizar el valor real de las inversiones y mantener una visión a largo plazo, evitando dejarse llevar por las fluctuaciones del mercado. De igual manera, La Psicología del Dinero de Morgan Housel resalta la importancia del comportamiento y la paciencia, señalando que el éxito financiero depende en gran parte de la disciplina y el control emocional. Por su parte, Padre Rico, Padre Pobre de Robert Kiyosaki enfatiza la necesidad de invertir en activos que generen ingresos y contribuyan al crecimiento financiero personal.
Otro aspecto relevante es la diversificación, que consiste en distribuir el capital en diferentes tipos de activos para reducir el riesgo. Esta estrategia permite compensar posibles pérdidas en una inversión con ganancias en otra, logrando mayor estabilidad en el portafolio. Asimismo, es fundamental evitar decisiones impulsivas basadas en emociones o tendencias del mercado, ya que estas suelen generar resultados negativos a largo plazo.
En conjunto, invertir de manera adecuada implica combinar conocimiento, planificación y control emocional, entendiendo que el éxito financiero no depende únicamente de elegir una buena inversión, sino de mantener una estrategia coherente y disciplinada en el tiempo.
               
            </p>
        </div>
    </div>
</div>
                    
            
        </div>

 <!-- FAQ -->
 
        <div id="faq" class="tab-content">
           <div class="faq-box">

 <h2 class="faq-title">
            Preguntas Frecuentes
        </h2>

        <!-- Pregunta 1 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

                ¿Por qué es importante invertir y no solo ahorrar dinero?
                <span>+</span>

            </button>

            <div class="faq-answer">
Porque las inversiones permiten generar rendimientos, incrementar el capital y proteger el dinero frente a la inflación, además de contribuir al crecimiento económico, la generación de empleo y la estabilidad financiera.
            </div>

        </div>

        <!-- Pregunta 2 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

               ¿Cómo puedo saber qué tipo de inversión es mejor para mí según mi situación?
                <span>+</span>

            </button>

            <div class="faq-answer">
               Depende de factores como el nivel de riesgo, la rentabilidad esperada, el plazo de inversión, la liquidez y los objetivos financieros de cada persona.
            </div>

        </div>

        <!-- Pregunta 3 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

                ¿Qué pasa si invierto y el mercado cambia o hay una crisis económica?
                <span>+</span>

            </button>

            <div class="faq-answer">
                La inversión puede verse afectada por factores como la volatilidad, crisis económicas, cambios políticos o variaciones en tasas de interés, lo que puede generar pérdidas o menores rendimientos.
            </div>

        </div>

        <!-- Pregunta 4 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

                ¿Por qué algunas inversiones dan más ganancias pero también tienen más riesgo?
                <span>+</span>

            </button>

            <div class="faq-answer">
               Porque la rentabilidad y el riesgo están relacionados, ya que las inversiones con mayor potencial de ganancia implican también mayor incertidumbre.
            </div>

        </div>
        
           <!-- Pregunta 5 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

              ¿De qué manera influyen mis emociones al momento de invertir mi dinero?
                <span>+</span>

            </button>

            <div class="faq-answer">
                Las decisiones financieras están influenciadas por emociones, experiencias y percepciones del riesgo, lo que puede llevar a errores como actuar por miedo, impulso o exceso de confianza.
            </div>

        </div>
        
                   <!-- Pregunta 6 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

              ¿Es mejor invertir a corto, mediano o largo plazo y por qué?
                <span>+</span>

            </button>

            <div class="faq-answer">
           Depende del objetivo, pero el largo plazo permite mayor crecimiento del capital, reduce el impacto de la volatilidad y aprovecha el interés compuesto.
            </div>

        </div>
        
                   <!-- Pregunta 7 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

             ¿Qué tan seguro es invertir en criptomonedas comparado con otras opciones?
                <span>+</span>

            </button>

            <div class="faq-answer">
             Es menos seguro, ya que presentan alta volatilidad, falta de regulación en algunos casos y riesgos tecnológicos, aunque también ofrecen alta rentabilidad potencial.
            </div>

        </div>
        
                   <!-- Pregunta 8 -->
        <div class="faq-item">

            <button class="faq-question"
                    onclick="toggleFAQ(this)">

             ¿Por qué muchas personas en Ecuador no invierten si existen tantas opciones?
                <span>+</span>

            </button>

            <div class="faq-answer">
               Por el bajo nivel de educación financiera, el desconocimiento de las alternativas de inversión y la desconfianza en el sistema financiero.
            </div>
<div class="comentarios-box">

            <h3>Déjanos tu comentario</h3>

            <form action="EnviarComentarioServlet" method="post">

                <input type="text"
                       name="nombre"
                       placeholder="Tu nombre"
                       required>

                <textarea
                    name="comentario"
                    placeholder="Escribe tu comentario..."
                    required>
                </textarea>

                <button type="submit" class="btn-enviar">
                    Enviar comentario
                </button>

            </form>

        </div>
        <!-- ===== FIN COMENTARIOS ===== -->

    </div>
</div>
        </div>
<!-- CALC -->
            <div id="calc" class="tab-content">
            
              <div class="info-grid">

        <!-- RECUADRO 1 -->
        <div class="info-card">
            <h3>¿Las criptomonedas </h3>

            <p>
Las criptomonedas, también conocidas como criptoactivos o criptodivisas, son una forma de dinero digital que utiliza criptografía para garantizar la seguridad de las transacciones y controlar la creación de nuevas unidades. A diferencia del dinero tradicional, no dependen de bancos centrales ni de instituciones financieras, ya que funcionan mediante redes descentralizadas basadas en tecnología blockchain. Según Investopedia, este tipo de activos permite realizar transferencias directas entre usuarios sin intermediarios, lo que ha generado una transformación importante en la forma en que se entiende el sistema financiero.            </p>

            <button class="btn-expandir"
                    onclick="toggleInfo(this)">
                Ver más
            </button>

            <div class="contenido-extra">
                <p>
                    El desarrollo moderno de las criptomonedas comenzó en 2009 con la creación de Bitcoin por Satoshi Nakamoto, quien propuso un sistema financiero alternativo basado en la descentralización y la transparencia. Posteriormente, el ecosistema evolucionó con proyectos como Ethereum, impulsado por Vitalik Buterin, que introdujo nuevas funcionalidades como los contratos inteligentes, ampliando el uso de estas tecnologías en diferentes sectores económicos.
                </p>
            </div>
        </div>

      
        <!-- RECUADRO 2 -->
        <div class="info-card">
            <h3>SUS PRINCIPALES CRIPTO MONEDAS </h3>

            <p>
Las criptomonedas se han consolidado como una parte importante del sistema financiero digital, destacándose algunas por su capitalización de mercado, adopción global y desarrollo tecnológico. Estas monedas digitales no solo funcionan como medios de intercambio, sino también como activos de inversión dentro de mercados altamente dinámicos. Según Investopedia, las criptomonedas más relevantes suelen ser aquellas que combinan seguridad, innovación tecnológica y una amplia aceptación en el mercado.            </p>

            <button class="btn-expandir"
                    onclick="toggleInfo(this)">
                Ver más
            </button>

            <div class="contenido-extra">
                <p>
                    La criptomoneda más importante y pionera es Bitcoin, creada por Satoshi Nakamoto, la cual introdujo el concepto de dinero descentralizado basado en blockchain. Su relevancia radica en ser la primera y en mantener la mayor capitalización de mercado, además de ser considerada una reserva de valor digital. Posteriormente, Ethereum, desarrollada por Vitalik Buterin, amplió las funcionalidades del ecosistema al permitir la creación de contratos inteligentes, lo que facilitó el desarrollo de aplicaciones descentralizadas y nuevos proyectos financieros.
Otras criptomonedas importantes incluyen Binance Coin, vinculada a una de las mayores plataformas de intercambio a nivel mundial, XRP, enfocada en facilitar pagos internacionales rápidos, y Cardano, que busca mejorar la seguridad y escalabilidad mediante un enfoque académico en su desarrollo. Asimismo, Solana ha ganado relevancia por su alta velocidad de transacciones, mientras que Polkadot se destaca por permitir la interoperabilidad entre diferentes blockchains, lo que representa un avance en la integración del ecosistema digital.
El crecimiento de estas criptomonedas ha sido analizado por instituciones como el Banco Mundial y el Fondo Monetario Internacional, que estudian su impacto en la economía global y su posible influencia en los sistemas financieros tradicionales. Estas entidades reconocen tanto su potencial innovador como los riesgos asociados a su volatilidad y falta de regulación en ciertos contextos.
Desde la educación financiera, comprender las principales criptomonedas permite a los inversionistas identificar oportunidades y riesgos dentro de este mercado. Libros como El Inversor Inteligente de Benjamin Graham ayudan a entender la importancia del análisis antes de invertir, mientras que La Psicología del Dinero de Morgan Housel resalta cómo el comportamiento del inversor influye en mercados volátiles como el de las criptomonedas. Por su parte, Padre Rico, Padre Pobre de Robert Kiyosaki enfatiza la importancia de comprender los activos antes de invertir en ellos.
En conjunto, las principales criptomonedas representan tanto una innovación tecnológica como una alternativa de inversión, cuyo análisis requiere conocimiento, criterio y una adecuada gestión del riesgo dentro de un entorno financiero en constante evolución.

                </p>
            </div>
        </div>
        <!-- RECUADRO 3 -->
        <div class="info-card">
            <h3>Criptomonedas riesgos y rentabilidad</h3>

            <p>
                En términos de rentabilidad, las criptomonedas se caracterizan por su alto potencial de ganancia, debido principalmente a la volatilidad de sus precios y a la creciente adopción tecnológica. De acuerdo con BBVA, los inversionistas pueden obtener beneficios a partir de la apreciación del valor de estos activos o mediante su participación en diferentes mecanismos dentro del ecosistema digital. Sin embargo, el Fondo Monetario Internacional advierte que estos rendimientos no son estables ni garantizados, ya que dependen en gran medida de la oferta y la demanda, así como de la confianza del mercado.
            </p>

            <button class="btn-expandir"
                    onclick="toggleInfo(this)">
                Ver más
            </button>

            <div class="contenido-extra">
                <p>
En cuanto a los riesgos, las criptomonedas presentan un nivel elevado en comparación con otros instrumentos financieros. La volatilidad extrema puede generar pérdidas significativas en periodos cortos, mientras que la falta de regulación en muchos países incrementa la incertidumbre y la exposición a fraudes. Además, existen riesgos tecnológicos relacionados con la seguridad digital, como hackeos o pérdida de acceso a billeteras electrónicas. Estas condiciones han sido objeto de análisis por parte del Banco Mundial, que estudia el impacto de estos activos en la estabilidad financiera global.
Desde la perspectiva de la educación financiera, comprender el funcionamiento, los riesgos y la rentabilidad de las criptomonedas es fundamental para tomar decisiones informadas. Obras como El Inversor Inteligente de Benjamin Graham resaltan que toda inversión con alta rentabilidad implica un mayor nivel de riesgo, principio que se aplica claramente en este tipo de activos. De igual manera, La Psicología del Dinero de Morgan Housel explica que el comportamiento del inversor es determinante en mercados volátiles, mientras que Padre Rico, Padre Pobre de Robert Kiyosaki enfatiza la importancia de comprender los activos antes de invertir en ellos.
En conjunto, las criptomonedas representan una innovación significativa en el sistema financiero moderno, ofreciendo nuevas oportunidades de inversión, pero también implicando riesgos elevados que requieren conocimiento, análisis y una adecuada gestión emocional para ser enfrentados de manera responsable.
                </p>
            </div>
        </div>
        <!-- RECUADRO 4 -->
        <div class="info-card">
            <h3>Información de las criptomonedas </h3>

            <p>
               🟡 Bitcoin
Todo comenzó en el año 2008, cuando el mundo atravesaba una de las peores crisis económicas de la historia. Los bancos quebraban, las personas perdían sus ahorros y la confianza en el sistema financiero tradicional estaba casi destruida. En medio de ese caos, apareció una persona —o grupo— bajo el nombre de Satoshi Nakamoto con una idea completamente diferente: crear un dinero digital que no dependiera de bancos ni gobiernos.
En 2009, esa idea se hizo realidad con la creación de Bitcoin. Al inicio, casi nadie lo entendía ni le daba importancia. Era utilizado solo por programadores y personas curiosas por la tecnología. De hecho, en 2010 ocurrió algo muy curioso: alguien compró una pizza con 10.000 bitcoins, sin imaginar que años después eso valdría millones de dólares.

            </p>

            <button class="btn-expandir"
                    onclick="toggleInfo(this)">
                Ver más
            </button>

            <div class="contenido-extra">
                <p>
                   Con el paso del tiempo, Bitcoin empezó a ganar valor, confianza y popularidad. Cada vez más personas lo veían como una alternativa real al dinero tradicional. Hoy en día, es considerada la criptomoneda más importante del mundo y el inicio de toda una revolución digital.
________________________________________
🔵 Ethereum
Años después del nacimiento de Bitcoin, un joven programador llamado Vitalik Buterin pensó que esa tecnología podía hacer mucho más que solo enviar dinero. Él imaginó un sistema donde se pudieran crear programas, aplicaciones y acuerdos digitales sin necesidad de intermediarios.
Así, en 2015 nació Ethereum. A diferencia de Bitcoin, Ethereum no solo era una moneda, sino una plataforma completa que permitía crear lo que se conoce como “contratos inteligentes”. Esto permitió el desarrollo de nuevas tecnologías como aplicaciones descentralizadas, finanzas digitales (DeFi) e incluso los famosos NFTs.
Con el tiempo, Ethereum se convirtió en la segunda criptomoneda más importante del mundo, siendo la base de miles de proyectos digitales y cambiando completamente la forma en que se usa el dinero en internet.
________________________________________
🟢 Tether
Mientras muchas criptomonedas crecían rápidamente, también tenían un problema: su precio subía y bajaba de forma muy brusca. Esto hacía que muchas personas tuvieran miedo de perder dinero. Por esa razón, en 2014 se creó Tether, desarrollada por la empresa Tether Limited.
La idea era diferente: crear una criptomoneda estable, que siempre valiera lo mismo que el dólar. Es decir, 1 USDT = 1 dólar. Esto permitió a los usuarios moverse dentro del mundo cripto sin preocuparse tanto por la volatilidad.
Con el tiempo, Tether se convirtió en una de las criptomonedas más utilizadas en el mundo, especialmente para hacer transacciones y comercio dentro de plataformas digitales.
________________________________________
🟣 XRP
En 2012, surgió una criptomoneda con un enfoque distinto. XRP fue creada por la empresa Ripple Labs con la idea de mejorar el sistema bancario en lugar de reemplazarlo.
Su objetivo era facilitar transferencias internacionales de dinero de forma rápida, segura y con costos muy bajos. A diferencia de Bitcoin, que puede tardar varios minutos, XRP permite enviar dinero casi al instante.
A lo largo de su historia, XRP ha tenido momentos difíciles, especialmente por problemas legales con el gobierno de Estados Unidos. Sin embargo, ha logrado mantenerse como una de las criptomonedas más importantes, especialmente en el sector financiero.
________________________________________
⚫ BNB
En 2017, el empresario Changpeng Zhao fundó la plataforma Binance, que rápidamente se convirtió en uno de los exchanges más grandes del mundo. Como parte de su crecimiento, creó su propia criptomoneda: BNB.
Al principio, BNB se utilizaba principalmente para pagar comisiones dentro de la plataforma. Sin embargo, con el tiempo, su uso se expandió a pagos, inversiones y aplicaciones dentro del ecosistema de Binance.
Gracias al enorme crecimiento de la empresa, BNB también aumentó su valor y se convirtió en una de las criptomonedas más fuertes del mercado.
________________________________________
🔵 Cardano
También en 2017, Charles Hoskinson decidió crear una criptomoneda diferente a las demás. Su objetivo era desarrollar un sistema basado en investigaciones científicas y pruebas académicas, en lugar de avanzar rápidamente sin control.
Así nació Cardano, una blockchain enfocada en la seguridad, la sostenibilidad y la eficiencia. Aunque su desarrollo fue más lento que otras criptomonedas, esto le permitió construir una base sólida y confiable.
Con el tiempo, Cardano se ganó una buena reputación y se convirtió en una de las principales criptomonedas del mundo.
________________________________________
🟠 Solana
En 2020, Anatoly Yakovenko creó Solana con un objetivo claro: resolver uno de los mayores problemas de las criptomonedas, la velocidad.
Solana fue diseñada para procesar miles de transacciones por segundo con costos muy bajos, lo que la hizo muy atractiva para desarrolladores y usuarios. En poco tiempo, creció rápidamente y se convirtió en una de las principales plataformas para NFTs y aplicaciones digitales.
Sin embargo, su crecimiento no fue perfecto, ya que en algunos momentos sufrió caídas en su red. A pesar de esto, sigue siendo una de las criptomonedas más prometedoras.
________________________________________
🟡 Dogecoin
En 2013, dos desarrolladores llamados Billy Markus y Jackson Palmer decidieron crear una criptomoneda como una broma, inspirada en un meme de un perro.
Así nació Dogecoin, sin grandes expectativas ni objetivos serios. Sin embargo, lo que nadie esperaba era que con el tiempo se volviera extremadamente popular, gracias a internet y a una comunidad muy activa.
Además, figuras importantes como Elon Musk comenzaron a hablar de ella, lo que aumentó aún más su fama. Hoy en día, Dogecoin es una de las criptomonedas más conocidas, demostrando que incluso una broma puede convertirse en algo grande.
________________________________________
🔷 Polkadot
Después del éxito de Ethereum, uno de sus cofundadores, Gavin Wood, decidió ir más allá. Él se dio cuenta de que muchas blockchains funcionaban de forma aislada, sin poder comunicarse entre sí.
Así, en 2020 nació Polkadot, con la idea de conectar diferentes redes en un solo sistema. Su objetivo era permitir que distintas criptomonedas y plataformas trabajen juntas como si fueran una sola.
Con el tiempo, Polkadot se convirtió en un proyecto muy innovador, destacándose por su tecnología y su visión de un internet más conectado y descentralizado.
________________________________________
🔗 Chainlink
A medida que las criptomonedas crecían, surgió un problema: no podían acceder fácilmente a información del mundo real. Fue entonces cuando apareció Chainlink en 2017, desarrollado por Chainlink Labs.
Chainlink permitió conectar las blockchains con datos externos, como precios, eventos o información de internet. Esto fue clave para el desarrollo de muchas aplicaciones financieras.
Gracias a su utilidad, se convirtió en una pieza fundamental dentro del ecosistema de las criptomonedas.
________________________________________
🔺 Avalanche
En 2020, un grupo de expertos liderado por Emin Gün Sirer creó Avalanche con la intención de competir directamente con Ethereum.
Su objetivo era ofrecer una red más rápida, escalable y eficiente. Avalanche logró procesar muchas transacciones en poco tiempo, lo que la hizo muy atractiva para proyectos digitales.
En poco tiempo, creció rápidamente y se posicionó como una de las principales plataformas de contratos inteligentes.
________________________________________
⚪ Litecoin
En 2011, un ingeniero llamado Charlie Lee creó Litecoin inspirado en Bitcoin.
Su idea era mejorar algunos aspectos, como la velocidad de las transacciones y reducir los costos. Por eso, muchos la llaman “la plata digital”, mientras que Bitcoin es el “oro digital”.
A lo largo de los años, Litecoin se ha mantenido como una de las criptomonedas más confiables y utilizadas.
________________________________________
🟢 Bitcoin Cash
En 2017, dentro de la comunidad de Bitcoin surgieron desacuerdos sobre cómo debía evolucionar la red. Esto llevó a una división, dando origen a Bitcoin Cash.
Su objetivo principal era permitir transacciones más rápidas y con menores comisiones, aumentando el tamaño de los bloques.
Aunque no logró superar a Bitcoin, se mantuvo como una alternativa importante dentro del mercado.
________________________________________
🟣 Uniswap
Con el crecimiento de las finanzas descentralizadas, en 2018 surgió Uniswap, creado por Hayden Adams.
Este proyecto revolucionó la forma de intercambiar criptomonedas, ya que permitió hacerlo sin intermediarios, directamente entre usuarios.
Gracias a su innovación, Uniswap se convirtió en uno de los exchanges descentralizados más importantes del mundo.
________________________________________
✨ Stellar
En 2014, Jed McCaleb creó Stellar con una misión clara: facilitar pagos internacionales de forma rápida y económica.
Su enfoque era ayudar a personas y empresas a enviar dinero a cualquier parte del mundo sin complicaciones.
Con el tiempo, Stellar logró alianzas importantes y se posicionó como una opción confiable para transferencias globales.
________________________________________
⚫ Monero
Mientras muchas criptomonedas buscaban transparencia, en 2014 nació Monero con una idea diferente: la privacidad total.
Monero permite realizar transacciones completamente anónimas, protegiendo la identidad de los usuarios.
Esto la convirtió en una de las criptomonedas más privadas del mundo, aunque también generó debates sobre su uso.
________________________________________
🌐 Hedera
En 2019 surgió Hedera, respaldada por grandes empresas tecnológicas. Su objetivo era crear una red rápida, segura y eficiente para aplicaciones empresariales.
A diferencia de otras criptomonedas, Hedera utiliza una tecnología diferente llamada “hashgraph”, que mejora el rendimiento.
Gracias a esto, logró posicionarse como una opción fuerte en el mundo corporativo.
________________________________________
🚀 Sui
Finalmente, en años recientes apareció Sui, una blockchain moderna enfocada en la velocidad y facilidad de uso.
Creada por antiguos ingenieros de grandes empresas tecnológicas, Sui busca hacer que las aplicaciones digitales sean más rápidas y accesibles.
Aunque es relativamente nueva, ha crecido rápidamente y se perfila como una de las criptomonedas con mayor potencial en el futuro.
________________________________________
🟣 Polygon
A medida que Ethereum crecía, también comenzaron a aparecer problemas como la lentitud y las altas comisiones. Fue entonces cuando en 2017 surgió Polygon, creado por un equipo liderado por Sandeep Nailwal.
Polygon nació con la misión de mejorar Ethereum, haciéndolo más rápido y barato. No buscaba reemplazarlo, sino ayudarlo a crecer.
Con el tiempo, muchas aplicaciones comenzaron a usar Polygon para funcionar mejor, convirtiéndolo en una pieza clave dentro del ecosistema cripto.
________________________________________
🌌 Cosmos
Mientras algunas criptomonedas buscaban velocidad, Cosmos tenía una visión aún más grande: crear un “internet de blockchains”. Este proyecto fue impulsado por Jae Kwon.
Desde su lanzamiento en 2019, Cosmos permitió que diferentes redes se conecten y trabajen juntas de forma eficiente.
Su tecnología abrió nuevas posibilidades para el futuro de las criptomonedas, facilitando la comunicación entre sistemas.
________________________________________
🐶 Shiba Inu
Inspirada en el éxito de Dogecoin, en 2020 nació Shiba Inu, creada por una persona anónima conocida como Ryoshi.
Al inicio fue vista como otra “meme coin”, pero con el tiempo logró construir una comunidad muy fuerte.
Gracias al apoyo de sus seguidores y su crecimiento en redes sociales, Shiba Inu pasó de ser una simple broma a convertirse en una criptomoneda importante.
________________________________________
🖥️ Internet Computer
En 2021, la DFINITY Foundation lanzó Internet Computer con una idea ambiciosa: crear un internet completamente descentralizado.
Su objetivo era permitir que aplicaciones, redes sociales y servicios funcionen directamente en blockchain, sin depender de servidores tradicionales.
Aunque su inicio fue difícil, sigue siendo uno de los proyectos más innovadores del mundo cripto.
________________________________________
🟢 Algorand
En 2019, el profesor Silvio Micali creó Algorand con un enfoque académico y tecnológico.
Su objetivo era resolver tres problemas importantes: seguridad, velocidad y descentralización.
Gracias a su diseño eficiente, Algorand logró posicionarse como una de las blockchains más rápidas y confiables.
________________________________________
🎨 Render
Con el crecimiento del diseño digital y los videojuegos, surgió Render, una criptomoneda enfocada en el procesamiento gráfico.
Render permite que personas compartan la potencia de sus computadoras para crear imágenes, animaciones y proyectos en 3D.
Esto la convirtió en una herramienta importante para diseñadores y creadores digitales.
________________________________________
🎮 Immutable
A medida que los videojuegos evolucionaban, apareció Immutable en 2021, con la intención de mejorar el uso de NFTs en el gaming.
Su objetivo era permitir transacciones rápidas y sin comisiones dentro de juegos digitales.
Gracias a esto, se convirtió en una de las plataformas más importantes en el mundo del gaming blockchain.
________________________________________
🏝️ The Sandbox
En el mundo virtual, The Sandbox surgió como un proyecto que permite a las personas crear, comprar y vender terrenos digitales.
Con el tiempo, se convirtió en uno de los metaversos más conocidos, donde usuarios y empresas pueden interactuar en espacios virtuales.
Su crecimiento fue impulsado por el interés en el metaverso y la economía digital.
________________________________________
🌍 Decentraland
Similar a The Sandbox, Decentraland fue creado para construir un mundo virtual completamente descentralizado.
Aquí, las personas pueden comprar terrenos, crear experiencias y participar en una economía digital.
Fue uno de los primeros proyectos en hacer realidad la idea del metaverso.
________________________________________
🎯 Gala
Finalmente, Gala nació con el objetivo de transformar la industria de los videojuegos.
Permite que los jugadores tengan control sobre sus activos digitales y participen en la economía del juego.
Con el tiempo, Gala ha crecido como una de las criptomonedas más importantes dentro del mundo gaming.
________________________________________

                </p>
            </div>
        </div>
    
        

    </div>
                <div class="info-content-box">
              <h2 style="color: #58a6ff; border-left: 4px solid #58a6ff; padding-left: 15px; text-align: left;">
            Simulador de Rendimiento Financiero
        </h2>
        <p style="color: #8b949e; text-align: left; margin-bottom: 25px;">
            Calcula la proyección de tu capital a corto, mediano o largo plazo aplicando la potencia del interés compuesto en el escenario financiero ecuatoriano.
        </p>

        <div class="calc-grid">
            <div class="calc-inputs">
                <div class="input-group">
                    <label for="capital">Capital Inicial ($ USD):</label>
                    <input type="number" id="capital" value="1000" min="10" step="50">
                </div>

                <div class="input-group">
                    <label for="tasa">Tasa de Interés Anual (%):</label>
                    <input type="number" id="tasa" value="8.5" min="0.1" step="0.1">
                    <small style="color: #8b949e; display:block; margin-top:4px;">Promedio cooperativas/bancos en Ecuador: 8% - 10%</small>
                </div>

                <div class="input-group">
                    <label for="tiempo">Tiempo (Años):</label>
                    <input type="number" id="tiempo" value="5" min="1" max="40">
                </div>

                <button class="btn-calcular" onclick="calcularInversion()">
                    PROYECTAR RENDIMIENTO
                </button>
            </div>

            <div class="calc-results">
                <div class="result-box">
                    <span class="result-label">Monto Final Proyectado</span>
                    <span class="result-value" id="monto-final">$1,503.66</span>
                </div>
                
                <div class="result-sub-grid">
                    <div class="sub-result">
                        <span class="result-label">Capital Invertido</span>
                        <span class="sub-value" id="res-capital">$1,000.00</span>
                    </div>
                    <div class="sub-result">
                        <span class="result-label">Intereses Ganados</span>
                        <span class="sub-value" id="res-interes" style="color: #58a6ff;">$503.66</span>
                    </div>
                </div>

                <div class="visual-chart-container">
                    <div class="chart-bar bar-capital" id="bar-cap" style="height: 66%;">
                        <span class="bar-text">Capital</span>
                    </div>
                    <div class="chart-bar bar-interes" id="bar-int" style="height: 34%;">
                        <span class="bar-text">Ganancia</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
/* --- CONFIGURACIÓN DEL VIDEO --- */
#video-fondo {
    position: fixed;
    top: 0; 
    left: 0;
    width: 100%; 
    height: 100%;
    object-fit: cover;
    z-index: -2; /* Envía el video al fondo */
}

/* Capa oscura sobre el video para que el texto resalte */
.overlay {
    position: fixed;
    top: 0; 
    left: 0;
    width: 100%; 
    height: 100%;
    background: rgba(0, 0, 0, 0.6); /* Oscurece al 60% */
    z-index: -1; /* Capa intermedia */
}
/* CAJA DE COMENTARIOS */
.comentarios-box{
    margin-top: 40px;
    border-top: 1px solid #30363d;
    padding-top: 30px;
}

.comentarios-box h3{
    color: #58a6ff;
    margin-bottom: 20px;
}

.comentarios-box input,
.comentarios-box textarea{
    width: 100%;
    padding: 15px;
    margin-bottom: 15px;
    background: #161b22;
    border: 1px solid #30363d;
    border-radius: 15px;
    color: white;
    font-size: 15px;
    box-sizing: border-box;
}

.comentarios-box textarea{
    min-height: 140px;
    resize: vertical;
}

.btn-enviar{
    background: #58a6ff;
    color: #0d1117;
    border: none;
    padding: 14px 25px;
    border-radius: 20px;
    font-weight: bold;
    cursor: pointer;
    transition: .3s;
}

.btn-enviar:hover{
    transform: scale(1.05);
}
/* ESTILOS ESPECÍFICOS DE LA CALCULADORA */
.calc-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 30px;
    margin-top: 20px;
    text-align: left;
}

@media (max-width: 768px) {
    .calc-grid { grid-template-columns: 1fr; }
}

.input-group {
    margin-bottom: 20px;
}

.input-group label {
    display: block;
    color: #ffffff;
    font-weight: 600;
    margin-bottom: 8px;
    font-size: 0.95rem;
}

.input-group input {
    width: 100%;
    background: #0d1117;
    border: 1px solid #30363d;
    color: #ffffff;
    padding: 12px 15px;
    border-radius: 12px;
    font-size: 1.1rem;
    outline: none;
    box-sizing: border-box;
    transition: 0.3s;
}

.input-group input:focus {
    border-color: #58a6ff;
    box-shadow: 0 0 10px rgba(88, 166, 255, 0.2);
}

.btn-calcular {
    width: 100%;
    background: #58a6ff;
    color: #0d1117;
    border: none;
    padding: 15px;
    border-radius: 15px;
    font-weight: bold;
    font-size: 1rem;
    cursor: pointer;
    transition: 0.3s;
    letter-spacing: 1px;
}

.btn-calcular:hover {
    box-shadow: 0 0 20px rgba(88, 166, 255, 0.4);
    transform: translateY(-2px);
}

/* Panel de Resultados */
.calc-results {
    background: #1c2128;
    border: 1px solid #30363d;
    border-radius: 20px;
    padding: 25px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.result-box {
    border-bottom: 1px solid #30363d;
    padding-bottom: 15px;
    margin-bottom: 15px;
}

.result-label {
    display: block;
    color: #8b949e;
    font-size: 0.85rem;
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-bottom: 5px;
}

.result-value {
    font-size: 2.2rem;
    color: #ffffff;
    font-weight: bold;
    font-family: monospace;
}

.result-sub-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
}

.sub-value {
    font-size: 1.3rem;
    font-weight: bold;
    font-family: monospace;
    color: #ffffff;
}

/* Mini Gráfico HTML Dinámico */
.visual-chart-container {
    display: flex;
    align-items: flex-end;
    justify-content: center;
    gap: 20px;
    height: 120px;
    background: #0d1117;
    border-radius: 12px;
    padding: 15px;
    margin-top: 20px;
    border: 1px solid #22272e;
}

.chart-bar {
    width: 45%;
    border-radius: 6px 6px 0 0;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: height 0.6s cubic-bezier(0.4, 0, 0.2, 1);
    min-height: 25px;
}

.bar-capital { background: #30363d; border: 1px solid #444c56; }
.bar-interes { background: rgba(88, 166, 255, 0.2); border: 1px solid #58a6ff; }

.bar-text {
    font-size: 0.75rem;
    color: #ffffff;
    font-weight: bold;
}
/* FAQ */

.faq-box{
    background: rgba(22,27,34,0.8);
    border-radius: 25px;
    padding: 35px;
    border: 1px solid #30363d;
}

.faq-title{
    color:#58a6ff;
    margin-bottom:30px;
}

.faq-item{
    margin-bottom:20px;
}

.faq-question{
    width:100%;
    background:#2d333b;
    border:none;
    border-radius:20px;
    padding:20px 25px;
    color:white;
    font-size:1rem;
    cursor:pointer;
    display:flex;
    justify-content:space-between;
    align-items:center;
    transition:.3s;
    text-align:left;
}

.faq-question:hover{
    background:#37414d;
    border:1px solid #58a6ff;
}

.faq-question span{
    color:#58a6ff;
    font-size:1.5rem;
    font-weight:bold;
}

.faq-answer{
    max-height:0;
    overflow:hidden;
    transition:max-height .4s ease;
    background:rgba(13,17,23,.7);
    border-radius:15px;
    margin-top:10px;
    padding:0 20px;
    color:#adbac7;
    line-height:1.8;
}

.faq-answer.show{
    max-height:300px;
    padding:20px;
}
.info-grid{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px,1fr));
    gap: 25px;
    margin-top: 30px;
}

.info-card{
    background: rgba(22, 27, 34, 0.8);
    border: 1px solid #30363d;
    border-radius: 25px;
    padding: 25px;
    transition: 0.3s ease;
    text-align: left;
    backdrop-filter: blur(10px);
}

.info-card:hover{
    transform: translateY(-5px);
    border-color: #58a6ff;
    box-shadow: 0 10px 25px rgba(88,166,255,0.15);
}

.info-card h3{
    color: #58a6ff;
    margin-bottom: 15px;
}

.info-card p{
    color: #adbac7;
    line-height: 1.8;
}

.btn-expandir{
    margin-top: 20px;
    background: transparent;
    border: 2px solid #58a6ff;
    color: #58a6ff;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    transition: .3s;
}

.btn-expandir:hover{
    background: #58a6ff;
    color: #0d1117;
}

.contenido-extra{
    max-height: 0;
    overflow: hidden;
    transition: max-height .5s ease;
}

.contenido-extra.show{
    max-height: 1000px;
    margin-top: 20px;
}
    /* Estilos base para que se vea igual a tu imagen */
    .main-dashboard-container{
        background: #3d444d;
        border-radius: 30px;
        padding: 40px;
        max-width: 900px;
        margin: 50px auto;
        color: white;
        text-align: center;
        box-shadow: 0 20px 40px rgba(0,0,0,0.4);
    }

  .welcome-title { font-size: 3rem; margin: 10px 0; font-family: 'Times New Roman', serif; }
    .system-tag { color: #58a6ff; letter-spacing: 3px; font-size: 0.8rem; font-weight: bold; }
    .subtitle { color: #8b949e; margin-bottom: 40px; }

    .menu-grid { display: flex; gap: 25px; justify-content: center; margin-bottom: 40px; }

    .menu-item {
        background: #2d333b;
        border: 2px solid transparent;
        border-radius: 25px;
        padding: 25px;
        width: 220px;
        cursor: pointer;
        transition: 0.3s;
        color: white;
    }

    .menu-item.active { border-color: #ffffff; background: #3d444d; }

    .badge.blue { background: #58a6ff; color: #0d1117; padding: 5px 15px; border-radius: 12px; font-weight: bold; }

    /* ESTILOS DE TU BIBLIOTECA */
    .info-content-box {
        background: rgba(22, 27, 34, 0.7);
        border: 1px solid #30363d;
        padding: 40px;
        border-radius: 25px;
        backdrop-filter: blur(10px);
    }

    .hidden-content {
        max-height: 0;
        overflow: hidden;
        transition: max-height 0.8s ease-in-out;
    }

    .hidden-content.show {
        max-height: 10000px; /* Suficiente para tus 27 hojas */
    }

    .btn-leer-mas {
        background: transparent;
        border: 2px solid #58a6ff;
        color: #58a6ff;
        padding: 12px 35px;
        border-radius: 30px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn-leer-mas:hover {
        background: #58a6ff;
        color: #0d1117;
    }

    /* LÓGICA DE PESTAÑAS */
    .tab-content { display: none; }
    .active-tab { display: block; animation: fadeIn 0.5s ease; }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(10px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

<script>
function calcularInversion() {
    // 1. Obtener los valores ingresados por el usuario
    let P = parseFloat(document.getElementById('capital').value);
    let r = parseFloat(document.getElementById('tasa').value) / 100;
    let t = parseInt(document.getElementById('tiempo').value);

    // Validación básica para evitar roturas de script
    if (isNaN(P) || isNaN(r) || isNaN(t) || P <= 0 || t <= 0) {
        alert("Por favor, ingresa valores válidos y mayores a cero.");
        return;
    }

    // 2. Aplicar la fórmula matemática de interés compuesto
    let A = P * Math.pow((1 + r), t);
    let totalInteres = A - P;

    // 3. Formatear como moneda de curso legal (Dólar USD)
    let formatter = new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD'
    });

    // 4. Inyectar resultados en la interfaz
    document.getElementById('monto-final').innerText = formatter.format(A);
    document.getElementById('res-capital').innerText = formatter.format(P);
    document.getElementById('res-interes').innerText = formatter.format(totalInteres);

    // 5. Ajustar proporciones del gráfico visual dinámico
    let pctCapital = (P / A) * 100;
    let pctInteres = (totalInteres / A) * 100;

    document.getElementById('bar-cap').style.height = pctCapital + "%";
    document.getElementById('bar-int').style.height = pctInteres + "%";
}
function toggleFAQ(boton){

    const respuesta =
        boton.nextElementSibling;

    const icono =
        boton.querySelector("span");

    respuesta.classList.toggle("show");

    icono.innerHTML =
        respuesta.classList.contains("show")
        ? "−"
        : "+";
}
// Función para cambiar entre INFO, FAQ y CALC
function toggleInfo(boton){

    const contenido =
        boton.nextElementSibling;

    contenido.classList.toggle("show");

    if(contenido.classList.contains("show")){
        boton.innerHTML = "Mostrar menos";
    }else{
        boton.innerHTML = "Ver más";
    }
}
function mostrarSeccion(id) {
    document.querySelectorAll('.tab-content').forEach(tab => tab.classList.remove('active-tab'));
    document.querySelectorAll('.menu-item').forEach(btn => btn.classList.remove('active'));
    
    document.getElementById(id).classList.add('active-tab');
    event.currentTarget.classList.add('active');
}

// Tu función de expansión
function toggleContenido() {
    var contenido = document.getElementById("contenido-extenso");
    var boton = document.getElementById("btn-leer-mas");
    
    if (contenido.classList.contains("show")) {
        contenido.classList.remove("show");
        boton.innerHTML = "PULSE PARA MÁS INFORMACIÓN";
        // Scroll suave hacia arriba al cerrar
        window.scrollTo({ top: 100, behavior: 'smooth' });
    } else {
        contenido.classList.add("show");
        boton.innerHTML = "MOSTRAR MENOS";
    }
}
</script>