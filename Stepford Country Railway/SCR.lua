-- // Locals
local virtualUser = game:GetService("VirtualUser")
local players = game:GetService("Players")
local RunService = game:GetService("RunService")
local getGc = getgc or players.LocalPlayer:Kick("Unsupport Exploit")
local getSenv = getsenv or players.LocalPlayer:Kick("Unsupport Exploit")
local hookFunction = hookfunction or players.LocalPlayer:Kick("Unsupport Exploit")
local getInfo = debug.getinfo or getinfo or players.LocalPlayer:Kick("Unsupport Exploit")
local getUpvalue = debug.getupvalue or getupvalue or getupval or players.LocalPlayer:Kick("Unsupport Exploit")
local getConstants = debug.getconstants or getconstants or getconsts or players.LocalPlayer:Kick("Unsupport Exploit")
local isXClosure = is_synapse_function or issentinelclosure or is_protosmasher_closure or is_sirhurt_closure or checkclosure or players.LocalPlayer:Kick("Unsupport Exploit")
local isLClosure = islclosure or is_l_closure or (iscclosure and function(f) return not iscclosure(f) end)
local LE = game.ReplicatedStorage:WaitForChild("LocalEvent");
local v = "v0.5"
local allowControlSpeed = true
local keepSpeed = false
local settings = { -- suggest only change the kds and tms
    autoDrive = true, -- auto drive toggle
    aaw = true, -- auto accept warning,
    acs = true, -- auto continue schedule
    afk = true, -- anti afk,
    eb = true, -- bypass eject driver
    tms = 1000, -- change train max speed
    kds = 500, -- auto drive speed (dont higher then max speed)
}

if game.Players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.Visible == false then
    --getsenv(game.ReplicatedFirst.GameClient).displayModalMessage("You need to spawn a train before execute the script!")
    LE:Fire({
        type = "display-message", 
        message = "You need to spawn a train before execute the script!",
        color = "red"
    });
    return
end

-- // Library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = library.Load({
    Title = "By BlockMan | " .. v,
    Style = 3,
    SizeX = 400,
    SizeY = 260,
    Theme = "Light"
})

local Page = UI.New({
   Title = "Main"
})

local AD = Page.Toggle({
    Text = "Auto Drive",
    Callback = function(value)
        settings.autoDrive = value
    end,
    Enabled = settings.autoDrive
})
Page.Toggle({
    Text = "Auto Accept Warning",
    Callback = function(value)
        settings.aaw = value
    end,
    Enabled = settings.aaw
})
Page.Toggle({
    Text = "Auto Continue Schedule",
    Callback = function(value)
        settings.acs = value
    end,
    Enabled = settings.acs
})
Page.Toggle({
    Text = "Danger Signal Detect",
    Callback = function(value)
        allowControlSpeed = value
    end,
    Enabled = true
})
Page.Toggle({
    Text = "Anti AFK",
    Callback = function(value)
        settings.afk = value
    end,
    Enabled = settings.afk
})
Page.Slider({
    Text = "Drive Speed",    
    Callback = function(value)
        settings.kds = value
    end,
    Min = 0,
    Max = settings.tms,
    Def = settings.kds
})

-- // Bypass
for l,e in pairs({(function(e,...)local b="This file was obfuscated using PSU Obfuscator 4.0.A | https://www.psu.dev/ & discord.gg/psu";local h=e['FH7wxlG'];local W=e[(848384023)];local D=e.gcseozl;local u=e[((#{(function(...)return 49;end)()}+126005344))];local z=e[((#{362;505;(function(...)return 241,669,981;end)()}+150974183))];local q=e[(516753714)];local J=e[((515677083-#("psu == femboy hangout")))];local c=e[(380596350)];local N=e['APgx9'];local o=e[((#{388;909;(function(...)return 253,487;end)()}+334053751))];local Z=e["vOrfoCkfH"];local p=e[(409863342)];local Q=e[(620205387)];local a=e[(443436576)];local G=e["YqYH4LBV"];local m=e[(959164223)];local L=e[((#{(function(...)return;end)()}+441262107))];local S=e[((615599146-#("IIiIIiillIiiIIIiiii :troll:")))];local E=e[(283029473)];local f=e[((#{24;}+547839607))];local U=e['Bo1Mzj0dU'];local M=e.ax18H2ILM;local r=e.PWpXe0;local Y=e[(196540102)];local P=e["CxMYLTX"];local s=e[((#{145;245;447;}+574567657))];local F=e["gz5dTP"];local x=e['U7HMw1'];local X=e[(236489354)];local w=e[((43810554-#("psu == femboy hangout")))];local _=e['L4x0mPC'];local t=e[((809785853-#("guys someone play Among Us with memcorrupt he is so lonely :(")))];local C=e[(282070069)];local H=((getfenv)or(function(...)return(_ENV);end));local n,d,l=({}),(""),(H(o));local i=((l["\98"..e[f].."\116"..e["FYcdl"]..e[P]])or(l["\98"..e[f]..e.Tz8LyF8z8t])or({}));local n=(((i)and(i["\98"..e[D]..e[x].."\114"]))or(function(e,n)local l,o=o,a;while((e>a)and(n>a))do local i,c=e%t,n%t;if i~=c then o=o+l;end;e,n,l=(e-i)/t,(n-c)/t,l*t;end;if e<n then e=n;end;while e>a do local n=e%t;if n>a then o=o+l;end;e,l=(e-n)/t,l*t;end;return(o);end));local y=(t^w);local g=(y-o);local T,A,I;local v=(d[""..e[u]..e[F]..e[c].."\114"]);local u=(d["\115\117\98"]);local y=(d["\103"..e[h].."\117"..e.SOt9u26UT]);local y=(d["\98"..e[L].."\116\101"]);local k=(l["\115\101"..e[p]..e[r].."\99"..e.Tz8LyF8z8t]);local d=((l[""..e[z].."\110"..e[m]..e[c].."\99"..e['PnxxPu']])or(l[""..e['Tz8LyF8z8t'].."\97"..e["SOt9u26UT"].."\108"..e[r]][""..e[z].."\110"..e[m]..e[c].."\99\107"]));local j=(l["\115"..e[r]..e.Tz8LyF8z8t..e['HPH0t3B6D']..e[r]..e.Tz8LyF8z8t..e[c]..e['Tz8LyF8z8t']..e[c]..e['SOt9u26UT']..e[p].."\101"]);local B=(l[""..e['HPH0t3B6D'].."\97"..e.Tz8LyF8z8t.."\104"][""..e[C].."\108"..e[x].."\111\114"]);local z=(l[""..e["Tz8LyF8z8t"].."\111\110"..e[z]..e.HPH0t3B6D..e["SOt9u26UT"].."\101"..e[s]]);local V=((l[""..e.HPH0t3B6D..e[c].."\116"..e[F]][""..e[p]..e[E].."\101"..e[D]..e[m]])or(function(l,e,...)return((l*t)^e);end));local O=(l[""..e[m]..e[c]..e[f].."\114"..e[h]]);local m=(l["\116"..e[L]..e[m].."\101"]);local m=(l[""..e[s]..e[c].."\119"..e[h].."\101\116"]);local m=(i[""..e["SOt9u26UT"].."\111"..e[s]])or(function(e,l,...)return(g-I(g-e,g-l));end);T=((i[""..e[p]..e[h]..e[F]..e[f]..e[C]..e['Tz8LyF8z8t']])or(function(l,e,...)if(e<a)then return(A(l,-(e)));end;return((l*t^e)%t^w);end));I=(i["\98\97"..e[W].."\100"])or(function(e,l,...)return(((e+l)-n(e,l))/t);end);A=((i[""..e[s]..e[h].."\104"..e[f]..e[C].."\116"])or(function(l,e,...)if(e<a)then return(T(l,-(e)));end;return(B(l%t^w/t^e));end));local t=(i["\98\110"..e[x]..e['Tz8LyF8z8t']])or(function(e,...)return(g-e);end);if((not(l["\98"..e[f]..e["Tz8LyF8z8t"]..e["FYcdl"]..e[P]]))and(not(l["\98"..e[f]..e['Tz8LyF8z8t']])))then i[""..e.SOt9u26UT..e[x].."\114"]=m;i["\98"..e[c].."\110"..e[E]]=I;i["\108"..e[h]..e[F]..e[f].."\102"..e.Tz8LyF8z8t]=T;i["\98\110"..e[x].."\116"]=t;i["\98"..e[D].."\111"..e[s]]=n;i[""..e[s]..e[h].."\104\105\102"..e["Tz8LyF8z8t"]]=A;end;local m=(((l["\116"..e[c].."\98\108"..e[r]]["\99\114\101\97"..e["Tz8LyF8z8t"]..e[r]]))or((function(e,...)return({d({},a,e);});end)));local t=(l["\116"..e[c].."\98\108"..e[r]]["\105\110\115"..e[r].."\114"..e["Tz8LyF8z8t"]]);local f=(l[""..e['Tz8LyF8z8t'].."\97\98"..e[p].."\101"]["\99"..e[x].."\110\99"..e[c].."\116"]);local t=(l["\116"..e[c]..e["SOt9u26UT"].."\108"..e[r]][""..e[s].."\101\109"..e[x].."\118"..e[r]]);l[""..e.SOt9u26UT.."\105"..e["Tz8LyF8z8t"]..e.FYcdl.."\50"]=i;local l=((-Y+(function()local t,n=a,o;(function(l,e)e(e(e,l),l(l,e))end)(function(l,e)if t>J then return e end t=t+o n=(n-U)%q if(n%X)>M then return l else return l(l(l,e),e(e,e))end return l(l(e,e)and l(e,e),l(l,e))end,function(e,l)if t>S then return e end t=t+o n=(n-G)%Q if(n%N)>=_ then return l(l(e and l,l),l(e,e and e))else return e end return l end)return n;end)()));local t=(#b+Z);local c,x=({}),({});for e=a,t-o do local l=v(e);c[e]=l;x[e]=l;x[l]=e;end;local h,i=(function(n)local a,e,i=y(n,o,((43-#("still waiting for luci to fix the API :|"))));if((a+e+i)~=((275-#("IIiIIiillIiiIIIiiii :troll:"))))then l=l+(201);t=t+((#{710;}+128));end;n=u(n,((#{272;193;410;984;(function(...)return 840,920,801;end)()}-2)));local l,i,a=(""),(""),({});local e=o;local function r()local l=z(u(n,e,e),((158-#("oh Mr. Pools, thats a little close please dont touch me there... please Mr. Pools I am only eight years old please stop..."))));e=e+o;local n=z(u(n,e,e+l-o),((143-#("I'm not ignoring you, my DMs are full. Can't DM me? Shoot me a email: mem@mem.rip (Business enquiries only)"))));e=e+l;return(n);end;l=x[r()];a[o]=l;while(e<#n)do local e=r();if c[e]then i=c[e];else i=l..u(l,o,o);end;c[t]=l..u(i,o,o);a[#a+o],l,t=i,i,t+o;end;return(f(a));end)("PSU|21L21H1012121027627827927c27c1414279111127D102102111027J27c27p27P27921521427s27913141727i27C1A1A27922H22L27g102381d191l23J1b1H27922V121H1Q1f1c1816121D27O181H1s171b1W22128r1022R1M17101N1b1Q217218131l27O1W2262841021Y21B1R1N21i21I1N141j1n26724K192792311C1P21329a29c1125A26227k27925e25I28822621B28n24G25H27K26O25R1G1z1c27923729B27o22122g151k151L1h26e2431g27922C2121J181721921B151c29721d21f1J2972301O27H27w27l21i1G12281101Q1r1327b2791Y1z121327d19181528827h276132bM1l21G1y1317171327Y24G24m2bv131I1I27918102cL101x2111416162791424g24g1419192ci2cK1229G2cP2882CC2CV2Cx18182d12cm142aK1021d21E1315152771o2152dI2dK27F1O1p2C027d1c1D141527d1b1A172ct102cC2e12DU102cs2132122e82792dw2dY2E02e22E42c22eD2e9172EL27u2Bh1325o25R27924824129u1022C1z2CJ1b213213181926V24C28823816171G24N25m2Cn239161M1n1628B1L23T26c2Cn2381R28v161r172CZ22y28822u1f29K23t26J294102361N1K141s29K26E23o2g522X172B32aK1221s2162dZ1022S11171n1i22Q1c2eX23b1i1728U28N1e1H2321v2gN2Ez2F12552611e28h28J1n1C27j1B161N1T16111T26J24F2g522a21F16131B2bW26s2442DF2212132DS141e29M29O29q24W25h2g521v217191f192BL25L24J2HB1022A21j18121r1h1z21F1r1d2hJ2Hl25F24N29G22n2dG28m28O28q1021H2261n27921y1z27I1N1j1D21n21I1I21n2191N1n2102752fU1b1n111h21O2292cn29i15192142141M1R2311727B22N1O132271B27922r1h1j1i1r1R2FJ29p1n22L2152E421v1y28N2Jd1f22V2EX22A21n1E1f1S21f21h1R1p24c2FP2792242112KY1s1t2fw24W2642Kb1021z1y1h21J2171115182FJ1b23M26G2f91T1A1826R2HP2aZ21d1T1c21i2Jk25x24O2gn22U1A2Bw1t26724u2Bw102Gg1Q2321U28822C21N2e524u25g2e422P18141F1D1r22j2122Ex21T1y2E91M102Lb1B25W24g29029W1A1E21M214151R1t1L131E1922221R2AY29H2b61o1H1n2FV191Y2171f2nk191123I2H527922U171d1v1m23T26H2GN22B21N2941r25225Q2df22w294141D1J2it2IV1124s2FF2Hc2nT1h1T1S1026o23u2Gw1O1T1p2K81h12162222172F92fm1X2242fg2fI1n1m2aT1l1F22s29G22R1B1d162In1F11161o1n2gg27922I21H121F1b1c1m23A132e428I1h2hi1223v26a2IJ22621n1o1F2gr1X21I2g91G2PR2Pa21129G2g029k1m1Q2NL2mv24U25n2eX2202131V101l1n21C2171726L23Q2Gn22D1H2191422n24x2ge2AL2KJ1v1a1627124D2Od21n111r1624826e29G21Z21E1S21M29n142Rq161B2Fy27923B1M181T1q2GU2al1I2jD1C172LC2pM2pS24N25j2H62B12bz23k26929022U1B21n1w2121Y2102181R21T1T2Lc22r21v2G522p1F1Q1T2da1423b1H2LG2qj2ql2GR1W21F2iE122712f827922q28R1323k2OC2792251y1q2FI22o102gn2342iO171Q2522MQ2792202151F2lW2Nm2f42uh21p1o1C2pV2FL24M25l2LG2IL2In2Ip2TR2bC1Q2351d2CN2LI1a1228t2sA22e2aj27922B21o2BO1A21j2S72s923T26n2mF22T1M1322y28F2oV1S1128R111B1u121T1V2R92fl1w22b29G231122pr1F1v1u2KG1t26O23Y2902262171h132P41p2122181j1p1e1n2i82G522321a2s52181B1124Y26529g22a2131r21p2VJ2Rr23T26f2Lg2242aJ28Q21o21o1D1o1S2Wu2i92M02J82b2172381m2df2pq2pS2PU2O7151V1j24n25u2Np22D2122fj21n2131u15112132Xa1624N25P1f2792il1l1s152v72Au111y29j2gQ2522A82792iB28c1q22w2E42321R2tP1n23B2hT2J9191P26Z2ME28h181b2232Gm27922T2J82ta22W2xU27921z21228n29m28G2Lc191K22K2102lg2371m2fI2Gr21m21o2j423a1i2cn21U2f01m21h21d1J162322tM2vD2132fu2Fw21d21j1d1p1G1X2rh2yK21j2yM2yO122YQ21j2x71T310g122Y32Np22r2772pr2S6172py1d15311e2aU23T26i2e422R2hF1D310z21C28z2Kc31191D21m2Jk2Ym311n2Yg2Yw1029w2YM24q2uV27922e21R2RY111k1D21L2y71N22w1K2iJ21u21C1r181f21P2y7181o21121F1t1d2532OU102qC101h2de1u26O2rN1021v2181t1n1Y2S421c22m2G521X2ny2O02o22PM2m02Cz1l1v2HK2Ye29O2s927124E2e42361j2uk1B2Bv22U310A2191B1t21q21Q314324t312W310B2V82iP2V823r2sY2yx21i2942961q21J2kQ182jD22S2qa2Kc2nT142aU21o22N2E42282Xj2xl2Z62gv2792GP161c2W02dT1925K24Q2GF1Q21821p2Gz1l25O2592Np2202Up2Ur2pw1D21i21p101R210310F16235112882rh2Rj26T2tw102AA28N1x21s288313F2z423L2l6102i02sp2mv1623J2lc2yx2ic29c1h1126f23v2CN2i01Q1y310P310R25K2m73125316W1G26E24228g102u42u61M21321j27J1R1122n2362b62Lw21B29F2L71Z1821g2YF24N2xO312X28J1j2w91O25I24W2AF25r25v2u21021t21E101m1h26124p28822821D2yM25B25u2GN2qC1J1425025s2g5314y2Xk2xM112ZY310031872hi2DY2x1310Z22E2zI102am1H1m1P2381S2Ko29a131t21t24e24s27P21325N2xd279312I29O1A2cP2fb1q1724x2R327922P1K2rx2gB2og22J1x2IJ29i171a2YS317d172Ll2LN181W2222IJ2PQ2ID2If1g152HI310Q1G1m26624L2cN22u2op2IU2HK1125f2Zd316E21M21e22J2o42eY21d313121J317K2lH2Lj313p2s82rr27124B2Mf2371a1N22z314Q31351521G1j28N2RT2gn2222111d21721924z2662eX21u31421t21r2151t2QD23j2Rx27921W1x2c91k2P62lL28c2132162e21h1821A316m2bA2v12sO2po2ov1Q1b2kK29321922k2GN21Y31Bm28N23j312G2zp2LJ21c1x1M1g2sa1A152TG1726j23T3175235141G31DK21M21c1121D2wK313L313n161q2SC1022f21E2bY22P31BJ2372e32nV22021q317522B21e1O21G2K1101i28p21J21J2Qq29321c2KA2m02M231B92S923J1P2mF2HR1o26Y23P2E42gG1T2fJ31DT2SJ31761Y28F1P1921i21c1H2L31426124i2yJ1023B2NG31C431051F151P1i1d1e1J1M25l315B31252hs2Nu1t21S2k12df2H7101B2X9313q2XB2vm2Al2HI2692P22792n12hJ1v1n2yq24z2lf2792321b1i1k102Nz31972Gr24N25r2902391r2vz1T2Ip2hI21721k1I1S2A329022821r319O171w2YF2PB28822V3155181x31eL316E2yA2yc2jJ312l2hI25225o2Ij236171R21d21831022931N21m21F1P1k23x3182318C31dD24X2622Bf1022b21m142dS1D1L31aT21o21f311f319721r2Xg28B21821921p2221j27931HV31Hx31hz310331I221L31AR2or26L24031iX319131872172171s1q29O152Jg1d2vX2tH312T31Iv2IJ2iL2E1111N2QO2zU2FW1k24f27131752Qw2fK31FL2lw2pV1H2QD31FX22l31902382NJ2NL31eQ2MF2341s1U26P23k2MF31gM1i26N2Ru31c81X28p1D2Sx29031BR31hb31hd31G62rs24731Ff2qC1631FR1Q28T1L31l72o02GD2G522V2ZF2iF2x11X2252ex22e14112yf316Y2gn2kd1b1914311P29021U2rc31Db2o02v029726129T27922F21i1D1721k1Z2A123I316K1022E31fW2nh21T267311J2RO161h31Hw21J22a2xe31IR21R31F931FB24J318g279234317U28R21V2Mz27922X315d31062W931Jj25L31m231352Ic1J317U1N2Nt26p31742rO28u2VV27o2VY2W02w22fk1D23g315210318o315021H2s426N23Q27d21s26726723331n231Ie31F92j81b2Do1s24R312w22c21d31DR2Hk2Uf2E42zq28n31it2232kN31KP2FC1R1q24x25K29g29I29k2i52Kk26I23v31J92Qc31jC31je31Jg31Ji31Jk2ta1d2573124102uB31h031K631h331h525g318A2vd21I314T1Q31402kc31LQ1L2cB1H1C21522E2cj31iE21K1A2Au2O731fq1M21g2XJ1l1I192w12152Td31Iy2G831DJ29324j31GK1022421L1K21E21I31JU2Zw26624R314X310F314j22j31oP102202rj318P236317d2791a26e2lT2sD1m1J1S22Z122g521z21h29q313N31pB317R22b2131H29C1l1124M2uG2912tM31Lr1r23931mc31l22961O26m2402Cn310131QR1K26j31KO31IE21N28b1024u25W2n431rv29O2AU21M31J131i121m31j42Oq31AT24726x2BG27K2102122BR2791f3113112532532791H1G2bq27921921921421M2Wl23R23r31T6131m1424W317y312Z131N1522u22U31tI1K1622922931ti31pT22f22f31Ti31L525925931TI1r1925e25e31TI1o1A25A25a31TI1P1B24d24d31ti1u1c22D22D31tI1v1d23V23V31Ti1S1e24Z24z31Ti1T1F24H24h31tI121G24324331tI131H2CW31Ti31Ed25m25M31Ti112b22cn2wl161K24924931ti171L25q25q31Ti141m24S24S31TI151n23N23N31ti1A1O31uA31Ti1B1P23Y23y31Ti181Q25825831ti191r1C2df2Wl1E1S1O31Id2wL31T124y24y31Ti1C1u23C23c31Ti2O821M21M31Ti21E1W25J25j31Ti21F1x24b24b31TI21C1y23M23m31Ti21D1z23923931TI21i21021621631ti21J21125n25n31TI21G21223523531Ti21H2132cA31ti2Ne2DK31tI21N21524224231ti21K21624X24X31tI21l2172Jl31tI21q21823u23U31tI21R21923J23j31ti21O21a25o25O31tI21p21b22822831Ti1Y21C24I24i31TI1z21D23X23x31Ti1w21e24624631tI1X21f21b21b31Ti21221g23k23K31t631T82bL1121g21G31zI2Wl25g25g31TI31TK22X22x31Ti31tQ21x21X31tu1625l25L31TZ1721e318531to31L51d2902WL31U823h23h31Uc1A21z21Z31UH1b1M31sI2WL31uN22l22L31ur1d28331uW1e21821831V11f21127n31to31v72BM2wL31VC1x1x31vF1i2Cc31vJ1j24k24K31tI31vO22G22g31vS1l22n2j031TO31Vy1Q1Q31w21N2Xi31W71O25025031Wb310r2np2wl31wH21Y21Y31wl1r24l24L31ti31WR23A23a31Ti31T122S22s31wZ1U24u24u31x41V22Y22y31X81w21w21w31xd1X2Dc2wl31XJ23F23f31Xn1z25H2aE31To31XT23023031Xx21121p315r31TO31Y31E2IJ2wL31y824p24P31yB2141v2R731tO31yF23b23b31yj21624A24A31yo21724o24o31YS21824r24R31Yx31422Lg2wl31z324f24f31z721B21t21T31ZC21C25125131ZH21d31W531Zm21E21521531zR21f25625631zw21g23P23P32012BQ27732053207131S2Oz31To31Tk1u1u320f2pl320j23W23w320n22v22v31u31821d21d31U71922k22K320Z24T24t321327f31UM1c23q31o031tO31Us223223321e252252321i21V21V31V61g314531Vb1H23Z23z321T234234321W22722732201K25F25F322422122131vx1M24j24j322C3205322f1k31GP31To31wC22Q22q31wg1Q225225322Q238238322U1s24C24C322Y1T23t23T32321P1P3236254254323A1z1z323E25725731xI1y22C22c323l22222231Xs21022T22T323t21f21f31Y221224524531Y721321R21R324523l23l31Ye2152Cz324D22A22a324h25B25b324L24N24n324p22z22Z31Z221A24m24m324W240240325027d2WL31zi23d23d325723O23O325B24v24v325f244244325J2cG325m21d2wl22w22W320b1421a21A325V31eG320J31jC320n21n2Mn320r1825K25k326731tb320z21c21C321324E24E326G21l21l321b231231321E22B22b321i232232326u22h22h326x233233321T247247321W31K5327722m22M3224255255327e2f3322C31zK322f2kH322J224224327R21K21k322Q22O2u831To31wR22p22P328225d25D32321w1W32361Y2N231TO31X925p25P323E237237328i2K0323l22r22r328p226226323T22i22i328w220220329022j22J324523s23S3297210210324D23g23g324H25C25c324L23I23I324P21u21u329M2Cs324W24q24q32502ta325421s21s325731nD325B29m325f27732a827f32Aa2Wl21221232a82DK2cC1z1Y2bV2BX2ki1423623632012EG27O2VX31I51632Eo31T624223R1426e26e2791W26v25Z2791I31L5321Y2791Q31Yf182412412TJ2Lo2ex2e62P61a21H27531tO31uI321v2BN1831UN322232fb2jJ1C322631WO31vY31us32EW312Z1G1F2IJ2771D2dW2dF323z2wc32g931WO2772Lb1a2LG27931W331uN23E23e32012e131Wo2832Oy2by31r61a21324K32EZ25z32F629526O26F32F731tK32FA2bn21n2CQ22E31Lj27F2c02gn32Fk31Tv25i25I32012e82Ea21H31tk324332FB314N1531XG32fb1R2EL31w331tQ324B32HU2E32cU142e12Fb27d2ky32eR2Ca310L21031DC1f27f31Vy31Tv24824832Fb2vu28027i27w2Dk2gQ2Ej2U91K1l2cR161f1F1g316O27K13"),(#b-((183-#("Luraph v12.6 has been released!: changed absolutely fucking nothing but donate to my patreon!"))));local function o(l,e,...)if(l==311451363)then return((n((n(n(e,426232),415628))-885788,588887))-542731);elseif(l==811971737)then return(n(n(n((n(e,791588))-233844,482907),536002),180701));elseif(l==182450426)then return(n(((n((e)-841475,423293))-290399)-752857,178105));elseif(l==692958536)then return((n(((n(e,541985))-468009)-987142,93960))-156542);elseif(l==471044365)then return(n((n(n(e,747142),322420))-553420,757082));elseif(l==134640787)then return((n((n(e,661731))-754731,653275))-844712);elseif(l==132078512)then return((((e)-525564)-854663)-293957);elseif(l==809778338)then return(n((n(e,57160))-676105,431227));elseif(l==690082744)then return(((n(n((e)-501198,159880),608897))-313638)-108200);elseif(l==571062912)then return(n(((n(e,554643))-271920)-299687,414325));elseif(l==171322503)then return(n(n(n(e,907795),9305),299670));elseif(l==551524789)then return((n(n(n(e,175481),906026),713686))-153548);else end;end;local t=e[(334053755)];local s=e[(883659230)];local o=e[((#{582;217;(function(...)return 117,319,924,983,...;end)()}+367170077))];local a=e[((#{144;522;}+443436574))];local c=e[(809785792)];local p=e[((275351893-#("psu 34567890fps, luraph 1fps, xen 0fps")))];local g=e[((#{103;460;717;}+317799679))];local F=e[((#{909;407;994;43;}+58859602))];local function r()local t,e=y(h,i,i+c);t=n(t,l);l=t%o;e=n(e,l);l=e%o;i=i+c;return((e*o)+t);end;local function f(l,e,n)if(n)then local e=(l/c^(e-t))%c^((n-t)-(e-t)+t);return(e-(e%t));else local e=c^(e-t);return(((l%(e+e)>=e)and(t))or(a));end;end;local function a()local e=n(y(h,i,i),l);l=e%o;i=(i+t);return(e);end;local function c()local e,c,t,a=y(h,i,i+p);e=n(e,l);l=e%o;c=n(c,l);l=c%o;t=n(t,l);l=t%o;a=n(a,l);l=a%o;i=i+s;return((a*g)+(t*F)+(c*o)+e);end;local E=""..e["H1npH2"];local function o(...)return({...}),k(E,...);end;local function P(...)local b=e[(875636538)];local m=e[(744602390)];local L=e[((70929644-#("If you see this, congrats you're gay")))];local t=e[(443436576)];local P=e[(729308284)];local H=e[((8747978-#("Are you using AztupBrew, clvbrew, or IB2? Congratulations! You're deobfuscated!")))];local F=e[((221272451-#("you dumped constants by printing the deserializer??? ladies and gentlemen stand clear we have a genius in the building.")))];local T=e[(275351855)];local k=e[((#{578;455;}+294108728))];local v=e[((#{240;}+725621850))];local S=e[(792907948)];local _=e.ih5VHXWpZU;local M=e[(693732787)];local p=e[((#{573;443;619;(function(...)return 831,223,913;end)()}+342244737))];local I=e[((#{789;819;162;843;}+809785788))];local E=e[(643251302)];local X=e[(282285670)];local o=e[((334053816-#("guys someone play Among Us with memcorrupt he is so lonely :(")))];local w=e[((#{316;191;331;}+367170080))];local d=e[((196182876-#("If you see this, congrats you're gay")))];local g=e[((#{791;477;}+43810531))];local D=e[((#{532;}+883659229))];local C=e['I2Gs1Bj'];local j=e[(765531955)];local function z(...)local s=({});local e=({});local A=({});local Y=r(l);local U=a(l);for e=t,c(l)-o,o do A[e]=z();end;for r=t,c(l)-o,o do local s=a(l);if(s%d==H)then local l=a(l);e[r]=(l~=t);elseif(s%d==F)then while(true)do local n=c(l);local l=c(l);local c=o;local i=(f(l,o,L)*(I^g))+n;local n=f(l,d,X);local l=((-o)^f(l,g));if(n==t)then if(i==t)then e[r]=B(l*t);break;else n=o;c=t;end;elseif(n==M)then e[r]=(i==t)and(l*(o/t))or(l*(t/t));break;end;local l=V(l,n-E)*(c+(i/(I^b)));e[r]=l%o==t and B(l)or l break;end;elseif(s%d==p)then while(true)do local c=c(l);if(c==t)then e[r]=('');break;end;if(c>P)then local t,a=(''),(u(h,i,i+c-o));i=i+c;for e=o,#a,o do local e=n(y(u(a,e,e)),l);l=e%w;t=t..x[e];end;e[r]=t;else local o,t=(''),({y(h,i,i+c-o)});i=i+c;for t,e in O(t)do local e=n(e,l);l=e%w;o=o..x[e];end;e[r]=o;end;break;end;elseif(s%d==D)then while(true)do local l=c(l);e[r]=u(h,i,i+l-o);i=i+l;break;end;else e[r]=nil end;end;local n=c(l);for e=t,n-o,o do s[e]=({});end;for B=t,n-o,o do local n=a(l);if(n~=t)then n=n-o;local g,y,h,u,d,i=t,t,t,t,t,t;local x=f(n,o,T);if(x==p)then i=(r(l));u=(r(l));d=(c(l));h=(a(l));y=({});for e=o,u,o do y[e]=({[t]=a(l),[o]=r(l)});end;elseif(x==m)then elseif(x==t)then i=(r(l));u=(r(l));d=(r(l));h=(a(l));elseif(x==I)then i=(r(l));d=s[(c(l))];h=(a(l));elseif(x==T)then i=(r(l));u=(r(l));d=s[(c(l))];h=(a(l));elseif(x==o)then i=(r(l));d=(c(l));h=(a(l));end;if(f(n,F,F)==o)then g=s[c(l)];else g=s[B+o];end;if(f(n,p,p)==o)then d=e[d];end;if(f(n,D,D)==o)then i=e[i];end;if(f(n,m,m)==o)then u=e[u];end;if(f(n,C,C)==o)then y=({});for e=o,a(),o do y[e]=c();end;end;local e=s[B];e["HQ03"]=u;e["IydVj"]=y;e['G1p']=i;e[k]=h;e[-S]=g;e[-j]=d;end;end;return({[-v]=U;["TcAG"]=e;["DxNJ"]=Y;[-_]=t;['xByXlJoN']=A;["DSng1Su"]=s;});end;return(z(...));end;local function x(e,p,f,...)local i=e[-503862];local y=e["xByXlJoN"];local r=e['DxNJ'];local o=0;local s=e["DSng1Su"];local e=e["TcAG"];return(function(...)local F=(k(E,...)-1);local u={...};local e=(25080013);local h={};local D='IydVj';local a=-(1);local l={};local t=-229590;local c="HQ03";local n='G1p';local B=790437;local s=s[o];local g=({});local e=(true);local o=-156455;local e=1;for e=0,F,e do if(e>=i)then h[e-i]=u[e+1];else l[e]=u[e+1];end;end;local u=F-i+1;repeat local e=s;local i=e[B];s=e[o];if(i<=20)then if(i<=9)then if(i<=4)then if(i<=1)then if(i==0)then local i=y[e[t]];local t=e[D];local o={};local a=j({},{__index=function(l,e)local e=o[e];return(e[1][e[2]]);end,__newindex=function(n,e,l)local e=o[e];e[1][e[2]]=l;end;});for e=1,e[c],1 do local n=t[e];if(n[0]==0)then o[e-1]=({l,n[1]});else o[e-1]=({p,n[1]});end;g[#g+1]=o;end;l[e[n]]=x(i,a,f);elseif(i<=1)then local e=e[n];a=e+u-1;for n=0,u do l[e+n]=h[n];end;for e=a+1,r do l[e]=nil;end;end;elseif(i<=2)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];elseif(i>3)then l[e[n]]=l[e[t]][e[c]];elseif(i<4)then do return;end;end;elseif(i<=6)then if(i==5)then local e=e[n];l[e]=l[e](l[e+1]);for e=e+1,r do l[e]=nil;end;elseif(i<=6)then local e=e[n];do return l[e](d(l,e+1,a))end;end;elseif(i<=7)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];local i=(_147);(function()l[e[n]]=e[t];e=e[o];end){};l[e[n]]=e[t];e=e[o];local i=(_185);(function()l[e[n]]=e[t];e=e[o];end){};local i=(_183);(function()l[e[n]]=e[t];e=e[o];end){};local i=(_87);(function()l[e[n]]=e[t];e=e[o];end){};l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];local i=(_113);(function()l[e[n]]=e[t];e=e[o];end){};e=e[o];elseif(i==8)then if(l[e[n]]~=e[c])then s=e[t];end;elseif(i<=9)then l[e[n]]=m(256);end;elseif(i<=14)then if(i<=11)then if(i>10)then l[e[n]]=l[e[t]];elseif(i<11)then local t=e[n];a=t+u-1;for e=0,u do l[t+e]=h[e];end;for e=a+1,r do l[e]=nil;end;e=e[o];local t=e[n];do return l[t](d(l,t+1,a))end;e=e[o];local n=e[n];do return d(l,n,a);end;e=e[o];e=e[o];end;elseif(i<=12)then l[e[n]]=p[e[t]];elseif(i==13)then l[e[n]]=#l[e[t]];elseif(i<=14)then l[e[n]]=(e[t]~=0);end;elseif(i<=17)then if(i<=15)then l[e[n]]=x(y[e[t]],(nil),f);elseif(i>16)then l[e[n]]=e[t];elseif(i<17)then l[e[n]][e[t]]=l[e[c]];end;elseif(i<=18)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];elseif(i==19)then l[e[n]][e[t]]=l[e[c]];e=e[o];e=e[o];elseif(i<=20)then l[e[n]]=m(e[t]);e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];end;elseif(i<=31)then if(i<=25)then if(i<=22)then if(i==21)then local n=e[n];local o=l[n];local e,t=0,50*(e[c]-1);for n=n+1,a,1 do o[t+e+1]=l[n];e=e+1;end;elseif(i<=22)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];end;elseif(i<=23)then local n=e[n];local i=l[n+2];local o=l[n]+i;l[n]=o;if(i>0)then if(o<=l[n+1])then s=e[t];l[n+3]=o;end;elseif(o>=l[n+1])then s=e[t];l[n+3]=o;end;elseif(i>24)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];elseif(i<25)then l[e[n]][e[t]]=e[c];end;elseif(i<=28)then if(i<=26)then l[e[n]]=f[e[t]];elseif(i>27)then l[e[n]]=l[e[t]][l[e[c]]];elseif(i<28)then e=e[o];local t=e[n];a=t+u-1;for e=0,u do l[t+e]=h[e];end;for e=a+1,r do l[e]=nil;end;e=e[o];local n=e[n];do return d(l,n,a);end;e=e[o];e=e[o];end;elseif(i<=29)then local t=e[t];local o=l[t];for e=t+1,e[c]do o=o..l[e];end;l[e[n]]=o;elseif(i>30)then local n=e[n];l[n]=l[n](d(l,n+1,e[t]));for e=n+1,r do l[e]=nil;end;elseif(i<31)then l[e[n]]=l[e[t]];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=f[e[t]];e=e[o];l[e[n]]=f[e[t]];e=e[o];l[e[n]]=l[e[t]][e[c]];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=#l[e[t]];e=e[o];local i=e[n];l[i]=l[i](d(l,i+1,e[t]));for e=i+1,r do l[e]=nil;end;e=e[o];l[e[n]]=l[e[t]][l[e[c]]];e=e[o];local i=e[n];l[i]=l[i](l[i+1]);for e=i+1,r do l[e]=nil;end;e=e[o];l[e[n]]=e[t];e=e[o];local a=e[t];local i=l[a];for e=a+1,e[c]do i=i..l[e];end;l[e[n]]=i;e=e[o];local n=e[n];l[n](d(l,n+1,e[t]));for e=n+1,r do l[e]=nil;end;e=e[o];e=e[o];end;elseif(i<=36)then if(i<=33)then if(i==32)then local n=e[n];l[n]=0+(l[n]);l[n+1]=0+(l[n+1]);l[n+2]=0+(l[n+2]);local o=l[n];local i=l[n+2];if(i>0)then if(o>l[n+1])then s=e[t];else l[n+3]=o;end;elseif(o<l[n+1])then s=e[t];else l[n+3]=o;end;elseif(i<=33)then e=e[o];l[e[n]]=f[e[t]];e=e[o];local t=e[n];l[t]=l[t]();e=e[o];l[e[n]]=m(256);e=e[o];local n=e[n];a=n+u-1;for e=0,u do l[n+e]=h[e];end;for e=a+1,r do l[e]=nil;end;e=e[o];e=e[o];end;elseif(i<=34)then local e=e[n];l[e]=l[e]();elseif(i==35)then local n=e[n];local o=e[t];local i=50*(e[c]-1);local t=l[n];local e=0;for o=n+1,o do t[i+e+1]=l[n+(o-n)];e=e+1;end;elseif(i<=36)then end;elseif(i<=39)then if(i<=37)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];elseif(i>38)then local n=e[n];l[n](d(l,n+1,e[t]));for e=n+1,r do l[e]=nil;end;elseif(i<39)then l[e[n]]=l[e[t]];e=e[o];l[e[n]]=e[t];e=e[o];local i=e[n];l[i](d(l,i+1,e[t]));for e=i+1,r do l[e]=nil;end;e=e[o];l[e[n]]=f[e[t]];e=e[o];l[e[n]]=f[e[t]];e=e[o];local i=e[n];l[i]=l[i](l[i+1]);for e=i+1,r do l[e]=nil;end;e=e[o];l[e[n]]=f[e[t]];e=e[o];local i=(_194);(function()l[e[n]]=l[e[t]];e=e[o];end){};l[e[n]]=(e[t]~=0);e=e[o];local i=e[n];l[i](d(l,i+1,e[t]));for e=i+1,r do l[e]=nil;end;e=e[o];l[e[n]]=l[e[t]][e[c]];e=e[o];l[e[n]]=f[e[t]];e=e[o];e=e[o];end;elseif(i<=40)then l[e[n]]=m(e[t]);elseif(i>41)then l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];l[e[n]]=e[t];e=e[o];e=e[o];elseif(i<42)then local e=e[n];do return d(l,e,a);end;end;until false end);end;return x(P(),{},H())(...);end)(({["gz5dTP"]=(((#{582;602;59;}+600690835)));APgx9=((1898));[((542086792-#("please suck my cock :pleading:")))]=("\101");["CxMYLTX"]=(((#{215;463;265;476;(function(...)return 685,332,697;end)()}+56809457)));[(56809464)]=("\50");[((#{(function(...)return 989,24;end)()}+615599117))]=((144));[((282285713-#("https://www.youtube.com/watch?v=Lrj2Hq7xqQ8")))]=((31));[(275351855)]=((3));['gcseozl']=((946740461));[(547839608)]=((958107364));[(479880332)]=("\114");ax18H2ILM=(((#{400;375;}+705)));[(150974188)]=((955511216));[(233915591)]=(((116-#("Xenvant Likes cock - Perth"))));[(643251302)]=((1023));[((#{854;365;962;504;(function(...)return 894,...;end)(535,266,457,320)}+729308275))]=(((#{663;}+4999)));[(317799682)]=(((16777243-#("IIiIIiillIiiIIIiiii :troll:"))));[((#{402;}+845462468))]=("\110");["PWpXe0"]=(((542086804-#("this isn't krnl support you bonehead moron"))));[(828172006)]=("\112");[(792907948)]=((156455));[((#{49;139;496;521;(function(...)return 101,961,790,...;end)(873,191)}+332542924))]=("\100");[(765531955)]=(((229616-#("Xenvant Likes cock - Perth"))));[(958107364)]=("\105");[((959164239-#("The Voxel is sus")))]=(((828172077-#("why the fuck would we sell a deobfuscator for a product we created....."))));[(196540102)]=(((8354-#("psu premium chads winning (only joe biden supporters use the free version)"))));[(695477319)]=("\121");[((#{15;531;}+955511214))]=("\117");[(509717197)]=("\111");[(342244743)]=((5));[((#{(function(...)return 651,960,975,142;end)()}+43810529))]=(((93-#("guys someone play Among Us with memcorrupt he is so lonely :("))));[((294108746-#("The Voxel is sus")))]=((790437));[(70929608)]=(((#{387;583;888;}+17)));['PnxxPu']=("\107");I2Gs1Bj=((7));[((#{845;782;(function(...)return;end)()}+515677060))]=((377));[((727206157-#("this isn't krnl support you bonehead moron")))]=("\115");[((#{232;831;459;257;}+310047998))]=("\102");['FYcdl']=("\51");[(989334344)]=((36));[(725621851)]=((503862));[((#{}+221272332))]=(((#{379;296;}+6)));U7HMw1=(((#{250;290;727;(function(...)return...;end)(451,950,492)}+509717191)));[((685083476-#("The Voxel is sus")))]=("\99");[((#{403;893;168;}+875636535))]=((52));["YqYH4LBV"]=(((1058-#("guys someone play Among Us with memcorrupt he is so lonely :("))));[(516753714)]=(((10163-#("Perth Was here impossible ikr"))));Bo1Mzj0dU=((866));[((#{272;}+503062879))]=(((296-#("uh oh everyone watch out pain exist coming in with the backspace method one dot two dot man dot"))));[(441262107)]=(((#{90;172;340;874;(function(...)return 773,390,749,527;end)()}+695477311)));[(8747899)]=((10));[((#{378;(function(...)return 631;end)()}+744602388))]=(((#{803;996;164;294;(function(...)return 383,916,383,766;end)()}-2)));[((693732825-#("psu 34567890fps, luraph 1fps, xen 0fps")))]=(((2087-#("still waiting for luci to fix the API :|"))));[((883659246-#("Wally likes cock")))]=(((86-#("who the fuck looked at synapse xen and said 'yeah this is good enough for release'"))));L4x0mPC=((949));FH7wxlG=(((#{586;673;52;}+727206112)));['SOt9u26UT']=("\98");[((#{836;623;13;}+600690835))]=("\104");[(58859606)]=(((65576-#("still waiting for luci to fix the API :|"))));[((#{616;555;876;899;(function(...)return 555,708;end)()}+443436570))]=((0));Tz8LyF8z8t=("\116");[((#{566;358;(function(...)return 273,4,811,794;end)()}+809785786))]=(((31-#("Perth Was here impossible ikr"))));vOrfoCkfH=(((272-#("I'm not ignoring you, my DMs are full. Can't DM me? Shoot me a email: mem@mem.rip (Business enquiries only)"))));[((126005423-#("luraph is now down until further notice for an emergency major security update")))]=(((#{51;460;(function(...)return 853,285;end)()}+685083456)));[(380596350)]=((870798678));[(367170083)]=((256));[((870798705-#("IIiIIiillIiiIIIiiii :troll:")))]=("\97");[(409863342)]=((934868842));[((#{895;(function(...)return 760,26;end)()}+934868839))]=("\108");[(366337063)]=((129));[(236489354)]=(((#{897;185;419;}+1411)));[(946740461)]=("\120");[((#{858;(function(...)return 571,...;end)()}+283029471))]=(((332543026-#("Luraph v12.6 has been released!: changed absolutely fucking nothing but donate to my patreon!"))));[(574567660)]=(((479880393-#("guys someone play Among Us with memcorrupt he is so lonely :("))));[(848384023)]=((845462469));['HPH0t3B6D']=("\109");H1npH2=("\35");[((196182865-#("When the exploiter is sus")))]=((21));["ih5VHXWpZU"]=(((#{(function(...)return 398,...;end)(114)}+184053)));[(620205387)]=((34148));[(334053755)]=((1));[(282070069)]=(((310048069-#("@everyone designs are done. luraph website coming.... eta JULY 2020"))));['ij7ioS2m2j']=((248));}),...)})do return e end;

-- // Functions
players.LocalPlayer.Idled:connect(function()
    if settings.afk then   
        virtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        virtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end
end)

local function matchConstants(closure, list)
    if not list then
        return true
    end
    
    local constants = getConstants(closure)
    
    for index in pairs(list) do
        if not constants[index] then
            return false
        end
    end
    
    return true
end

local function searchClosure(script, name, upvalueIndex, constants)
    for _i, v in pairs(getGc()) do
        local parentScript = rawget(getfenv(v), "script")

        if type(v) == "function" and 
            isLClosure(v) and 
            not isXClosure(v) and 
            (
                (script == nil and parentScript.Parent == nil) or script == parentScript
            ) 
            and pcall(getUpvalue, v, upvalueIndex)
        then
            if ((name and name ~= "Unnamed function") and getInfo(v).name == name) and matchConstants(v, constants) then
                return v
            elseif (not name or name == "Unnamed function") and matchConstants(v, constants) then
                return v
            end
        end
    end
end

local function setmaxspeed(speed)
    local scriptPath = players.LocalPlayer.PlayerScripts.TrainClient
    local closureName = "speedLoop"
    local upvalueIndex = 7
    local closureConstants = {
        [1] = 1,
        [2] = "coroutine",
        [3] = "wrap"
    }

    local closure = searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
    local value = speed
    debug.setupvalue(closure, upvalueIndex, value)
end

local function setspeed(speed)
    local scriptPath = players.LocalPlayer.PlayerScripts.TrainClient
    local closureName = "speedLoop"
    local upvalueIndex = 9
    local closureConstants = {
        [1] = 1,
        [2] = "coroutine",
        [3] = "wrap"
    }
    
    local closure = searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
    local value = speed
    debug.setupvalue(closure, upvalueIndex, value)
end

coroutine.wrap(function()
    while wait() do
        if settings.autoDrive then
            if settings.aaw then
                if players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.AlertFrame.AlertButton.Visible == true or players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.AlertFrame.BrakeButton.ReleaseLabel.Visible == true then
                    coroutine.wrap(function() getsenv(players.LocalPlayer.PlayerScripts.TrainClient).acceptAlert() end)()
                end
                if (players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.NextSignalFrame.Danger.ImageColor3 == Color3.fromRGB(255, 0, 0)) and allowControlSpeed then
                    repeat 
                        wait()
                        setspeed(0)
                        keepSpeed = false
                        coroutine.wrap(function() getsenv(players.LocalPlayer.PlayerScripts.TrainClient).displayMessage("Awaiting signal changing.", 1, 0) end)()
                    until players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.NextSignalFrame.Danger.ImageColor3 ~= Color3.fromRGB(255, 0, 0) or allowControlSpeed == false or settings.autoDrive == false
                    keepSpeed = true
                end
            end
        end
    end
end)()

coroutine.wrap(function() -- dont change anything in here
    while wait() do
        if settings.autoDrive then
            if keepSpeed == true then
                setspeed(settings.kds) -- keep speed
            end
        end
    end
end)()

-- // Script
function autoDrivegg() -- dont change anything in here

    --// start
    setmaxspeed(settings.tms) -- change train max speed
    keepSpeed = true -- allow keep speed
    allowControlSpeed = true -- allow change speed when light was red
    players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.MessageFrame.MessageLabel.Text = ""
    
    -- // wait train enter statsions
    repeat 
        RunService.Heartbeat:Wait()
    until tonumber(string.sub(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.DestinationFrame.DistanceLabel.Text, 12, 15)) <= 0.2 or settings.autoDrive == false
    allowControlSpeed = false -- stop change speed when light was red
    repeat 
        RunService.Heartbeat:Wait()
    until tostring(string.sub(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.DestinationFrame.DistanceLabel.Text, 12, 15)) == "0.00" or settings.autoDrive == false

    keepSpeed = false -- stop keep speed
    setspeed(0)
    -- >
    repeat
        setspeed(45)
        wait(0.2)
        setspeed(0)
        coroutine.wrap(getsenv(players.LocalPlayer.PlayerScripts.TrainClient).loadPassengers)()
    until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "Please wait while passengers") ~= nil or settings.autoDrive == false

    -- // close doors / buzz / continue schedule
    repeat -- wait loadPassengers done
        RunService.Heartbeat:Wait()
    until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "close doors") ~= nil or string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "buzz") ~= nil or (players.LocalPlayer.PlayerGui.MainGui.TrainHUD.SummaryWindow.Visible == true and settings.acs == true) or settings.autoDrive == false

    if players.LocalPlayer.PlayerGui.MainGui.TrainHUD.SummaryWindow.Visible == true and settings.acs then -- continue schedule
        coroutine.wrap(function() getsenv(players.LocalPlayer.PlayerScripts.TrainClient).closeSummaryWindow(nil, { ["continue"] = true })end)() -- run function to continue schedule
        repeat
            RunService.Heartbeat:Wait()
        until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "begin loading") ~= nil or settings.autoDrive == false
        wait(0.5)
        coroutine.wrap(function() getsenv(players.LocalPlayer.PlayerScripts.TrainClient).loadPassengers() end)() -- run function to open door
    end

    repeat
        RunService.Heartbeat:Wait()
    until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "close doors") ~= nil or string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "buzz") ~= nil or settings.autoDrive == false

    if string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "close doors") ~= nil then -- check train have GD or not
        repeat
            wait()
        until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "close doors") ~= nil or settings.autoDrive == false
        wait(1) -- just let the function think it fully loaded passengers
        coroutine.wrap(function() getsenv(players.LocalPlayer.PlayerScripts.TrainClient).toggleDoors() end)() -- run function to close door
    elseif string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "buzz") ~= nil then
        repeat
            wait()
        until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.PassengerFrame.LoadLabel.Text, "buzz") ~= nil or settings.autoDrive == false -- wait allow buzz
        wait(0.5) -- just let the function think GD request buzz
        coroutine.wrap(function() getsenv(players.LocalPlayer.PlayerScripts.TrainClient).buzzGuard() end)() -- run function of buzz
    end
    
    -- // leaving stastion
    repeat -- wait close door done
        RunService.Heartbeat:Wait()
    until string.find(players.LocalPlayer.PlayerGui.MainGui.TrainHUD.MainFrame.MessageFrame.MessageLabel.Text, "Stop completed successfully") ~= nil or settings.autoDrive == false
    keepSpeed = true
    allowControlSpeed = true
end

while wait(1) do
    if settings.autoDrive then
        autoDrivegg()
    end
end