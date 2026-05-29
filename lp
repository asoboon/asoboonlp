<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ASOBooN（アソブーン）｜子どもが、旅するようにあそぶ場所</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;600;700&family=M+PLUS+Rounded+1c:wght@400;500;700;800&family=Zen+Maru+Gothic:wght@500;700;900&display=swap" rel="stylesheet">
<style>
  :root{
    --cream:#FFF7E8;
    --cream-2:#FFEFD3;
    --ink:#2C2C36;
    --road:#34343F;
    --line:#FFD23F;
    --yellow:#F6BE2C;
    --orange:#F08A24;
    --red:#E84B3C;
    --forest:#5E8C3E;
    --green:#3FBE72;
    --blue:#2BA6DA;
    --sky:#5B6CF0;
    --cta:#FF7A1A;
    --cta-dark:#E25E00;
    --jp:"M PLUS Rounded 1c",sans-serif;
    --disp:"Zen Maru Gothic",sans-serif;
    --en:"Fredoka",sans-serif;
    --maxw:1080px;
  }
  *{margin:0;padding:0;box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{
    font-family:var(--jp);
    color:var(--ink);
    background:var(--cream);
    line-height:1.8;
    overflow-x:hidden;
    -webkit-font-smoothing:antialiased;
  }
  /* dotted map texture */
  body::before{
    content:"";position:fixed;inset:0;z-index:0;pointer-events:none;
    background-image:radial-gradient(rgba(0,0,0,.045) 1.5px,transparent 1.5px);
    background-size:26px 26px;
  }
  .wrap{max-width:var(--maxw);margin:0 auto;padding:0 22px;position:relative;z-index:1}
  a{color:inherit;text-decoration:none}
  img{max-width:100%;display:block}

  /* ---------- header ---------- */
  header{
    position:sticky;top:0;z-index:50;
    background:rgba(255,247,232,.92);
    backdrop-filter:blur(8px);
    border-bottom:3px solid var(--ink);
  }
  .head-inner{max-width:var(--maxw);margin:0 auto;padding:11px 22px;display:flex;align-items:center;justify-content:space-between;gap:14px}
  .brand{font-family:var(--en);font-weight:700;font-size:1.45rem;letter-spacing:.5px;color:var(--ink);display:flex;align-items:center;gap:8px}
  .brand .dot{width:13px;height:13px;border-radius:50%;background:var(--red);box-shadow:18px 0 0 var(--yellow),36px 0 0 var(--blue)}
  .brand span{padding-left:40px}
  .head-cta{
    font-family:var(--disp);font-weight:700;font-size:.92rem;
    background:var(--cta);color:#fff;padding:11px 20px;border-radius:999px;
    border:2.5px solid var(--ink);box-shadow:3px 3px 0 var(--ink);
    transition:transform .12s,box-shadow .12s;white-space:nowrap;
  }
  .head-cta:hover{transform:translate(-2px,-2px);box-shadow:5px 5px 0 var(--ink)}
  .head-cta:active{transform:translate(2px,2px);box-shadow:1px 1px 0 var(--ink)}

  /* ---------- hero ---------- */
  .hero{position:relative;padding:64px 0 90px;overflow:hidden}
  .hero::after{
    content:"";position:absolute;left:-10%;right:-10%;bottom:-2px;height:120px;
    background:var(--road);transform:rotate(-3deg);transform-origin:bottom left;z-index:0;
    box-shadow:0 -6px 0 rgba(0,0,0,.12) inset;
  }
  .hero-grid{display:grid;grid-template-columns:1.15fr .85fr;gap:40px;align-items:center;position:relative;z-index:2}
  .badge-rank{
    display:inline-flex;align-items:center;gap:9px;background:#fff;
    border:2.5px solid var(--ink);border-radius:999px;padding:7px 15px 7px 9px;
    font-family:var(--disp);font-weight:700;font-size:.82rem;box-shadow:3px 3px 0 var(--ink);
    margin-bottom:22px;
  }
  .badge-rank b{font-family:var(--en);background:var(--red);color:#fff;border-radius:50%;width:30px;height:30px;display:grid;place-items:center;font-size:1.05rem;line-height:1}
  .hero h1{
    font-family:var(--disp);font-weight:900;font-size:clamp(2.1rem,5.4vw,3.5rem);
    line-height:1.28;letter-spacing:.5px;margin-bottom:18px;
  }
  .hero h1 .hl{position:relative;white-space:nowrap}
  .hero h1 .hl::after{content:"";position:absolute;left:-2px;right:-2px;bottom:4px;height:14px;background:var(--yellow);z-index:-1;border-radius:3px}
  .hero p.lead{font-size:1.04rem;font-weight:500;max-width:30em;margin-bottom:14px}
  .tagchips{display:flex;flex-wrap:wrap;gap:8px;margin-bottom:28px}
  .tagchips span{font-size:.8rem;font-weight:700;background:var(--cream-2);border:2px solid var(--ink);border-radius:999px;padding:4px 12px}
  .hero-cta{display:flex;flex-wrap:wrap;gap:12px;align-items:center}
  .btn-primary{
    font-family:var(--disp);font-weight:700;font-size:1.05rem;
    background:var(--cta);color:#fff;padding:16px 28px;border-radius:16px;
    border:3px solid var(--ink);box-shadow:5px 5px 0 var(--ink);
    transition:transform .12s,box-shadow .12s;display:inline-flex;align-items:center;gap:10px;
  }
  .btn-primary:hover{transform:translate(-2px,-2px);box-shadow:7px 7px 0 var(--ink)}
  .btn-primary:active{transform:translate(3px,3px);box-shadow:2px 2px 0 var(--ink)}
  .btn-ghost{font-weight:700;font-size:.95rem;padding:14px 22px;border-radius:16px;border:3px solid var(--ink);background:#fff;transition:background .15s}
  .btn-ghost:hover{background:var(--cream-2)}
  .hero-note{font-size:.82rem;font-weight:700;margin-top:14px;color:var(--cta-dark);display:flex;align-items:center;gap:7px}
  .hero-note::before{content:"▶";font-size:.7rem}

  /* hero visual: stacked road sign */
  .hero-visual{position:relative;height:340px}
  .sign{
    position:absolute;border:3px solid var(--ink);border-radius:18px;
    box-shadow:6px 6px 0 var(--ink);display:grid;place-items:center;text-align:center;
    font-family:var(--en);font-weight:700;color:#fff;
  }
  .sign small{display:block;font-family:var(--jp);font-weight:700;font-size:.7rem;opacity:.95}
  .s1{width:160px;height:120px;background:var(--sky);top:0;left:18%;transform:rotate(-6deg);font-size:1.1rem;z-index:3}
  .s2{width:140px;height:140px;border-radius:50%;background:var(--red);top:90px;right:6%;transform:rotate(5deg);font-size:1.05rem;z-index:2}
  .s3{width:150px;height:104px;background:var(--green);bottom:24px;left:4%;transform:rotate(4deg);font-size:1rem;z-index:4}
  .s4{width:120px;height:120px;border-radius:24px;background:var(--orange);bottom:0;right:22%;transform:rotate(-5deg);font-size:1rem;z-index:1}
  .float{animation:float 4.5s ease-in-out infinite}
  .float.b{animation-delay:.8s}.float.c{animation-delay:1.6s}.float.d{animation-delay:2.4s}
  @keyframes float{0%,100%{translate:0 0}50%{translate:0 -12px}}

  /* ---------- road divider ---------- */
  .road-band{background:var(--road);position:relative;color:#fff}
  .road-band::before{
    content:"";position:absolute;left:0;right:0;top:50%;height:6px;transform:translateY(-50%);
    background:repeating-linear-gradient(90deg,var(--line) 0 38px,transparent 38px 74px);opacity:.9;
  }

  /* ---------- section base ---------- */
  section{position:relative;z-index:1}
  .pad{padding:70px 0}
  .sec-sign{
    display:inline-flex;flex-direction:column;align-items:center;gap:2px;
    background:var(--forest);color:#fff;border:3px solid var(--ink);border-radius:12px;
    padding:9px 22px;box-shadow:4px 4px 0 var(--ink);margin:0 auto 14px;
  }
  .sec-sign .en{font-family:var(--en);font-weight:600;font-size:.78rem;letter-spacing:1.5px;opacity:.92}
  .sec-sign .jp{font-family:var(--disp);font-weight:900;font-size:1.5rem;line-height:1.1}
  .sec-head{text-align:center;margin-bottom:46px}
  .sec-head p{font-weight:500;max-width:36em;margin:6px auto 0}

  /* ---------- about ---------- */
  .about{background:var(--cream-2);border-top:3px solid var(--ink);border-bottom:3px solid var(--ink)}
  .about-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px;margin-top:8px}
  .about-card{background:#fff;border:3px solid var(--ink);border-radius:20px;padding:26px 22px;box-shadow:5px 5px 0 var(--ink)}
  .about-card .ic{font-family:var(--en);font-weight:700;font-size:1.5rem;width:54px;height:54px;border-radius:14px;display:grid;place-items:center;color:#fff;margin-bottom:14px}
  .about-card h3{font-family:var(--disp);font-weight:900;font-size:1.2rem;margin-bottom:8px}
  .about-card p{font-size:.92rem;font-weight:500}
  .about-lead{text-align:center;max-width:40em;margin:0 auto 30px;font-size:1.02rem;font-weight:500}

  /* ---------- areas map ---------- */
  .areas{background:var(--cream)}
  .areamap{max-width:820px;margin:0 auto 50px;background:var(--road);border:3px solid var(--ink);border-radius:26px;padding:30px 20px;box-shadow:6px 6px 0 var(--ink);position:relative}
  .areamap h3{color:#fff;text-align:center;font-family:var(--disp);font-weight:700;font-size:1rem;margin-bottom:6px}
  .areamap .sub{color:rgba(255,255,255,.7);text-align:center;font-size:.78rem;font-weight:500;margin-bottom:10px}
  svg.map{width:100%;height:auto;display:block}
  .stops{display:flex;flex-wrap:wrap;justify-content:center;gap:8px;margin-top:14px}
  .stops a{font-size:.78rem;font-weight:700;color:#fff;border:2px solid rgba(255,255,255,.5);border-radius:999px;padding:5px 13px;display:flex;align-items:center;gap:7px;transition:.15s}
  .stops a:hover{background:rgba(255,255,255,.12)}
  .stops .pin{width:11px;height:11px;border-radius:50%;border:2px solid #fff}

  .area-list{display:grid;grid-template-columns:repeat(2,1fr);gap:22px}
  .area{border:3px solid var(--ink);border-radius:22px;overflow:hidden;background:#fff;box-shadow:5px 5px 0 var(--ink);display:flex;flex-direction:column}
  .area-top{padding:18px 22px;color:#fff;position:relative}
  .area-top .en{font-family:var(--en);font-weight:600;font-size:.8rem;letter-spacing:1px;opacity:.92}
  .area-top h4{font-family:var(--disp);font-weight:900;font-size:1.35rem;line-height:1.2}
  .area-top .role{display:inline-block;margin-top:8px;font-size:.74rem;font-weight:700;background:rgba(255,255,255,.22);border:1.5px solid rgba(255,255,255,.6);border-radius:999px;padding:3px 11px}
  .area-ph{height:148px;display:grid;place-items:center;font-family:var(--en);font-weight:600;font-size:.85rem;color:rgba(0,0,0,.32);background:repeating-linear-gradient(45deg,rgba(0,0,0,.04) 0 14px,transparent 14px 28px)}
  .area-body{padding:18px 22px 22px;font-size:.9rem;font-weight:500;flex:1}

  /* ---------- who/for ---------- */
  .who{background:var(--cream-2);border-top:3px solid var(--ink);border-bottom:3px solid var(--ink)}
  .who-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:16px}
  .who-card{background:#fff;border:3px solid var(--ink);border-radius:18px;padding:22px 16px;text-align:center;box-shadow:4px 4px 0 var(--ink)}
  .who-card .big{font-family:var(--en);font-weight:700;font-size:2.1rem;line-height:1;color:var(--orange)}
  .who-card .lbl{font-family:var(--disp);font-weight:700;font-size:1rem;margin:6px 0 4px}
  .who-card .sm{font-size:.8rem;font-weight:500}

  /* ---------- info ---------- */
  .info{background:var(--cream)}
  .info-grid{display:grid;grid-template-columns:1fr 1fr;gap:24px}
  .panel{background:#fff;border:3px solid var(--ink);border-radius:20px;padding:26px;box-shadow:5px 5px 0 var(--ink)}
  .panel h3{font-family:var(--disp);font-weight:900;font-size:1.18rem;margin-bottom:16px;display:flex;align-items:center;gap:9px}
  .panel h3 .tag{font-family:var(--en);font-size:.65rem;color:#fff;background:var(--ink);border-radius:6px;padding:3px 8px;font-weight:600}
  .hours-row{display:flex;justify-content:space-between;padding:9px 0;border-bottom:2px dashed rgba(0,0,0,.15);font-weight:500}
  .hours-row b{font-family:var(--disp);font-weight:700}
  .hours-row:last-of-type{border-bottom:none}
  .closed{color:var(--red);font-weight:700}
  .price-note{background:var(--cream-2);border:2px dashed var(--ink);border-radius:12px;padding:14px;font-size:.86rem;font-weight:500;margin:6px 0 16px}
  .pdf-btn{display:inline-flex;align-items:center;gap:8px;font-family:var(--disp);font-weight:700;font-size:.92rem;background:var(--blue);color:#fff;border:3px solid var(--ink);border-radius:13px;padding:12px 20px;box-shadow:4px 4px 0 var(--ink);transition:.12s}
  .pdf-btn:hover{transform:translate(-2px,-2px);box-shadow:6px 6px 0 var(--ink)}
  .pdf-btn.alt{background:#fff;color:var(--ink)}
  .pdf-row{display:flex;flex-wrap:wrap;gap:10px}

  /* reception branches */
  .branch{display:grid;grid-template-columns:1fr 1fr;gap:16px;margin-top:8px}
  .br{border:3px solid var(--ink);border-radius:16px;overflow:hidden}
  .br-h{padding:11px 16px;color:#fff;font-family:var(--disp);font-weight:900;font-size:1.02rem}
  .br-b{padding:16px;font-size:.88rem;font-weight:500;background:#fff}
  .br-b ul{list-style:none}
  .br-b li{padding-left:20px;position:relative;margin-bottom:7px}
  .br-b li::before{content:"●";position:absolute;left:0;font-size:.6rem;top:.45em;color:var(--orange)}

  /* ---------- reserve (big CTA) ---------- */
  .reserve{background:var(--road);color:#fff;border-top:3px solid var(--ink);border-bottom:3px solid var(--ink)}
  .reserve .sec-sign{background:var(--cta)}
  .reserve .sec-head p{color:rgba(255,255,255,.82)}
  .res-cards{display:grid;grid-template-columns:1.4fr 1fr;gap:22px;margin-top:8px}
  .res-card{background:#fff;color:var(--ink);border:3px solid #000;border-radius:22px;padding:28px;box-shadow:6px 6px 0 rgba(0,0,0,.45)}
  .res-card h3{font-family:var(--disp);font-weight:900;font-size:1.4rem;margin-bottom:6px}
  .res-card .desc{font-size:.92rem;font-weight:500;margin-bottom:18px}
  .steps{display:flex;gap:10px;margin-bottom:20px;flex-wrap:wrap}
  .step{flex:1;min-width:120px;background:var(--cream-2);border:2px solid var(--ink);border-radius:12px;padding:12px;text-align:center}
  .step .n{font-family:var(--en);font-weight:700;font-size:1.3rem;color:var(--cta-dark)}
  .step .t{font-size:.8rem;font-weight:700;line-height:1.4}
  .btn-res{
    width:100%;font-family:var(--disp);font-weight:700;font-size:1.15rem;text-align:center;
    background:var(--cta);color:#fff;padding:18px;border-radius:16px;border:3px solid var(--ink);
    box-shadow:5px 5px 0 var(--ink);transition:transform .12s,box-shadow .12s;display:flex;align-items:center;justify-content:center;gap:10px;
  }
  .btn-res:hover{transform:translate(-2px,-2px);box-shadow:7px 7px 0 var(--ink)}
  .btn-res:active{transform:translate(3px,3px);box-shadow:2px 2px 0 var(--ink)}
  .res-card.group{display:flex;flex-direction:column}
  .res-card.group .grp-meta{font-size:.84rem;font-weight:500;margin-bottom:16px;flex:1}
  .btn-res.sub{background:var(--forest);font-size:1rem}

  /* ---------- access ---------- */
  .access{background:var(--cream)}
  .acc-grid{display:grid;grid-template-columns:1fr 1fr;gap:24px;align-items:start}
  .acc-info .row{display:flex;gap:12px;padding:14px 0;border-bottom:2px dashed rgba(0,0,0,.15)}
  .acc-info .row:last-child{border:none}
  .acc-info .ic{flex:none;width:42px;height:42px;border-radius:11px;background:var(--ink);color:#fff;display:grid;place-items:center;font-family:var(--en);font-weight:700;font-size:.7rem}
  .acc-info .k{font-family:var(--disp);font-weight:700;font-size:.95rem;margin-bottom:2px}
  .acc-info .v{font-size:.9rem;font-weight:500}
  .acc-info a.tel{font-family:var(--en);font-weight:700;font-size:1.15rem;color:var(--blue)}
  .map-embed{border:3px solid var(--ink);border-radius:20px;overflow:hidden;box-shadow:5px 5px 0 var(--ink);height:340px}
  .map-embed iframe{width:100%;height:100%;border:0}
  .sns{display:flex;gap:12px;margin-top:18px;flex-wrap:wrap}
  .sns a{display:inline-flex;align-items:center;gap:9px;font-weight:700;font-size:.9rem;border:3px solid var(--ink);border-radius:13px;padding:11px 18px;background:#fff;box-shadow:3px 3px 0 var(--ink);transition:.12s}
  .sns a:hover{transform:translate(-2px,-2px);box-shadow:5px 5px 0 var(--ink)}
  .sns .ig{width:22px;height:22px;border-radius:7px;background:linear-gradient(45deg,#feda75,#d62976,#962fbf)}

  /* ---------- footer ---------- */
  footer{background:var(--ink);color:#fff;padding:54px 0 110px;text-align:center}
  footer .fbrand{font-family:var(--en);font-weight:700;font-size:2rem;letter-spacing:1px}
  footer .ftag{font-family:var(--disp);font-weight:700;opacity:.85;margin:6px 0 26px}
  footer .btn-res{max-width:420px;margin:0 auto 26px}
  footer .fnav{display:flex;justify-content:center;flex-wrap:wrap;gap:8px 22px;font-size:.85rem;opacity:.8;margin-bottom:22px}
  footer .copy{font-size:.74rem;opacity:.5}

  /* ---------- sticky mobile bar ---------- */
  .mbar{
    position:fixed;left:0;right:0;bottom:0;z-index:60;display:none;
    background:var(--cta);border-top:3px solid var(--ink);padding:11px 14px;
  }
  .mbar a{display:flex;align-items:center;justify-content:center;gap:8px;color:#fff;font-family:var(--disp);font-weight:700;font-size:1.05rem}

  /* reveal */
  .rv{opacity:0;transform:translateY(26px);transition:opacity .6s ease,transform .6s ease}
  .rv.in{opacity:1;transform:none}

  /* ---------- responsive ---------- */
  @media(max-width:880px){
    .hero-grid{grid-template-columns:1fr;gap:10px}
    .hero-visual{height:280px;order:-1}
    .about-grid{grid-template-columns:1fr}
    .area-list{grid-template-columns:1fr}
    .who-grid{grid-template-columns:repeat(2,1fr)}
    .info-grid{grid-template-columns:1fr}
    .res-cards{grid-template-columns:1fr}
    .branch{grid-template-columns:1fr}
    .acc-grid{grid-template-columns:1fr}
    .head-cta{display:none}
    .mbar{display:block}
    footer{padding-bottom:100px}
  }
  @media(max-width:480px){
    .who-grid{grid-template-columns:1fr 1fr}
    .pad{padding:52px 0}
    .sec-sign .jp{font-size:1.25rem}
  }
</style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="head-inner">
    <a href="#top" class="brand"><span class="dot"></span><span>ASOBooN</span></a>
    <a class="head-cta" href="https://airwait.jp/WCSP/storeDetail?storeNo=AKR2298124918" target="_blank" rel="noopener">当日オンライン受付 ▶</a>
  </div>
</header>

<!-- ===== HERO ===== -->
<section class="hero" id="top">
  <div class="wrap hero-grid">
    <div>
      <div class="badge-rank rv"><b>1</b>いこーよ 2025 関東エリア 室内あそび場 年間人気ランキング</div>
      <h1 class="rv">子どもが、<br><span class="hl">旅するように</span>あそぶ場所。</h1>
      <p class="lead rv">ボーネルンドがプロデュースした、関東最大級の親子のあそび場。道路をテーマにした床が、個性ゆたかな7つのエリアをつなぎます。</p>
      <div class="tagchips rv">
        <span>👶 0〜12歳</span><span>🌧 雨の日もOK</span><span>🅿️ 駐車場あり</span><span>🍼 授乳室あり</span>
      </div>
      <div class="hero-cta rv">
        <a class="btn-primary" href="#reserve">当日オンライン受付はこちら →</a>
        <a class="btn-ghost" href="#areas">7つのエリアを見る</a>
      </div>
      <div class="hero-note rv">予約・当日受付は、このページからできます</div>
    </div>
    <div class="hero-visual rv">
      <div class="sign s1 float">SKY<small>のぼる・すべる</small></div>
      <div class="sign s2 float b">RED<small>展望デッキ</small></div>
      <div class="sign s3 float c">GREEN<small>とぶ・はしる</small></div>
      <div class="sign s4 float d">ORANGE<small>乳幼児</small></div>
    </div>
  </div>
</section>

<!-- road divider -->
<div class="road-band" style="height:38px"></div>

<!-- ===== ABOUT ===== -->
<section class="about pad">
  <div class="wrap">
    <div class="sec-head rv">
      <div class="sec-sign"><span class="en">ABOUT</span><span class="jp">ASOBooNとは</span></div>
      <p>「子どもが、旅するようにあそぶ場所」をコンセプトに、安全性・あそびの多様性・色彩やデザインにこだわって生まれた屋内あそび場です。</p>
    </div>
    <p class="about-lead rv">あそびのプロ・<b>ボーネルンド</b>がプロデュース。場内には子どもの成長を促す工夫を凝らしたあそびが満載で、行くたびに違う発見があります。</p>
    <div class="about-grid">
      <div class="about-card rv">
        <div class="ic" style="background:var(--red)">★</div>
        <h3>関東エリア 第1位</h3>
        <p>子どものおでかけ情報サイト「いこーよ」2025年 関東エリア 室内あそび場 年間人気ランキングで第1位に選ばれました。</p>
      </div>
      <div class="about-card rv">
        <div class="ic" style="background:var(--blue)">7</div>
        <h3>7つの世界</h3>
        <p>色とテーマの異なる7エリアを、道路をイメージした床がつなぎます。まるで街をめぐる小さな旅のように楽しめます。</p>
      </div>
      <div class="about-card rv">
        <div class="ic" style="background:var(--forest)">B</div>
        <h3>ボーネルンド監修</h3>
        <p>あそびから学ぶ子どもたちのために、安全性とデザイン性にこだわったあそび環境をプロが設計しました。</p>
      </div>
    </div>
  </div>
</section>

<!-- ===== AREAS ===== -->
<section class="areas pad" id="areas">
  <div class="wrap">
    <div class="sec-head rv">
      <div class="sec-sign" style="background:var(--blue)"><span class="en">7 AREAS</span><span class="jp">7つのエリア</span></div>
      <p>道をたどって、ひとつずつ巡ってみてください。それぞれに違うあそびが待っています。</p>
    </div>

    <!-- road map centerpiece -->
    <div class="areamap rv">
      <h3>ASOBooN AREA MAP</h3>
      <div class="sub">道路でつながる、7つのあそびのまち</div>
      <svg class="map" viewBox="0 0 760 220" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="7エリアをつなぐ道路マップ">
        <path d="M40,170 C140,170 150,50 250,50 C350,50 360,170 460,170 C560,170 570,50 720,50"
              fill="none" stroke="#5a5a66" stroke-width="22" stroke-linecap="round"/>
        <path d="M40,170 C140,170 150,50 250,50 C350,50 360,170 460,170 C560,170 570,50 720,50"
              fill="none" stroke="#FFD23F" stroke-width="3" stroke-dasharray="10 12" stroke-linecap="round"/>
        <!-- stops -->
        <g font-family="Fredoka,sans-serif" font-weight="700" font-size="11" fill="#fff" text-anchor="middle">
          <circle cx="40"  cy="170" r="15" fill="#F6BE2C" stroke="#2C2C36" stroke-width="3"/><text x="40" y="200">YELLOW</text>
          <circle cx="160" cy="92"  r="15" fill="#F08A24" stroke="#2C2C36" stroke-width="3"/><text x="160" y="74">ORANGE</text>
          <circle cx="250" cy="50"  r="15" fill="#E84B3C" stroke="#2C2C36" stroke-width="3"/><text x="250" y="32">RED</text>
          <circle cx="355" cy="110" r="15" fill="#5B6CF0" stroke="#2C2C36" stroke-width="3"/><text x="355" y="140">SKY</text>
          <circle cx="460" cy="170" r="15" fill="#3FBE72" stroke="#2C2C36" stroke-width="3"/><text x="460" y="200">GREEN</text>
          <circle cx="565" cy="92"  r="15" fill="#5E8C3E" stroke="#2C2C36" stroke-width="3"/><text x="565" y="74">FOREST</text>
          <circle cx="720" cy="50"  r="15" fill="#2BA6DA" stroke="#2C2C36" stroke-width="3"/><text x="720" y="32">BLUE</text>
        </g>
      </svg>
      <div class="stops">
        <a href="#a-sky"><span class="pin" style="background:var(--sky)"></span>スカイ・ハイウェイ</a>
        <a href="#a-red"><span class="pin" style="background:var(--red)"></span>レッド・デッキ</a>
        <a href="#a-green"><span class="pin" style="background:var(--green)"></span>グリーン・スクエア</a>
        <a href="#a-blue"><span class="pin" style="background:var(--blue)"></span>ブルー・サーキット</a>
        <a href="#a-orange"><span class="pin" style="background:var(--orange)"></span>オレンジ・ポンド</a>
        <a href="#a-forest"><span class="pin" style="background:var(--forest)"></span>フォレスト・ヴィレッジ</a>
        <a href="#a-yellow"><span class="pin" style="background:var(--yellow)"></span>イエロー・ヤード</a>
      </div>
    </div>

    <div class="area-list">
      <div class="area rv" id="a-sky">
        <div class="area-top" style="background:var(--sky)"><div class="en">Sky Highway</div><h4>スカイ・ハイウェイ</h4><span class="role">のぼる・すべる 動のあそび</span></div>
        <div class="area-ph" style="color:rgba(91,108,240,.4)">写真が入ります</div>
        <div class="area-body">高速道路を駆け抜けるように、上下左右へダイナミックに移動。シンボルの大型複合遊具と人気のボールプールが、子どもの挑戦心をくすぐります。</div>
      </div>
      <div class="area rv" id="a-red">
        <div class="area-top" style="background:var(--red)"><div class="en">Red Deck</div><h4>レッド・デッキ</h4><span class="role">アスレチック・音あそび</span></div>
        <div class="area-ph" style="color:rgba(232,75,60,.4)">写真が入ります</div>
        <div class="area-body">天井高5mの展望デッキ。川口市の鋳物を使った楽器での音あそびや、首都高・街並みを模したジオラマあそびが楽しめ、あそび場全体を見渡せます。</div>
      </div>
      <div class="area rv" id="a-green">
        <div class="area-top" style="background:var(--green)"><div class="en">Green Square</div><h4>グリーン・スクエア</h4><span class="role">とぶ・はしる 動のあそび</span></div>
        <div class="area-ph" style="color:rgba(63,190,114,.4)">写真が入ります</div>
        <div class="area-body">弾むマットの上を走るエアトラックや、透明チューブで回転するサイバーホイールなど。全身を使ってあそぶ可動式の遊具がそろっています。</div>
      </div>
      <div class="area rv" id="a-blue">
        <div class="area-top" style="background:var(--blue)"><div class="en">Blue Circuit</div><h4>ブルー・サーキット</h4><span class="role">乗り物あそび</span></div>
        <div class="area-ph" style="color:rgba(43,166,218,.4)">写真が入ります</div>
        <div class="area-body">安全に楽しめる三輪車サーキット。さまざまな乗り物に乗って、運転に欠かせない「ゆずりあい」の気持ちも自然と学べます。</div>
      </div>
      <div class="area rv" id="a-orange">
        <div class="area-top" style="background:var(--orange)"><div class="en">Orange Pond</div><h4>オレンジ・ポンド</h4><span class="role">乳幼児のあそび</span></div>
        <div class="area-ph" style="color:rgba(240,138,36,.4)">写真が入ります</div>
        <div class="area-body">池をちゃぷちゃぷ泳ぐように、ママ・パパと赤ちゃんが楽しめる場所。五感を刺激して発達を促すあそびがそろい、絵本の読み聞かせにも。</div>
      </div>
      <div class="area rv" id="a-forest">
        <div class="area-top" style="background:var(--forest)"><div class="en">Forest Village</div><h4>フォレスト・ヴィレッジ</h4><span class="role">おままごと・ブロック</span></div>
        <div class="area-ph" style="color:rgba(94,140,62,.4)">写真が入ります</div>
        <div class="area-body">森のキャンプ場のようにリラックスできる場所。ごっこあそびやブロックで想像力をふくらませて。大人もゆったり見守れるカウンターがあります。</div>
      </div>
      <div class="area rv" id="a-yellow">
        <div class="area-top" style="background:var(--yellow);color:#5a3d00"><div class="en">Yellow Yard</div><h4>イエロー・ヤード</h4><span class="role" style="background:rgba(0,0,0,.12);border-color:rgba(0,0,0,.3)">水砂あそび・自然あそび</span></div>
        <div class="area-ph" style="color:rgba(246,190,44,.55)">写真が入ります</div>
        <div class="area-body">治水・利水をテーマにした水あそびを、自然の中で。植木とのふれあいを通して、季節の移ろいや一日の気温の変化も感じられる屋外エリアです。</div>
      </div>
    </div>
  </div>
</section>

<div class="road-band" style="height:38px"></div>

<!-- ===== WHO ===== -->
<section class="who pad">
  <div class="wrap">
    <div class="sec-head rv">
      <div class="sec-sign" style="background:var(--orange)"><span class="en">FOR FAMILIES</span><span class="jp">ご利用について</span></div>
      <p>「うちの子でも大丈夫?」に、ひと目でお答えします。</p>
    </div>
    <div class="who-grid">
      <div class="who-card rv"><div class="big">0–12</div><div class="lbl">対象年齢</div><div class="sm">12歳までのお子さま</div></div>
      <div class="who-card rv"><div class="big">1:3</div><div class="lbl">同伴ルール</div><div class="sm">保護者1名につき<br>お子さま3名まで</div></div>
      <div class="who-card rv"><div class="big">18+</div><div class="lbl">保護者同伴</div><div class="sm">18歳以上の方の<br>同伴が必須</div></div>
      <div class="who-card rv"><div class="big">🍼</div><div class="lbl">授乳室あり</div><div class="sm">チケットなしでも<br>利用できます</div></div>
    </div>
  </div>
</section>

<!-- ===== INFO ===== -->
<section class="info pad">
  <div class="wrap">
    <div class="sec-head rv">
      <div class="sec-sign" style="background:var(--ink)"><span class="en">INFORMATION</span><span class="jp">営業時間・料金</span></div>
    </div>
    <div class="info-grid">
      <div class="panel rv">
        <h3><span class="tag">HOURS</span>営業時間</h3>
        <div class="hours-row"><b>平日</b><span>10:00 – 17:00</span></div>
        <div class="hours-row"><b>土日・祝日</b><span>10:00 – 18:00</span></div>
        <div class="hours-row"><b>定休日</b><span class="closed">毎週火曜</span></div>
        <div class="hours-row"><b>受付最終</b><span>閉店の1時間前</span></div>
        <p style="font-size:.8rem;font-weight:500;margin-top:14px;color:#777">※臨時休業・営業体制の変更がある場合があります。営業日カレンダーもあわせてご確認ください。</p>
      </div>
      <div class="panel rv">
        <h3><span class="tag">PRICE</span>料金</h3>
        <div class="price-note">💡 最新の料金は、営業日カレンダー兼料金表（PDF）でご確認ください。<br><b>＜ここに料金表を掲載予定＞</b></div>
        <div class="pdf-row">
          <a class="pdf-btn" href="https://www.kawaguchi-highwayoasis.com/assets/pdf/asoboon_calendar.pdf" target="_blank" rel="noopener">📅 料金表・カレンダー</a>
          <a class="pdf-btn alt" href="https://www.kawaguchi-highwayoasis.com/assets/pdf/asoboon_faq.pdf" target="_blank" rel="noopener">❓ よくある質問</a>
        </div>
      </div>
    </div>

    <div style="margin-top:30px">
      <h3 style="font-family:var(--disp);font-weight:900;font-size:1.25rem;text-align:center;margin-bottom:18px">入場・受付の流れ</h3>
      <div class="branch">
        <div class="br rv">
          <div class="br-h" style="background:var(--green)">通常の平日</div>
          <div class="br-b">
            <ul>
              <li>整理券の配布はありません</li>
              <li>そのまま店頭へお越しいただき入場</li>
              <li>時間無制限・途中入退場も自由</li>
            </ul>
          </div>
        </div>
        <div class="br rv">
          <div class="br-h" style="background:var(--red)">土日・祝日・特定日</div>
          <div class="br-b">
            <ul>
              <li>時間入替制（混雑速報で空き確認）</li>
              <li>オンライン受付：当日<b>朝7時〜</b></li>
              <li>現地受付：<b>9時半〜</b>整理券を配布</li>
              <li>前日以前の予約はできません</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ===== RESERVE (main CTA) ===== -->
<section class="reserve pad" id="reserve">
  <div class="wrap">
    <div class="sec-head rv">
      <div class="sec-sign"><span class="en">RESERVATION</span><span class="jp">予約・受付はこちら</span></div>
      <p>当日分のオンライン受付は、このページのボタンから。スマホで席（整理券）を確保してからお越しいただけます。</p>
    </div>
    <div class="res-cards">
      <div class="res-card rv">
        <h3>当日オンライン受付</h3>
        <p class="desc">土日・祝日・特定日は、当日<b>朝7時</b>から受付スタート。並ばずにスマホから入場枠を確保できます。</p>
        <div class="steps">
          <div class="step"><div class="n">1</div><div class="t">ボタンを<br>タップ</div></div>
          <div class="step"><div class="n">2</div><div class="t">希望の<br>入場時間を選ぶ</div></div>
          <div class="step"><div class="n">3</div><div class="t">受付完了<br>→ 来場</div></div>
        </div>
        <a class="btn-res" href="https://airwait.jp/WCSP/storeDetail?storeNo=AKR2298124918" target="_blank" rel="noopener">🎫 当日オンライン受付へ進む</a>
        <p style="font-size:.78rem;font-weight:500;margin-top:12px;color:#777">※当日分のみ・空き状況は随時更新／通常の平日は受付不要でそのまま入場できます。</p>
      </div>
      <div class="res-card group rv">
        <h3>団体予約</h3>
        <p class="grp-meta">学校・学童・保育関係の法人団体さま向け（11〜60名／お子さま5名につき保護者1名以上、平日のみ）。WEBで仮予約を受け付けています。<br><span style="color:#777;font-size:.8rem">※本予約にはお電話での調整が必要です。</span></p>
        <a class="btn-res sub" href="https://airrsv.net/asoboon-group-reservation/calendar/" target="_blank" rel="noopener">🏫 団体予約（法人）へ</a>
      </div>
    </div>
  </div>
</section>

<!-- ===== ACCESS ===== -->
<section class="access pad">
  <div class="wrap">
    <div class="sec-head rv">
      <div class="sec-sign" style="background:var(--forest)"><span class="en">ACCESS</span><span class="jp">アクセス</span></div>
    </div>
    <div class="acc-grid">
      <div class="acc-info rv">
        <div class="row">
          <div class="ic">MAP</div>
          <div><div class="k">所在地</div><div class="v">埼玉県川口市赤山501-1（川口ハイウェイオアシス内）<br><span style="color:#777;font-size:.82rem">カーナビ検索は「川口市赤山986」でご入力ください。</span></div></div>
        </div>
        <div class="row">
          <div class="ic">TEL</div>
          <div><div class="k">お問い合わせ</div><div class="v">ASOBooN事務局<br><a class="tel" href="tel:048-420-9780">048-420-9780</a></div></div>
        </div>
        <div class="row">
          <div class="ic">🚗</div>
          <div><div class="k">駐車場</div><div class="v">高速道路側・一般道側ともに駐車場あり。高速道路駐車場・トイレは24時間利用可。</div></div>
        </div>
        <div class="sns">
          <a href="https://www.instagram.com/asoboon425/" target="_blank" rel="noopener"><span class="ig"></span>@asoboon425（イベント）</a>
          <a href="https://www.instagram.com/kawaguchi_hwo/" target="_blank" rel="noopener"><span class="ig"></span>@kawaguchi_hwo（全体）</a>
        </div>
      </div>
      <div class="map-embed rv">
        <iframe loading="lazy" referrerpolicy="no-referrer-when-downgrade"
          src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12935.871542688676!2d139.743787!3d35.849791!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018944516c9add7%3A0x4459f52dee070c37!2z44CSMzMzLTA4MjUg5Z-8546J55yM5bed5Y-j5biC6LWk5bGx77yV77yQ77yR4oiS77yR!5e0!3m2!1sja!2sjp!4v1647402101162!5m2!1sja!2sjp"
          title="川口ハイウェイオアシス 地図"></iframe>
      </div>
    </div>
  </div>
</section>

<!-- ===== FOOTER ===== -->
<footer>
  <div class="wrap">
    <div class="fbrand">ASOBooN</div>
    <div class="ftag">子どもが、旅するようにあそぶ場所。</div>
    <a class="btn-res" href="https://airwait.jp/WCSP/storeDetail?storeNo=AKR2298124918" target="_blank" rel="noopener">🎫 当日オンライン受付はこちら</a>
    <div class="fnav">
      <a href="#about">ASOBooNとは</a>
      <a href="#areas">7つのエリア</a>
      <a href="#reserve">予約・受付</a>
      <a href="https://www.kawaguchi-highwayoasis.com/assets/pdf/asoboon_calendar.pdf" target="_blank" rel="noopener">料金・カレンダー</a>
      <a href="https://www.kawaguchi-highwayoasis.com/assets/pdf/asoboon_faq.pdf" target="_blank" rel="noopener">よくある質問</a>
    </div>
    <div class="copy">川口ハイウェイオアシス｜屋内あそび場 ASOBooN（アソブーン）</div>
  </div>
</footer>

<!-- sticky mobile reservation bar -->
<div class="mbar">
  <a href="https://airwait.jp/WCSP/storeDetail?storeNo=AKR2298124918" target="_blank" rel="noopener">🎫 当日オンライン受付はこちら</a>
</div>

<script>
  // staggered reveal on scroll
  const io=new IntersectionObserver((es)=>{
    es.forEach((e,i)=>{ if(e.isIntersecting){ setTimeout(()=>e.target.classList.add('in'),i*60); io.unobserve(e.target);} });
  },{threshold:.14});
  document.querySelectorAll('.rv').forEach(el=>io.observe(el));
</script>
</body>
</html>
