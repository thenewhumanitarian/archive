<html>
<head>
<title>Avian Influenza</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Avian Influenza</b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="600" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table>
<img name="_Ath_Slide" width="450" id="_Ath_Slide" onload="OnImgLoad()"></div>
<font size="1" face="arial"> 
<p align="center"><b></b> <SPAN id="_Ath_FileName"> </SPAN> <br> <b>Photo: <SPAN id="_Ath_Img_X"></SPAN> 
&nbsp;of <SPAN id="_Ath_Img_N"></SPAN></b></p></font> <p align="center">

<script language="JavaScript">
<!--
////////////////////////////////////////////////////////////// more info
function toggleDetails(num) 
	{
		if(document.getElementById)
			{ 
				objRef = document.getElementById("descriptionTxt" + num);
				expanderRef = document.getElementById("expander" + num);
	
				if (objRef.style.display=="none")
					{
						objRef.style.display = "block";
						expanderRef.setAttribute("src", "../images/design/minus.gif");
						expanderRef.setAttribute("alt", "Hide links");
					}
				else if (objRef.style.display=="block" || objRef.style.display=="")
					{
						objRef.style.display = "none";
						expanderRef.setAttribute("src", "../images/design/plus.gif");
						expanderRef.setAttribute("alt", "Display links");
					}
			}
	}

// -->
</script>

<script language="JavaScript1.2">

/*
Interactive Image slideshow with text description
By Christian Carlessi Salvadó (cocolinks@c.net.gt). Keep this notice intact.
Visit http://www.dynamicdrive.com for script
*/


g_fPlayMode = 0;
g_iimg = -1;
g_imax = 0;
g_ImageTable = new Array();

function ChangeImage(fFwd)
{
if (fFwd)
{
if (++g_iimg==g_imax)
g_iimg=0;
}
else
{
if (g_iimg==0)
g_iimg=g_imax;
g_iimg--;
}
Update();
}

function getobject(obj){
if (document.getElementById)
return document.getElementById(obj)
else if (document.all)
return document.all[obj]
}

function Update(){
getobject("_Ath_Slide").src = g_ImageTable[g_iimg][0];
getobject("_Ath_FileName").innerHTML = g_ImageTable[g_iimg][1];
getobject("_Ath_Img_X").innerHTML = g_iimg + 1;
getobject("_Ath_Img_N").innerHTML = g_imax;
}


function Play()
{
g_fPlayMode = !g_fPlayMode;
if (g_fPlayMode)
{
getobject("btnPrev").disabled = getobject("btnNext").disabled = true;
Next();
}
else 
{
getobject("btnPrev").disabled = getobject("btnNext").disabled = false;

}
}
function OnImgLoad()
{
if (g_fPlayMode)
window.setTimeout("Tick()", g_dwTimeOutSec*1000);
}
function Tick() 
{
if (g_fPlayMode)
Next();
}
function Prev()
{
ChangeImage(false);
}
function Next()
{
ChangeImage(true);
}


////configure below variables/////////////////////////////

//configure the below images and description to your own. 



g_ImageTable[g_imax++] = new Array ("../images/originals/200611315.jpg", "Vietnam, Le Thi Yen poses with a photo of her son Nguyen Duc Long, who died of avian flu in 2004, when he was four years old. The family, who live in the village of Giang Trieu, near Hanoi, Viet Nam, had killed and eaten chickens that had the disease. &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611317.jpg", "Vietnam, After dying of avian flu or being culled, chicken carcasses are burned at a farm in Long An province, near Ho Chi Minh City, Viet Nam. Because of the risk of losing their flocks to avian flu, many poultry farmers have stopped duck and chicken farming, causing a drop in demand for ducklings and chicks. Therefore, these ducklings will be destroyed because there is no market for them.   &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611318.jpg", "Vietnam, Men wear special clothing to protect themselves against the avian flu virus as they burn infected chicken carcasses in Long An province, near Ho Chi Minh City, Viet Nam.  &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611319.jpg", "Indonesia, A lab technician at the Disease Investigation Centre near Yogyakarta, Indonesia checks for the avian flu virus in samples taken from poultry.  &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611320.jpg", "Vietnam, Animal health technicians disinfect a farm in Tien Giang province, near Ho Chi Minh City, Viet Nam, where carcasses of ducks that died of or were culled because of avian flu have been burned and buried.   &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611321.jpg", "Indonesia vaccinated 114 million poultry against avian flu in 2004. &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611322.jpg", "Egg farm near Yogyakarta, Indonesia.  &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611323.jpg", " Poultry market, Yogyakarta, Indonesia.  &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611324.jpg", "Duck farm in Thailand with newly installed net to keep ducks and wild birds apart, a measure against spread of the avian flu virus.  &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/200611325.jpg", "Technicians check poultry samples for avian flu virus, National Institute for Animal Health, Bangkok, Thailand.  &copy FAO");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066715.jpg", "Chickens and birds continue to be sold openly on the Kabul market, Afghanistan.  &copy Sultan Massodi/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20066236.jpg", "Jennifer Mwale says sales are down because of the bird flu panic, Zambia.  &copy Nebert Mulenga/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006530.jpg", "Government says country is free of bird flu, IRAQ.  &copy Afif Sarhan/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063202.jpg", "The government does not intend to extend an urban ban on domestic breeding to rural areas, Egypt.  &copy Victoria Hazou/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20062204.jpg", "Chickens crammed into pens at Kliptown's informal market, Johannesburg.  &copy Bill Corcoran/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20062205.jpg", "Chickens and pigeons in close proximity at Kliptown's informal , Johannesburg.  &copy Bill Corcoran/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200512166.jpg", "Whole, live, Senegalese birds are squeezed out of the market by frozen thighs and wings, imported from Europe and America.  &copy Claire Soares/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200621326.jpg", "Two members of a veterinary team that culled birds at Sambawa Farms dressed in protective clothing.  &copy Dulue Mbachu/IRIN");


//extend the above list as desired
g_dwTimeOutSec=5

////End configuration//////////////////////////////

if (document.getElementById||document.all)
window.onload=Play

</script> </p>

</td>
</tr>
</table>
<br></td>
</tr> 
</table>

<hr color="#000000" size="1"> 
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script></body>
</html>