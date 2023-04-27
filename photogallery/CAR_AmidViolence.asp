<html>
<head>
<title>Living amid violence in Kaga Bandoro, north-central CAR</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="41%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Living amid violence in Kaga Bandoro, <br>
north-central CAR</b></font></td>
<td width="59%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="500" cellspacing="3" cellpadding="3" align="left"> 

<tr> <td valign="top" height="380"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="300" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table>
<img name="_Ath_Slide"  id="_Ath_Slide" onload="OnImgLoad()"></div>
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


g_ImageTable[g_imax++] = new Array ("../images/200612192.jpg", "Houses destroyed by fire in Bamala Mbeti village, Kaga Bandoro region, north-central CAR, 14 December 2006. Thousands of houses in north and north-west CAR have been attacked in recent months, with the worst of the violence now focused on the region north of Kaga Bandoro, some 300 kilometres from the capital Bangui.  &copy Nicholas Reader/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/20061219.jpg", "An old woman stands in front of the ruins of her former home, north-central CAR, 13 December 2006.   &copy Nicholas Reader/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612190.jpg", "Non-governmental fighters, Kaga Bandoro region, north-central CAR, 14 December 2006. They say they are affiliated with the l’Armée populaire pour la restoration de la république et la démocratie (APRD), headed by Lt Bedaya N’Djadder, a former gendarme who defected from government service.  &copy Nicholas Reader/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612214.jpg", "A young man displays his homemade gun, Kaga Bandoro region, north-central CAR, 14 December 2006.  &copy Nicholas Reader/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612212.jpg", "Villagers in the Kaga Bandoro region, north-central CAR, 14 December 2006. The villagers fled down this path after the army allegedly stole their food and belongings and set fire to their homes.  &copy Nicholas Reader/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612213.jpg", "A family living on farmland, three kilometres behind the village of Bamala Mbeti, Kaga Bandoro region, north-central CAR, 14 December 2006. They built a small shelter using materials salvaged from their former home. The children, 3, 5 and 8, are no longer able to attend school. The family – who have to contend with cold nights - are all suffering diarrhoea, and worry about malaria in the mosquito-infested fields.  &copy Nicholas Reader/IRIN");

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