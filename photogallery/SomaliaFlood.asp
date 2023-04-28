<html>
<head>
<title>Flooding in Somalia</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>Flooding in Somalia </b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a>  |  <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
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



g_ImageTable[g_imax++] = new Array ("../images/200612184.jpg", "An aerial view of the flooded Juba River in southern Somalia, 14 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612185.jpg", "An aerial view of the flooded Juba River in southern Somalia, 14 December 2006.   &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121823.jpg", "Women wash clothes in the flood-waters at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006. &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121822.jpg", "Children play in the flood-waters at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121821.jpg", "Women prepare food at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121820.jpg", "A young girl cleans food at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121819.jpg", "A young girl cleans food at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121818.jpg", "A man fixes his fishing net while waiting for his mobile phone to re-charge at an internally displaced persons (IDPs) camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121817.jpg", "Children play at internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121816.jpg", "A woman carries drinking water at an internally displaced persons (IDPs) camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121815.jpg", "A woman prepares food at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121814.jpg", "A woman with her children at an internally displaced persons (IDPs) camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121813.jpg", "A woman with her child at an internally displaced persons (IDPs) camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121812.jpg", "A girl at an internally displaced persons camp in Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121811.jpg", "Internally displaced persons who have re-located to the higher levels of the road from Somalia’s port city of Kismayo to Jamame, due to heavy floods, Arare, 12 km from Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121810.jpg", "Women collect water from the Juba River, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612189.jpg", "Men transport food aid across the Juba River, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612188.jpg", "Men unload food aid from a wooden boat on the banks of the Juba River, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612187.jpg", "Women and children wash in the waters of the flooded Juba River near Jamame, southern Somalia, 15 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/200612186.jpg", "A United Nations helicopter in Kismayo, Somalia, 14 December 2006.  &copy Manoocher Deghati/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/2006121824.jpg", "An aerial view of a house nearly submerged by the flooded Juba River in southern Somalia, 14 December 2006.   &copy Manoocher Deghati/IRIN");
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

<hr color="#000000" size="1"> <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-1171245-1";
urchinTracker();
</script>
</body>
</html>