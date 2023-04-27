<html>
<head>
<title>GUINEA – Prisoners Underground</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="64%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>GUINEA BISSAU – Prisoners Underground </b></font></td>
<td width="36%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="600" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right">&nbsp;</td>
</tr> </table>
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
window.setTimeout("Tick()", g_dwTimeOutSec*2000);
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



g_ImageTable[g_imax++] = new Array ("../images/20072714.jpg", "View from the street of Guinea Bissau’s so-called ‘high-security detention centre’, 27 January 2007. The  detention centre was abandoned after the war of independence that ended in 1974 but was revived after a civil war in 1998 destroyed the country’s only prison.  &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/20072713.jpg", "Stairs leading to underground cells at the detention centre, Guinea Bissau, 27 January 2007.  &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/20072712.jpg", "The only source of light for inmates in the underground cells, 27 January 2007. The cells  have leaking pipes and no electricity. The detention centre holds hardened criminals and petty criminals, as well as those who have not been tried.  &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007276.jpg", "Inmates at the entrance to their underground cell at the old port city in Guinea Bissau, 27 January 2007. The jail holds hardened criminals and petty criminals together with prisoners yet to stand trial.   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/20072711.jpg", "Inmates in front of their underground cells, the only other place they can go, 27 January 2007.   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007278.jpg", "An inmate sitting outside his unlit, unfurnished underground cell which he shares with seven other prisoners, 27 January 2007 .   &copy David Hecht/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/2007277.jpg", "Inmates let out of their underground cells in the prison facility, in Guinea Bissau, 27 January 2007.   &copy David Hecht/IRIN");


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
</body>
</html>