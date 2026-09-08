<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · redesigned</title>
  <!-- fonts & icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', sans-serif;
      background: #f6f8fc;
      color: #121826;
      line-height: 1.5;
    }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }
    a { text-decoration: none; color: inherit; }
    button { background: none; border: none; cursor: pointer; font: inherit; }

    /* ----- logo (SVG) ----- */
    .logo-wrap {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .logo-svg {
      width: 40px;
      height: 40px;
    }
    .logo-text {
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
    }
    .logo-text span { color: #2d7a6e; }

    /* ----- header ----- */
    header {
      background: #ffffffdd;
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      position: sticky;
      top: 0;
      z-index: 50;
      border-bottom: 1px solid #eef1f4;
    }
    .header-grid {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 0;
      gap: 20px;
      flex-wrap: wrap;
    }
    .nav-links {
      display: flex;
      gap: 8px;
      flex-wrap: wrap;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: #4a5568;
      transition: 0.2s;
    }
    .nav-links a:hover,
    .nav-links a.active {
      background: #eef2f6;
      color: #0b1a2b;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: 40px;
      display: grid;
      place-items: center;
      background: transparent;
      color: #2d3748;
      font-size: 18px;
      transition: 0.2s;
    }
    .icon-btn:hover {
      background: #eef2f6;
      color: #1a202c;
    }
    .cart-badge {
      position: relative;
    }
    .cart-badge .count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #d45c4c;
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 20px;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }
    .search-bar {
      display: flex;
      align-items: center;
      background: #f1f4f9;
      border-radius: 60px;
      padding: 0 6px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 200px;
    }
    .search-bar:focus-within {
      border-color: #2d7a6e;
      background: #ffffff;
      box-shadow: 0 0 0 4px rgba(45, 122, 110, 0.12);
    }
    .search-bar input {
      border: none;
      background: transparent;
      padding: 10px 0;
      width: 100%;
      outline: none;
      font-size: 14px;
    }
    .search-bar button {
      padding: 8px 10px;
      color: #6b7a8f;
      transition: 0.2s;
    }
    .search-bar button:hover { color: #2d7a6e; }

    /* mobile toggle */
    .mobile-toggle {
      display: none;
      width: 42px;
      height: 42px;
      border-radius: 40px;
      background: #f1f4f9;
      font-size: 20px;
    }
    #mobileMenu {
      display: none;
      background: #fff;
      padding: 12px 0 20px;
      border-top: 1px solid #edf0f4;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 12px 16px;
      border-radius: 12px;
      font-weight: 500;
    }
    #mobileMenu ul li a:hover { background: #f1f4f9; }

    /* ----- hero ----- */
    .hero {
      background: linear-gradient(145deg, #eaf0f7, #dae3ed);
      border-radius: 32px;
      margin: 24px 0 0;
      padding: 56px 48px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 28px;
      position: relative;
    }
    .hero-content { max-width: 540px; }
    .hero-content .badge {
      display: inline-block;
      background: #2d7a6e20;
      color: #1e5f55;
      font-weight: 600;
      font-size: 13px;
      padding: 4px 16px;
      border-radius: 40px;
      margin-bottom: 14px;
    }
    .hero-content h1 {
      font-size: 40px;
      font-weight: 700;
      letter-spacing: -0.5px;
      line-height: 1.2;
    }
    .hero-content p {
      color: #2d3a4a;
      font-size: 16px;
      margin: 12px 0 24px;
      max-width: 420px;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: 0.2s;
      border: 2px solid transparent;
    }
    .btn-primary {
      background: #1e3a3a;
      color: #fff;
      border-color: #1e3a3a;
    }
    .btn-primary:hover {
      background: #122a2a;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(30, 58, 58, 0.25);
    }
    .btn-outline {
      background: transparent;
      border-color: #bac8d9;
      color: #1e2a3a;
    }
    .btn-outline:hover {
      background: #1e3a3a;
      color: #fff;
      border-color: #1e3a3a;
    }
    .btn-accent {
      background: #d45c4c;
      color: #fff;
      border-color: #d45c4c;
    }
    .btn-accent:hover {
      background: #b84a3a;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(212, 92, 76, 0.25);
    }
    .hero-image {
      flex: 1 1 200px;
      display: flex;
      justify-content: center;
    }
    .hero-image img {
      max-width: 260px;
      width: 100%;
      filter: drop-shadow(0 12px 24px rgba(0,0,0,0.08));
    }

    /* ----- section ----- */
    .section { padding: 48px 0; }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header p { color: #5b6b7e; margin-top: 2px; }
    .view-all {
      font-weight: 600;
      color: #2d7a6e;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.2s;
    }
    .view-all:hover { gap: 12px; color: #1e5f55; }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-item {
      background: #fff;
      border-radius: 20px;
      padding: 22px 10px;
      text-align: center;
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
      border: 1px solid #edf0f4;
      transition: 0.25s;
      cursor: pointer;
    }
    .cat-item:hover {
      transform: translateY(-6px);
      border-color: #cbd5e0;
      box-shadow: 0 12px 28px rgba(0,0,0,0.04);
    }
    .cat-item .icon {
      width: 52px;
      height: 52px;
      background: #e9f0f5;
      border-radius: 40px;
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 24px;
      color: #1e3a3a;
    }
    .cat-item h4 { font-weight: 600; font-size: 15px; }
    .cat-item .count { font-size: 13px; color: #6b7b8f; }

    /* products */
    .prod-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 24px;
    }
    .prod-card {
      background: #fff;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 4px 14px rgba(0,0,0,0.02);
      border: 1px solid #edf0f4;
      transition: 0.25s;
      display: flex;
      flex-direction: column;
    }
    .prod-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 16px 36px rgba(0,0,0,0.04);
      border-color: #d0d9e4;
    }
    .prod-img {
      background: #f4f7fa;
      aspect-ratio: 1 / 1;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
    }
    .prod-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }
    .prod-card:hover .prod-img img { transform: scale(1.02); }
    .prod-badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: #d45c4c;
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      padding: 4px 12px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }
    .prod-badge.sale { background: #d4a24c; color: #1e1e1e; }
    .wish-btn {
      position: absolute;
      right: 14px;
      top: 14px;
      width: 36px;
      height: 36px;
      background: #ffffffdd;
      backdrop-filter: blur(4px);
      border-radius: 40px;
      display: grid;
      place-items: center;
      color: #5b6b7e;
      transition: 0.2s;
    }
    .wish-btn:hover { background: #fff; color: #d45c4c; transform: scale(1.06); }
    .prod-body {
      padding: 16px 16px 10px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }
    .prod-body .cat-tag {
      font-size: 12px;
      color: #7a8a9e;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      font-weight: 600;
    }
    .prod-body h5 {
      font-size: 15px;
      font-weight: 600;
      margin: 4px 0 2px;
      line-height: 1.3;
    }
    .prod-body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 6px 0 2px;
    }
    .prod-body .price { font-weight: 700; font-size: 18px; }
    .prod-body .old-price {
      color: #8a9aa8;
      text-decoration: line-through;
      font-size: 14px;
    }
    .prod-body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      color: #f5a623;
      font-size: 14px;
    }
    .prod-body .rating span { color: #6b7b8f; font-weight: 400; }
    .prod-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .prod-footer .add-btn {
      flex: 1;
      background: #1e3a3a;
      color: #fff;
      padding: 10px 0;
      border-radius: 40px;
      font-weight: 600;
      font-size: 14px;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .prod-footer .add-btn:hover { background: #122a2a; }
    .prod-footer .add-btn.added { background: #2d7a6e; }

    /* deal */
    .deal-box {
      display: flex;
      flex-wrap: wrap;
      background: #fff;
      border-radius: 28px;
      overflow: hidden;
      border: 1px solid #e9edf2;
    }
    .deal-box .deal-img {
      flex: 1 1 260px;
      background: #eef3f8;
      min-height: 220px;
    }
    .deal-box .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-box .deal-body {
      flex: 2 1 320px;
      padding: 32px 34px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-body .tag {
      background: #d4a24c;
      color: #1e1e1e;
      padding: 4px 16px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 12px;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
    }
    .deal-body h3 { font-size: 26px; font-weight: 700; }
    .deal-body .desc { color: #4a5a6e; margin: 6px 0 10px; }
    .deal-body .big-price {
      font-size: 30px;
      font-weight: 800;
    }
    .deal-body .big-price .old {
      font-size: 20px;
      font-weight: 400;
      color: #8a9aa8;
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-body .stock { color: #5b6b7e; font-size: 14px; margin: 2px 0 12px; }
    .deal-body .stock strong { color: #d45c4c; }
    .timer-wrap {
      display: flex;
      gap: 10px;
      margin: 10px 0 16px;
    }
    .timer-box {
      background: #1e2a3a;
      color: #fff;
      padding: 8px 12px;
      border-radius: 16px;
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num { font-size: 24px; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 10px; opacity: 0.7; text-transform: uppercase; }

    /* testimonials */
    .testi-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 6px 2px 20px;
      scroll-snap-type: x mandatory;
    }
    .testi-scroll::-webkit-scrollbar { height: 4px; }
    .testi-scroll::-webkit-scrollbar-thumb { background: #d0d9e4; border-radius: 20px; }
    .testi-item {
      flex: 0 0 300px;
      background: #fff;
      border-radius: 24px;
      padding: 24px;
      border: 1px solid #edf0f4;
      scroll-snap-align: start;
      transition: 0.2s;
    }
    .testi-item:hover { box-shadow: 0 8px 24px rgba(0,0,0,0.03); }
    .testi-item .stars { color: #f5a623; letter-spacing: 2px; margin-bottom: 8px; }
    .testi-item blockquote { font-style: italic; color: #1e2a3a; margin-bottom: 12px; }
    .testi-item .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testi-item .author img {
      width: 44px;
      height: 44px;
      border-radius: 40px;
      object-fit: cover;
      background: #eef3f8;
    }

    /* newsletter */
    .news-wrap {
      background: #1e2a3a;
      border-radius: 32px;
      padding: 40px 44px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
      color: #fff;
    }
    .news-wrap h3 { font-size: 24px; font-weight: 700; }
    .news-wrap p { opacity: 0.75; }
    .news-wrap form {
      display: flex;
      gap: 10px;
      flex: 1 1 300px;
    }
    .news-wrap input {
      flex: 1;
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      background: #ffffff18;
      color: #fff;
      font-size: 14px;
      outline: 2px solid transparent;
      transition: 0.2s;
    }
    .news-wrap input::placeholder { color: #ffffff80; }
    .news-wrap input:focus { outline-color: #d45c4c; background: #ffffff28; }
    .news-wrap .btn {
      background: #d45c4c;
      color: #fff;
      padding: 14px 28px;
      border-radius: 60px;
      font-weight: 600;
    }
    .news-wrap .btn:hover { background: #b84a3a; }
    #newsletterMsg { margin-top: 10px; width: 100%; font-size: 14px; }

    /* footer */
    footer {
      border-top: 1px solid #e9edf2;
      padding: 40px 0 24px;
      margin-top: 16px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 28px;
    }
    .footer-brand p { color: #4a5a6e; max-width: 260px; font-size: 14px; }
    .socials { display: flex; gap: 10px; margin-top: 12px; }
    .socials a {
      width: 40px;
      height: 40px;
      border-radius: 40px;
      background: #f1f4f9;
      display: grid;
      place-items: center;
      color: #2d3a4a;
      transition: 0.2s;
    }
    .socials a:hover { background: #2d7a6e; color: #fff; }
    .footer-col h5 { font-weight: 700; margin-bottom: 12px; }
    .footer-col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-col ul a { color: #4a5a6e; font-size: 14px; transition: 0.2s; }
    .footer-col ul a:hover { color: #1e3a3a; }
    .footer-bottom { text-align: center; border-top: 1px solid #edf0f4; padding-top: 20px; color: #6b7b8f; font-size: 13px; }

    @media (max-width: 900px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 640px) {
      .hero { padding: 32px 24px; }
      .hero-content h1 { font-size: 30px; }
      .prod-grid { grid-template-columns: 1fr 1fr; gap: 14px; }
      .deal-box .deal-body { padding: 24px 20px; }
      .news-wrap { padding: 28px 24px; }
      .footer-grid { grid-template-columns: 1fr; }
      .search-bar { min-width: 120px; }
    }
  </style>
</head>
<body>

<!-- HEADER -->
<header>
  <div class="container header-grid">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <div class="logo-wrap">
        <!-- simple SVG logo: N + dot + accent -->
        <svg class="logo-svg" viewBox="0 0 40 40" fill="none">
          <rect x="2" y="2" width="36" height="36" rx="12" fill="#1e3a3a" />
          <path d="M12 28L12 12L20 22L28 12L28 28" stroke="#f0f6fc" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round" />
          <circle cx="28" cy="28" r="4" fill="#d45c4c" stroke="#f0f6fc" stroke-width="2" />
        </svg>
        <span class="logo-text">Nexus<span>Shop</span></span>
      </div>
    </div>

    <nav class="nav-links">
      <a href="#" class="active"><i class="fas fa-home"></i> Home</a>
      <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#products"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deals"><i class="fas fa-tag"></i> Deals</a>
      <a href="#testimonials"><i class="fas fa-star"></i> Reviews</a>
    </nav>

    <div style="display:flex;align-items:center;gap:8px;">
      <div class="search-bar">
        <input type="search" id="searchInput" placeholder="Search ..." />
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn"><i class="far fa-user"></i></button>
        <button class="icon-btn"><i class="far fa-heart"></i></button>
        <div class="cart-badge">
          <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
          <span class="count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="container hero">
    <div class="hero-content">
      <span class="badge"><i class="fas fa-sparkles"></i> spring collection 2026</span>
      <h1>Premium essentials,<br>simplified.</h1>
      <p>Curated fashion, tech & accessories — free shipping on first order.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
      </div>
    </div>
    <div class="hero-image">
      <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=400&q=80" alt="hero" style="border-radius:28px;">
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Shop by category</h2><p>Find what you love</p></div>
        <a href="#" class="view-all">All categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>🔥 Trending now</h2><p>Popular picks from our community</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="prod-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header"><div><h2>⚡ Flash deal</h2><p>limited stock — grab it now</p></div></div>
      <div class="deal-box">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook" loading="lazy">
        </div>
        <div class="deal-body">
          <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful.</p>
          <div><span class="big-price">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left</p>
          <div class="timer-wrap" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-accent" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header"><div><h2>⭐ Customer stories</h2><p>Real reviews, real people</p></div></div>
      <div class="testi-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="news-wrap">
        <div><h3>Stay in the loop</h3><p>Exclusive offers & early access</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Your email" required />
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <div class="logo-wrap"><svg class="logo-svg" viewBox="0 0 40 40" fill="none"><rect x="2" y="2" width="36" height="36" rx="12" fill="#1e3a3a" /><path d="M12 28L12 12L20 22L28 12L28 28" stroke="#f0f6fc" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round" /><circle cx="28" cy="28" r="4" fill="#d45c4c" stroke="#f0f6fc" stroke-width="2" /></svg><span class="logo-text">Nexus<span>Shop</span></span></div>
        <p>Modern e‑commerce demo, built with care.</p>
        <div class="socials">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="footer-col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
      <div class="footer-col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
      <div class="footer-col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // ----- DATA -----
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'Smartphones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80
