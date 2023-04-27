<html>
<head>
<title>BURUNDI :Drought 2006 Photo slide show</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>BURUNDI: Drought 2006 </b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a> | <a HREF='JavaScript:this.close()'>IRIN home page</a></b></td>
</tr> 

<tr><td valign="top" colspan="2"  style="border-top: 1px solid #000000"> <table width="600" cellspacing="3" cellpadding="3" align="left" style="border-right:1 dotted #CCCCCC"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table><img name="_Ath_Slide" width="450" id="_Ath_Slide" onload="OnImgLoad()"></div>
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



g_ImageTable[g_imax++] = new Array ("../images/originals/20063170.jpg", "Burundi, Seed Fair organized by Catholic Relief Service in the drought affected province of Kirundo in Burundi. A man is collecting his coupons before entering the market to purchase beans and other grains for planting. &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063171.jpg", "Burundi, A Burundi woman vendor at the seed fair in Kirundo waiting for customers.  &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063172.jpg", "Burundi, A beneficiary of the seed fair is buying some beans from a local vendor in the Kirundo province of Burundi. &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063173.jpg", "Burundi, Burundi women and children waiting for a food distribution outside the Bugabira administrator's office in the drought stricken Kirundo province.  &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063174.jpg", "Burundi, Burundi farmers sitting outside the Bugabira administrator office in North West Kirundo, waiting for a food distribution.  &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063175.jpg", "Burundi, Lake Gacamirinda in the northwestern region of Bugabira in Burundi is slowly drying up due to the drought.  &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063176.jpg", "Burundi, An abandoned coffee plantation in Cewe, small locality in the drought affected Kirundo province, North of Burundi.  &copy Jocelyne Sambira/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20063177.jpg", "Burundi, Local Administrator, Gerard Rugendintwaza, sitting in his office of the Bugabira commune in Northern Kirundo.  &copy Jocelyne Sambira/IRIN");


//extend the above list as desired
g_dwTimeOutSec=5

////End configuration/////////////////////////////

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