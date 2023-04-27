<html>
<head>
<title>Northern Uganda</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Northern Uganda </b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; Stuart Price/IRIN</font> </td></tr> </table>
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



g_ImageTable[g_imax++] = new Array ("../images/originals/2006419.jpg", "A young boy chews on a piece of sugar cane in Padibe internally displaced people's (IDP) camp in Kitgum District, northern Uganda. &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064191.jpg", "Women and children wait with their jerry cans to collect clean water pumped from a borehole in Padibe internally displaced people's (IDP) camp in Kitgum District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641910.jpg", "A tin once containing vegetable oil is used to cover the window of a hut in Patongo internally displaced people's (IDP) camp in Kitgum District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641911.jpg", "A mother and her young son wait to see a doctor at the only health centre in Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641912.jpg", "A young boy studies his school books in Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641913.jpg", "Jan Egeland, the United Nations Under Secretary-General for Humanitarian Affairs and Emergency Relief Co-ordinator, tours Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641914.jpg", "A group of young children peer through a bullet hole in the wall of a derelict building in Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641915.jpg", "Jan Egeland, the United Nations Under Secretary-General for Humanitarian Affairs and Relief Co-ordinator visits Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641916.jpg", "Jan Egeland, the United Nations Under Secretary-General for Humanitarian Affairs and Emergency Relief Co-ordinator greets residents of Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641917.jpg", "Jan Egeland, the United Nations Under Secretary-General for Humanitarian Affairs and Emergency Relief Co-ordinator, tours Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200641918.jpg", "Mothers and their young children wait to see a doctor at the only health centre in Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064192.jpg", "A young boy climbs on a fence in Padibe internally displaced people's (IDP) camp in Kitgum District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064193.jpg", "A house that got burnt down following a fire in the Padibe camp, Kitgum District. Many IDPs have lost their properties to fires that are common during dry season in the camps.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064194.jpg", "A father craddles his newly born child in Padibe internally displaced people's (IDP) camp in Kitgum District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064195.jpg", "Young children in Padibe internally displaced people's (IDP) camp in Kitgum District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064196.jpg", "A fighting vehicle of the Uganda People's Defense Force (UPDF) passes through a camp for internally displaced people (IDP) in Kitgum District, northern Uganda. The many camps across the region are home to over 1.7 million people displaced by the near two decade long rebellion against the Ugandan government by the Lord's Resistance Army (LRA).  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064197.jpg", "Children pose for a photograph at sunrise in Patongo internally displaced people's (IDP) in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064198.jpg", "Young children gather in the early morning in Patongo internally displaced people's (IDP) in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20064199.jpg", "A young child in Patongo internally displaced people's (IDP) camp in Pader District, northern Uganda.  &copy Stuart Price/IRIN");
//extend the above list as desired
g_dwTimeOutSec=5

////End configuration//////////////////////////////

if (document.getElementById||document.all)
window.onload=Play

</script> </p>

</td>
</tr>
</table>
<hr color="#000000" size="1"></td>
</tr> 
</table>

<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script>
</body>
</html>