
//var text=document.getElementById("fffk").innerHTML











function ggggggg(o){
    var d=o.replace(new RegExp('\n', 'g'), '#');
    var d=d.replace(new RegExp(' ', 'g'), '\t');
    var d=d.replace(new RegExp('\t', 'g'), '@');
    //console.log(d)
    var fuuk=[]
    for(var i=0;i<d.split("#").length;i=i+3){
    var name=    d.split("#")[i]
    var dierge=[]
    var disange=[]
        for(var e=1;e<d.split("#")[i+1].split("@").length;e++){
            dierge.push( d.split("#")[i+1].split("@")[e])
        }
        for(var e=1;e<d.split("#")[i+2].split("@").length;e++){
            disange.push(Number(d.split("#")[i+2].split("@")[e]) )
        }
        fuuk.push(name,dierge,disange)
        //console.log(fuuk)
    }
return fuuk
}













function ssssssssss(mod,all,score,map,nandu) {
    var result=1;
    var f=1,kf=1;
    var perfect=0,good=0,combo=0,times=0,snum=0,cnum=0;
if(mod=="kc"){
    //var q=1

    //os.open((string("课题模式")+filename).data());
    for(var i=0;i<all.length;i++)
    {
        perfect=0;
        if(score>650000)
        { 
            perfect=Math.floor((score-650000)/(350000/all[i]));
        } 
        for(;perfect<=all[i];perfect++)
        {
            if(perfect*(1000000/all[i])-1>score)
            {
                break;
            }
            for(good=0;good<=all[i]-perfect;good++)
            {
                if(perfect*1000000/all[i]+good*650000/all[i]-1>score)
                {
                    break;
                }
                //console.log(((perfect+0.65*good)*1000000/all[i]+0.5),good,perfect)
                if(Math.round((perfect+0.65*good)*1000000/all[i])==score)
                {
                    cnum++;
                    result=0;
                    f=0;
                    kf=0;
                    times++;
               //console.log(times)     
                    addlog(times,perfect,good,all[i],nandu[i],map);
    
                    break;
    
                }
            }
        }
        if(f==0)
        {
            //snum+=snums[all[i]];
            //os<<endl;
            f=1;
         } 
        times=0;
    }
    /*
    
    console.log("共有个可以达到"+score+"分的谱面,")
    console.log("共"+cnum+"种可行方法")
*/
    return cnum
    
}
else if(mod=="pt"){

/*普通模式*/


kf=1;
f=1;
snum=0;
cnum=0;
//os.open((string("普通模式")+filename).data());
for(var i=0;i<all.length;i++)
{
    perfect=0;
    if(score>650000*0.9+100000)
    { 
        if(combo==0){}else{
            perfect=Math.floor((score-(650000*0.9+100000))/(350000*0.9/combo));
        }
    } 
    for(;perfect<=all[i];perfect++)
    {
        if(perfect*900000.0/combo-1>score)
        {
            break;
        }
        for(good=0;good<=all[i]-perfect;good++)
        {
            if(perfect*900000.0/all[i]+good*650000*0.9/all[i]-1>score)
            {
                break;
            }
            for(combo=Math.floor((good+perfect)/(all[i]-good-perfect+1));combo<=perfect+good;combo++)
            {
                if((good+perfect)%(all[i]-good-perfect+1)==0){}else
                {
                
                    combo++;
                }
                if(Math.round((0.9*(perfect+0.65*good)+0.1*combo)*1000000/all[i])==score)
                {
                    cnum++;
                    result=0;
                    kf=0;
                    f=0;
                    //console.log(times)
                    times++;
                    //console.log(times)
                    addlog(times,perfect,good,combo,all[i],nandu[i],map);
                    break;
                }
            }
        }
    } 
    if(f==0)
    {
        //snum+=snums[all[i]];
        //os<<endl;
        f=1;
     } 	
    times=0;
} 
/*
console.log("共有个可以达到"+score+"分的谱面,")
console.log("共"+cnum+"种可行方法")
*/

return cnum
}







}

var yuepu="Glaciaxion\n\tEZ\tHD\tIN\tLegacy\t\n\t66\t418\t729\t611\nEradication$Catastrophe\n\tEZ\tHD\tIN\t\n\t111\t319\t463\nCredits\n\tEZ\tHD\tIN\n\t188\t355\t535\nDlyrotz\n\tEZ\tHD\tIN\n\t279\t382\t764\nEngine$x$Start!!$(melody$mix)\n\tEZ\tHD\tIN\tLegacy\n\t126\t262\t433\t564\n光\n\tEZ\tHD\tIN\tLegacy\n\t249\t453\t517\t532\nWinter↑Cube↓\n\tEZ\tHD\tIN\tLegacy\n\t401\t696\t733\t909\n混乱-Confusion\n\tEZ\tHD\tIN\tLegacy\n\t290\t602\t978\t753\nCipher$:$/2&//<|0\n\tEZ\tHD\tIN\n\t380\t526\t969\nFULi$AUTO$SHOOTER\n\tEZ\tHD\tIN\n\t165\t537\t843\nHumaN\n\tEZ\tHD\tIN\tLegacy\n\t182\t382\t554\t651\n[PRAW]\n\tEZ\tHD\tIN\tLegacy\n\t419\t692\t1171\t817\nCereris\n\tEZ\tHD\tIN\n\t470\t703\t898\nPixel$Rebelz\n\tEZ\tHD\tIN\tLegacy\n\t250\t698\t941\t961\nNon-Melodic$Ragez\n\tEZ\tHD\tIN\tLegacy\n\t221\t604\t1235\t1028\nSultan$Rage\n\tEZ\tHD\tIN\n\t159\t334\t485\nClass$Memories\n\tEZ\tHD\tIN\n\t612\t801\t1194\n-SURREALISM-\n\tEZ\tHD\tIN\n\t302\t532\t914\nBonus$Time\n\tEZ\tHD\tIN\tLegacy\n\t190\t319\t689\t762\nENERGY$SYNERGY$MATRIX\n\tEZ\tHD\tIN\tLegacy\n\t190\t468\t750\t615\nNYA!!!\n\tEZ\tHD\tIN\n\t122\t428\t666\nJunXion$Between$Life$And$Death(VIP$Mix)\n\tEZ\tHD\tIN\n\t262\t593\t722\ncryout\n\tEZ\tHD\tIN\n\t221\t529\t733\nReimei\n\tEZ\tHD\tIN\n\t325\t644\t983\n尊師$～The$Guru～\n\tEZ\tHD\tIN\n\t180\t346\t738\nSpasmodic\n\tEZ\tHD\tIN\tAT\n\t637\t904\t1389\t1671\nLeave$All$Behind\n\tEZ\tHD\tIN\n\t210\t394\t523\nColorful$Days?\n\tEZ\tHD\tIN\n\t156\t186\t407\nmicro.wav\n\tEZ\tHD\tIN\n\t196\t459\t649\n重生\n\tEZ\tHD\tIN\n\t354\t650\t900\nNO$ONE$YES$MAN\n\tEZ\tHD\tIN\n\t394\t612\t844\n望影の方舟Six\n\tEZ\tHD\tIN\n\t276\t526\t1066\nIgallta\n\tEZ\tHD\tIN\tAT\n\t414\t601\t1018\t1114\nClock$Paradox\n\tEZ\tHD\tIN\n\t188\t312\t520\nChronologika\n\tEZ\tHD\tIN\n\t271\t456\t776\nNick$of$Time\n\tEZ\tHD\tIN\n\t328\t429\t745\nChronomia\n\tEZ\tHD\tIN\n\t338\t663\t992\nChronos$Collapse$-$La$Campanella\n\tEZ\tHD\tIN\n\t350\t773\t1500\nRrhar'il\n\tEZ\tHD\tIN\tAT\n\t446\t700\t1300\t1300\nΠοσειδ?ν\n\tEZ\tHD\tIN\n\t533\t397\t450\nWATER\n\tEZ\tHD\tIN\n\t338\t703\t643\nMiracle$Forest$(VIP$Mix)\n\tEZ\tHD\tIN\tLegacy\n\t323\t586\t839\t917\nMOBILYS\n\tEZ\tHD\tIN\n\t311\t530\t938\nLyrith$-迷宮リリス-\n\tEZ\tHD\tIN\tAT\n\t248\t700\t1122\t1236\nAnother$Me\n\tEZ\tHD\tIN\tLegacy\n\t111\t259\t564\t549\nmechanted\n\tEZ\tHD\tIN\n\t184\t500\t662\nlife$flashes$before$weeb$eyes\n\tEZ\tHD\tIN\n\t567\t960\t1065\nBreak$Through$The$Barrier\n\tEZ\tHD\tIN\tLegacy\n\t384\t623\t1090\t1293\nChronostasis\n\tEZ\tHD\tIN\n\t596\t665\t1156\nInfinity$Heaven\n\tEZ\tHD\tIN\n\t164\t422\t1029\nDisorder\n\tEZ\tHD\tIN\n\t444\t629\t918\nCROSS?SOUL\n\tEZ\tHD\tIN\n\t517\t892\t1305\nGOODTEK\n\tEZ\tHD\tIN\n\t295\t609\t873\nGOODBOUNCE\n\tEZ\tHD\tIN\n\t588\t797\t898\nGOODWORLD\n\tEZ\tHD\tIN\n\t215\t805\t960\nGOODFORTUNE\n\tEZ\tHD\tIN\n\t455\t733\t1011\nGOODRAGE\n\tEZ\tHD\tIN\n\t308\t628\t1034\nInitialize\n\tEZ\tHD\tIN\n\t117\t354\t581\n桜樹街道\n\tEZ\tHD\tIN\n\t292\t421\t459\nGet$Ready!!\n\tEZ\tHD\tIN\n\t363\t584\t819\nvolcanic\n\tEZ\tHD\tIN\tAT\n\t1052\t985\t1178\t1650\nXING\n\tEZ\tHD\tIN\n\t310\t587\t711\nFinal$Step!\n\tEZ\tHD\tIN\n\t355\t604\t931\nCthugha\n\tEZ\tHD\tIN\tAT\n\t378\t697\t1333\t1444\ndB$doll\n\tEZ\tHD\tIN\tAT\n\t60\t124\t237\t377\nもぺもぺ\n\tEZ\tHD\tIN\tAT\tSP\n\t125\t289\t412\t720\t720\n-Arkhei-\n\tEZ\tHD\tIN\n\t462\t454\t644\nNext$Time\n\tEZ\tHD\tIN\n\t240\t303\t387\nDash$\n\tEZ\tHD\tIN\tLegacy\n\t114\t210\t346\t296\nRubbish$Sorting\n\tEZ\tHD\tIN\tSP\n\t229\t475\t613\t416\n云女孩\n\tEZ\tHD\tIN\tLegacy\n\t220\t538\t669\t740\nSparkle$New$Life\n\tEZ\tHD\tIN\n\t305\t497\t684\nAphasia\n\tEZ\tHD\tIN\n\t283\t362\t553\nWavetapper\n\tEZ\tHD\tIN\tSP\n\t470\t507\t866\t906\n游园地\n\tEZ\tHD\tIN\n\t220\t444\t481\nApocalyptic\n\tEZ\tHD\tIN\n\t282\t329\t676\nWith$You\n\tEZ\tHD\tIN\n\t226\t654\t774\n萤火虫の怨\n\tEZ\tHD\tIN\tLegacy\n\t245\t746\t885\t875\nDead$Soul\n\tEZ\tHD\tIN\tSP\n\t273\t613\t787\t564\nSnow$Desert\n\tEZ\tHD\tIN\n\t236\t534\t552\nElectron\n\tEZ\tHD\tIN\n\t219\t423\t576\n万吨匿名信\n\tEZ\tHD\tIN\tLegacy\n\t307\t648\t781\t857\n?ventyr\n\tEZ\tHD\tIN\n\t345\t626\t954\n开心病\n\tEZ\tHD\tIN\tLegacy\n\t158\t442\t840\t815\n风屿\n\tEZ\tHD\tIN\n\t368\t802\t1155\nGet$Back\n\tEZ\tHD\tIN\n\t321\t550\t708\n華灯爱\n\tEZ\tHD\tIN\tLegacy\n\t318\t394\t520\t493\nOrthodox\n\tEZ\tHD\tIN\n\t304\t627\t962\nEnd$Me\n\tEZ\tHD\tIN\n\t217\t320\t724\nUnorthodox$Thoughts\n\tEZ\tHD\tIN\n\t512\t644\t729\nEltaw\n\tEZ\tHD\tIN\n\t391\t608\t855\n狂喜蘭舞\n\tEZ\tHD\tIN\tLegacy\tAT\n\t472\t651\t968\t954\t1325\nParallel$Retrogression(Game$Ver.)\n\tEZ\tHD\tIN\n\t507\t697\t851\nThe$Mountain$Eater\n\tEZ\tHD\tIN\n\t210\t386\t697\nFind_Me\n\tEZ\tHD\tIN\n\t465\t657\t836\nDrop$It\n\tEZ\tHD\tIN\tLegacy\n\t505\t602\t1031\t912\nShadow\n\tEZ\tHD\tIN\n\t393\t549\t840\nMARENOL\n\tEZ\tHD\tIN\tLegacy\n\t95\t467\t689\t1368\nMagenta$Potion\n\tEZ\tHD\tIN\n\t334\t631\t791\nHardcore$Kwaya\n\tEZ\tHD\tIN\n\t340\t611\t852\nCervelle$Connexion\n\tEZ\tHD\tIN\n\t301\t569\t563\nTr?ne\n\tEZ\tHD\tIN\n\t148\t420\t661\nSpeed$Up!\n\tEZ\tHD\tIN\n\t262\t463\t711\nmodulus\n\tEZ\tHD\tIN\t\n\t258\t482\t774\nKhronostasis$Katharsis\n\tEZ\tHD\tIN\tLegacy\n\t394\t747\t861\t883\n大和撫子$-Wild$Dances-\n\tEZ\tHD\tIN\n\t274\t549\t1002\nStarduster\n\tEZ\tHD\tIN\n\t280\t578\t874\nBurn\n\tEZ\tHD\tIN\n\t278\t497\t707\nDoppelganger\n\tEZ\tHD\tIN\tLegacy\n\t257\t437\t921\t746\nSein\n\tEZ\tHD\tIN\t\n\t203\t473\t721\nBetter$Graphic$Animation\n\tEZ\tHD\tIN\n\t178\t469\t616\nenergy$trixxx\n\tEZ\tHD\tIN\t\n\t252\t477\t930\n雪降り、メリクリ\n\tEZ\tHD\tIN\t\n\t316\t559\t939\nNhelv\n\tEZ\tHD\tIN\t\n\t196\t571\t833\nKerberos\n\tEZ\tHD\tIN\t\n\t262\t683\t978\nAleph-0\n\tEZ\tHD\tIN\t\n\t124\t438\t684\nSIGMA\n\tEZ\tHD\tIN\n\t352\t516\t785\nPalescreen\n\tEZ\tHD\tIN\n\t224\t772\t1059\nρars/ey\n\tEZ\tHD\tIN\n\t181\t449\t777\nRIPPER\n\tEZ\tHD\tIN\tLegacy\n\t520\t704\t1186\t1093\nWinter↑Cube↓$(Original$mix)\n\tSP\t\n\t924\nChristmas\n\tSP\t\n\t177\nBurn(Haocore$Mix)\n\tSP\t\n\t1515\nSpasmodic(Haocore$Mix)\n\tSP\t\n\t2500\nIntroduction$(2.0$Ver.)\n\tEZ\t\n\t180\nIntroduction\n\tEZ\n\t288\nAnomaly(已移除）\n\tEZ\tHD\tIN\n\t873\t269\t1212\nDestination(已移除)\n\tEZ\tHD\tIN\tAT\n\t253\t491\t545\t965\nTime$to$Night$Sky$(feat.$Lee$Yu$Jin)\n\tEZ\tHD\tIN\n\t165\t559\t540\nHAZARD\n\tEZ\tHD\tIN\tSP\n\t283\t507\t588\t541\nAnother$Me(KALPA)\n\tEZ\tHD\tIN\n\t455\t715\t1449\nDon't$Never$Around\n\tEZ\tHD\tIN\n\t308\t639\t1028\nRESSiSTANCE\n\tEZ\tHD\tIN\n\t499\t744\t1026\nジングルベル(Jingle$Bell)\n\tEZ\tHD\tIN\n\t639\t492\t1239\nConcvssion\n\tEZ\tHD\tIN\n\t450\t700\t1000\nSigma$(Haocore$Mix)$~$105秒の伝説$~\n\tSP\n\t1152\nSigma$(Haocore$Mix)$~Regrets$of$The$Yellow$Tulip~\n\tSP\n\t4000\nFuture$Mind\n\tEZ\tHD\tIN\n\t365\t570\t866\nLuminescent\n\tEZ\tHD\tIN\n\t330\t608\t650\nFULi$AUTO$BUSTER\n\tEZ\tHD\tIN\n\t285\t596\t755\nDreamland\n\tEZ\tHD\tIN\n\t338\t476\t627\nDemiurge\n\tEZ\tHD\tIN\n\t100\t445\t520\nAnother$Round\n\tEZ\tHD\tIN\n\t136\t353\t505\n996\n\tEZ\tHD\tIN\n\t392\t453\t996\nDemonkin\n\tEZ\tHD\tIN\n\t426\t513\t829\nRe_Nascence$(Psystyle$Ver.)\n\tEZ\tHD\tIN\t\n\t378\t806\t827\nArk\n\tEZ\tHD\tIN\t\n\t290\t523\t726\nAfter$Dawn\n\tEZ\tHD\tIN\n\t194\t478\t975\nINFiNiTE$ENERZY$-Overdoze-\n\tEZ\tHD\tIN\tAT\n\t333\t666\t888\t888"

function ppppp(){
    //var text=document.getElementById("fffk").value
    var y=ggggggg(yuepu)
    var fs=Number(document.getElementById("xiangyaodefshu").value)
    var tui=0
    var fui=0
    var moshi=document.getElementById("moshni").value
    for(var u=0;u<y.length;u=u+3){
        var yi=ssssssssss(moshi,y[u+2],fs,y[u],y[u+1])
        if(yi==0){}else{
            tui++
        }
        fui=fui+yi
    }

    addlog("共有"+tui+"个可以达到"+fs+"分的谱面,")
    addlog("共"+fui+"种可行方法")
}








function addlog(log1,log2,log3,log4,log5,log6,log7,log8){     //添加内部日志
    
    var f=document.getElementById("log").innerHTML
    document.getElementById("log").innerHTML=f+"<br>"+log1+"&emsp;"+log2+"&emsp;"+log3+"&emsp;"+log4+"&emsp;"+log5+"&emsp;"+log6+"&emsp;"+log7+"&emsp;"+log8
}