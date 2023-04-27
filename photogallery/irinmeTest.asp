<html>
<head>
<title>The aftermath of Israeli attacks in Lebanon</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="32%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>The aftermath of Israeli attacks in Lebanon</b></font></td>
<td width="68%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a> | <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

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
g_ImageTable[g_imax++] = new Array ("../images/originals/200673025.jpg", "Beach at Ramlet al-Baida with smoke coming from Jiyeh power station in distant background. [Date picture taken: 07/29/2006]. &copy Christian Henderson/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673023.jpg", "Thirty coffins were buried in a mass grave in Tyre on 29 July. [Date picture taken: 07/29/2006]. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673019.jpg", "After hearing on TV that it was safe to evacuate their village in the south of lebanon (next to Bint Jbeil) they escaped and put 3 white flags on their bus. It was still hit. She is only fifteen, Zahra' Hospital, Bir Hassan, Southern Suburb of Beirut. [Date picture taken: 07/27/2006]. &copy Dina Debbas /IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673020.jpg", "After hearing on TV that it was safe to evacuate their village in the south of lebanon (next to Bint Jbeil) they escaped and put 3 white flags on their bus. It was still hit. She is only fifteen, Zahra' Hospital, Bir Hassan, Southern Suburb of Beirut. [Date picture taken: 07/27/2006]. &copy Dina Debbas /IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673018.jpg", "After hearing on TV that it was safe to evacuate their village in the south of lebanon (next to Bint Jbeil) they escaped and put 3 white flags on their bus. It was still hit. She is only fifteen, Zahra' Hospital, Bir Hassan, Southern Suburb of Beirut. [Date picture taken: 07/27/2006]. &copy Dina Debbas /IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673017.jpg", "Her mother is in the bed next to her, injured as well. She still doesn't know that she has lost her husband, Zahra' Hospital, Bir Hassan, Southern Suburb of Beirut. [Date picture taken: 07/27/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673014.jpg", "She is about 8 years old, she still doesn't know that she lost her father and two brothers, her mother is at the hospital in a critical condition, Rafik Hariri Hospital Governement, Bir Hassan, Southern Suburb of Beirut. [Date picture taken: 07/26/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673015.jpg", "She is about 8 years old, she still doesn't know that she lost her father and two brothers, her mother is at the hospital in a critical condition, Rafik Hariri Hospital Governement, Bir Hassan, Southern Suburb of Beirut. [Date picture taken: 07/26/2006]. &copy Dina Debbas /IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067307.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. [Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067308.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. [Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067304.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. [Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067305.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. [Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067306.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. [Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067303.jpg", "Displaced from the South, Makdessi street, Beirut. [Date picture taken: 07/25/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067302.jpg", "Displaced people have found shelter in public parks, Sanayeh garden, Beirut. [Date picture taken: 07/21/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067300.jpg", "Food distribution, Al Houda Association, Sadate street, Beirut. [Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006729.jpg", "Oil spill at Ramlet al-Baida beach in Beirut. [Date picture taken: 07/29/2006]. &copy Christian Henderson/IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/200672818.jpg", "The UN has significantly increased its aid to Lebanon since the beginning of the Israeli attacks on 12 July. [Date picture taken: 07/26/2006]. &copy WFP/Photolibrary ");
g_ImageTable[g_imax++] = new Array ("../images/originals/200672816.jpg", "South Lebanon has witnessed massive destructions since the beginning of the Israeli attacks on 12 July. [Date picture taken: 07/26/2006]. &copy WFP/Photolibrary ");
g_ImageTable[g_imax++] = new Array ("../images/originals/200672812.jpg", "Waziriya Abboud escaped with her family after their home in south Lebanon was destroyed. [Date picture taken: 07/28/2006]. &copy Hugh Macleod/IRIN ");



//extend the above list as desired
g_dwTimeOutSec=10

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