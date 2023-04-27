<html>
<head>
<title>The aftermath of Israeli attacks in Lebanon</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include file="../includes/substyle.inc"-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="760" cellspacing="5" cellpadding="0">
<tr>
<td width="70%">
<font face="arial" color="#486DB4" style="font-size:12pt"><b>The aftermath of Israeli attacks in Lebanon</b></font></td>
<td width="30%"><b><a href="http://www.irinnews.org/photogallery/iringallery.asp">IRIN Photo Gallery</a> | <a HREF='JavaScript:this.close()'>close</a></b></td>
</tr> 

<tr><td valign="top" align="center" colspan="2" style="border-top: 1px solid #000000" > <table width="600" cellspacing="3" cellpadding="3"> 

<tr> <td valign="top" height="550"> <p align="center"> <br> <img src="../images/design/prev.gif" id="btnPrev" onClick="Prev();" width="40"> 
<img src="../images/design/playstop.gif" id="bntPlay" onClick="Play()" width="80"> 
<img src="../images/design/nxt.gif" id="btnNext" onClick="Next();" width="40"></p><div align="center"> 

<table width="450" cellspacing="0" cellspadding="0" border="0"> <tr><td align="left"> 
<font size="1" face="arial">Please be patient while the images load</font> </td><td align="right"> 
<font size="1" face="arial" color="#003399">&copy; IRIN</font> </td></tr> </table>
<img name="_Ath_Slide" width="550" id="_Ath_Slide" onload="OnImgLoad()"></div>
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
window.setTimeout("Tick()", g_dwTimeOutSec*450);
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
g_ImageTable[g_imax++] = new Array ("../images/originals/200682923.jpg", "UN Secretary-General Kofi Annan and Lebanese Prime Minister Fouad Siniora respond host a press conference in Beirut. [Date picture taken: 08/28/2006]. &copy Christian Henderson/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068298.jpg", "Woman inside her damaged home in Yaroun. [Date picture taken: 08/22/2006]. &copy Dina Debbas/IRIN /IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068293.jpg", "Child in Aita Shaab standing in front of two unexploded shells. [Date picture taken: 08/22/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068294.jpg", "Hassan- a twelve year old from Aita Shaab. [Date picture taken: 08/22/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068291.jpg", "Children in front of rubble in Marwahin. [Date picture taken: 08/22/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068292.jpg", "Child in Marwahin. [Date picture taken: 08/22/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682829.jpg", "Man, chest deep into water, holds dead fish at the damaged fishing port in Ouzai, Beirut&#8217;s southern suburbs, 8 August 2006. The Israel-Lebanon conflict began when Hezbollah unit conducted a cross-border raid, capturing two Israeli soldiers and killing three. Israel responded with air strikes across Lebanon, during which more than 7,000 targets were struck. A ground invasion of southern Lebanon followed, together with air naval blockade, while Hezbollah launched thousands missiles into northern Israel and engaged the Israeli army on the ground in guerilla warfare. A United Nations-brokered ceasefire went into effect on 14 August 2006. Since then, fighting has largely ceased. &copy Focusmideast/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682817.jpg", "Layal, eight years old, sitting on her parents bed in Yaroun. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682815.jpg", "Marwa returning from hospital following injuries incurred from cluster bombs. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682813.jpg", "Hassan, a twelve year old from Aita Shaab. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682811.jpg", "A child in Marwahin. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682810.jpg", "Asma, a nine year old coming out of her destroyed home in Marwahin. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068289.jpg", "Children watching the burial of the victims of Qana. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068287.jpg", "Child in Hanaway peering over the wall, looking at a 2000 lbs unexploded bomb. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068288.jpg", "Mother and child in Qana. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068285.jpg", "Skina, a nine year old from Aita Shaab, in hospital being treated for injuries stemming from a cluster bomblet that exploded whilst she and her cousins were playing with it. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068286.jpg", "Marwa, an eleven year old from Aita Shaab,in hospital being treated for injuries stemming from a cluster bomblet that exploded whilst she and her cousins were playing with it.[Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068283.jpg", "Giant crater in front of the public school in Bint Jbeil. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/originals/20068280.jpg", "Refugees returning to their damaged home in Khiam. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068282.jpg", "Family living above their destroyed garage in Yohmor. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068281.jpg", "Refugees returning to their damaged home in Nabatiyeh. [Date picture taken: 08/20/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068238.jpg", "Members of Jihad al-Bina look at a map of destroyed properties in the southern suburbs. [Date picture taken: 08/22/2006]. &copy Christian Henderson/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068236.jpg", "Estruction of homes has left hundreds of thousands displaced. [Date picture taken: 08/22/2006]. &copy Christian Henderson/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/originals/200682236.jpg", "This dirty reservoir has become the main supply of water for residents. [Date picture taken: 08/21/2006]. &copy Serene Assir/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682231.jpg", "Women celebrating arrival of Lebanese troops in Shebaa. [Date picture taken: 08/20/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682232.jpg", "former prisoner of Khiam Detention Centre holds Hezbollah and Lebanese flags over the rubble of the prison. [Date picture taken: 08/20/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682230.jpg", "An unexploded Israeli missile left in the backyard of a house in Kfarchouba. [Date picture taken: 08/20/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200682225.jpg", "Destroyed Israeli tractor in Ayta el Chaab. [Date picture taken: 08/20/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006819.jpg", "Israeli cluster bombs, like these ones lying outside Nabatiyeh, continue to kill civilians. [Date picture taken: 08/18/2006]. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068184.jpg", "Muhammad Al Melhem, 13, had to have his leg amputated following an Israeli air strike. [Date picture taken: 08/16/2006]. &copy Hadi Tawil/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068178.jpg", "Red Cross workers found 16 bodies under the rubble in Ainata, four of which were children under 10. [Date picture taken: 08/16/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068176.jpg", "Washing clothes has now become a communal affair in the schoolyard. [Date picture taken: 08/17/2006]. &copy Alex Warren/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006823.jpg", "The home of a local resident of Baalbek following an Israeli air strike. <br>[Date picture taken: 08/01/2006]. &copy Peter Speetjens/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006830.jpg", "A Quran blows in the wind amid the wreckage of houses in Nabatiyeh. <br>[Date picture taken: 08/02/2006] . &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006840.jpg", "A dead crab at Ramlet el-Baida public beach in Beirut, which was hit by thousands of tonnes of heavy fuel oil after Israeli air strikes hit tanks at a power plant in the coastal village of El-Jiye, 30km south of the capital, 3 July 2006. Officials estimate that an additional 15,000 tonnes of oil are expected to leak into the Mediterranean from a tank that is still burning.<br> &copy Haitham Mossawi/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/2006877.jpg", "A bridge that has been bombed in the Bekaa Valley. <br>[Date picture taken: 07/23/2006] . &copy Christian Henderson/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068157.jpg", "10 storey building in haret hreik. <br>[Date picture taken: 08/15/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200681510.jpg", "People inspecting damages to their houses in the southern suburbs of Beirut. <br>[Date picture taken: 08/15/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200681518.jpg", "Items found on the ground by Lebanese returning to their southern Beirut homes after 34 days of conflict. <br>[Date picture taken: 08/15/2006]. &copy Marie Claire Feghali/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068915.jpg", "Displaced children with a food box they received. Faculty of Law, Lebanese University. Beirut.<br>[Date picture taken: 08/08/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/20068916.jpg", "Displaced children drinking water from a hose. Drinking water has become scarce. Faculty of Law, Lebanese University. Beirut.<br>[Date picture taken: 08/08/2006]. &copy Dina Debbas/IRIN");

g_ImageTable[g_imax++] = new Array ("../images/originals/2006895.jpg", "Vaccination by Unicef for displaced children. Faculty of Law, Lebanese University. Beirut.<br>[Date picture taken: 08/08/2006]. &copy Dina Debbas/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673023.jpg", "Thirty coffins were buried in a mass grave in Tyre on 29 July. <br>[Date picture taken: 07/29/2006]. &copy Hugh Macleod/IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673018.jpg", "After hearing on TV that it was safe to evacuate their village in the south of lebanon (next to Bint Jbeil) they escaped and put 3 white flags on their bus. It was still hit, She is just fifteen, Zahra' Hospital, Bir Hassan, Southern Suburb of Beirut. <br>[Date picture taken: 07/27/2006]. &copy Dina Debbas /IRIN");
g_ImageTable[g_imax++] = new Array ("../images/originals/200673014.jpg", "She is about 8 years old, she still doesn't know that she lost her father and two brothers, her mother is at the hospital in a critical condition, Rafik Hariri Hospital Governement, Bir Hassan, Southern Suburb of Beirut. <br>[Date picture taken: 07/26/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067305.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. <br>[Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067306.jpg", "Displaced from the south in Al Huda School, behind Sadate street, Beirut. <br>[Date picture taken: 07/18/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/20067303.jpg", "Displaced from the South, Makdessi street, Beirut. <br>[Date picture taken: 07/25/2006]. &copy Dina Debbas /IRIN ");
g_ImageTable[g_imax++] = new Array ("../images/originals/200672816.jpg", "The first WFP convoy to the south of Lebanon arrived on 26 July. <br>[Date picture taken: 07/26/2006]. &copy WFP/Photolibrary ");


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