<!doctype html>
<html lang="ru">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>dimobAvtoParts — Подбор и доставка автозапчастей</title>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root {
      --red: #d40000;
      --dark: #111;
      --white: #fff;
      --logo-width: 90px;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: 'Montserrat', system-ui, Arial;
      color: var(--dark);
      background: var(--white);
    }

    /* --- Фон с паттерном деталей --- */
    .pattern-bg {
      position: relative;
      overflow: hidden;
      background-color: var(--red);
      color: var(--white);
    }
    .pattern-bg svg {
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      opacity: 0.25;
      pointer-events: none;
    }

    /* --- Боковые логотипы --- */
    .sidebar-left, .sidebar-right {
      position: fixed;
      top: 0;
      bottom: 0;
      width: 120px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 20px;
      padding: 20px 8px;
      pointer-events: none;
    }
    .sidebar-left { left: 0; }
    .sidebar-right { right: 0; }
    .logo-pill {
      width: var(--logo-width);
      height: 56px;
      background: #f3f3f3;
      color: #555;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      border-radius: 8px;
      box-shadow: 0 1px 2px rgba(0,0,0,0.05);
      pointer-events: auto;
    }

    /* --- Шапка --- */
    header {
      text-align: center;
      padding: 60px 160px;
      position: relative;
      z-index: 2;
    }
    header h1 {
      margin: 0;
      font-size: 36px;
      font-weight: 700;
      color: var(--white);
    }
    header h1 span {
      color: #000;
      background: rgba(255,255,255,0.12);
      padding: 2px 6px;
      border-radius: 4px;
      margin-left: 8px;
    }
    header p.lead {
      margin: 12px auto 0;
      max-width: 900px;
      font-size: 18px;
      color: rgba(255,255,255,0.95);
    }
    .cta-row { margin-top: 20px; }
    .whatsapp-btn {
      display: inline-block;
      background: #25D366;
      color: #fff;
      padding: 10px 16px;
      border-radius: 8px;
      text-decoration: none;
      font-weight: 700;
      margin: 0 6px;
      box-shadow: 0 6px 18px rgba(37,211,102,0.15);
    }

    /* --- Основной блок --- */
    main {
      background: var(--white);
      max-width: 980px;
      margin: -24px auto 60px;
      padding: 48px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.08);
      position: relative;
      z-index: 3;
    }
    h2 { color: var(--red); margin-top: 0; }
    .two-col {
      display: flex;
      gap: 32px;
      margin-top: 24px;
    }
    .col { flex: 1; }
    ul.clean { list-style: none; padding-left: 0; margin: 0; }
    ul.clean li {
      margin-bottom: 10px;
      padding-left: 22px;
      position: relative;
    }
    ul.clean li:before {
      content: '✔';
      position: absolute;
      left: 0;
      top: 0;
      color: var(--red);
      font-weight: 700;
    }

    .partners-strip {
      margin-top: 28px;
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
      justify-content: center;
    }
    .partner {
      width: 120px;
      height: 48px;
      background: #f5f5f5;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #777;
      border-radius: 8px;
      font-weight: 700;
      font-size: 13px;
    }

    /* --- Подвал --- */
    footer {
      color: var(--white);
      text-align: center;
      padding: 36px 160px 48px;
      position: relative;
      z-index: 2;
    }
    footer p { margin: 6px 0; color: rgba(255,255,255,0.95); }
    .qrs {
      display: flex;
      gap: 18px;
      justify-content: center;
      margin-top: 14px;
    }
    .qrs img {
      width: 120px;
      height: 120px;
      border-radius: 8px;
      background: #fff;
      padding: 6px;
    }

    @media (max-width:1100px) {
      header, footer { padding-left: 80px; padding-right: 80px; }
      main { padding-left: 40px; padding-right: 40px; margin: -20px 20px 32px; }
      .sidebar-left, .sidebar-right { width: 80px; }
      :root { --logo-width: 72px; }
    }
    @media (max-width:820px) {
      .sidebar-left, .sidebar-right { display: none; }
      header { padding: 40px 20px; }
      footer { padding: 28px 20px; }
      main { padding: 28px 20px; margin: -12px 12px 24px; }
    }
  </style>
</head>
<body>

  <!-- Боковые бренды -->
  <div class="sidebar-left">
    <div class="logo-pill">FEBEST</div>
    <div class="logo-pill">CTR</div>
    <div class="logo-pill">MEYLE</div>
    <div class="logo-pill">SKF</div>
    <div class="logo-pill">BOSCH</div>
    <div class="logo-pill">NGK</div>
    <div class="logo-pill">DENSO</div>
  </div>

  <div class="sidebar-right">
    <div class="logo-pill">KYB</div>
    <div class="logo-pill">GMB</div>
    <div class="logo-pill">NSK</div>
    <div class="logo-pill">KOYO</div>
    <div class="logo-pill">MAHLE</div>
    <div class="logo-pill">SNR</div>
    <div class="logo-pill">BLUE PRINT</div>
  </div>

  <!-- Шапка -->
  <header class="pattern-bg">
    <svg xmlns="http://www.w3.org/2000/svg">
      <defs>
        <pattern id="parts" width="260" height="260" patternUnits="userSpaceOnUse">
          <g transform="translate(20,20)" stroke="#000" stroke-width="1" fill="none">
            <circle cx="40" cy="40" r="18"/>
            <path d="M40 14 L40 4M62 40 L72 40M40 66 L40 76M18 40 L8 40"/>
          </g>
          <g transform="translate(140,18)" stroke="#000" stroke-width="1" fill="none">
            <circle cx="40" cy="40" r="28"/>
            <circle cx="40" cy="40" r="10"/>
            <path d="M40 12 L40 4M40 68 L40 76M12 40 L4 40M68 40 L76 40M28 28 L20 20M52 52 L60 60"/>
          </g>
          <g transform="translate(40,160)" stroke="#000" stroke-width="1" fill="none">
            <rect x="0" y="0" width="10" height="30" rx="2"/>
            <path d="M5 30 L5 44M0 6 L10 6"/>
          </g>
          <g transform="translate(180,160)" stroke="#000" stroke-width="1" fill="none">
            <rect x="0" y="0" width="8" height="40" rx="3"/>
            <circle cx="4" cy="52" r="6"/>
          </g>
          <g transform="translate(100,110)" stroke="#000" stroke-width="1" fill="none">
            <rect x="0" y="0" width="40" height="24" rx="3"/>
            <line x1="4" y1="6" x2="36" y2="6"/>
            <line x1="4" y1="12" x2="36" y2="12"/>
          </g>
        </pattern>
      </defs>
      <rect width="100%" height="100%" fill="url(#parts)" />
    </svg>

    <h1>dimob<span>Avto</span>Parts</h1>
    <p class="lead">Подберём нужную деталь за 5 минут — без ожиданий и складов!<br><em>Надёжный партнёр СТО по подбору и доставке автозапчастей.</em></p>
    <div class="cta-row">
      <a class="whatsapp-btn" href="https://wa.me/77072902502" target="_blank">Менеджер Дмитрий</a>
      <a class="whatsapp-btn" href="https://wa.me/77089203177" target="_blank">Менеджер Евгений</a>
    </div>
  </header>

  <!-- Основной контент -->
  <main>
    <h2>Как мы работаем</h2>
    <p>Отправьте нам <strong>VIN</strong> и название запчасти — мы проверим базы и подберём все доступные варианты по цене, срокам и производителю. Доставим прямо на ваш сервис — без складских наценок.</p>

    <div class="two-col">
      <div class="col">
        <h3>Удобно для СТО</h3>
        <ul class="clean">
          <li>Подбор по VIN и коду детали</li>
          <li>Предложения от нескольких поставщиков</li>
          <li>Доставка прямо на сервис</li>
          <li>Фиксирование цены и сроков</li>
        </ul>
      </div>
      <div class="col">
        <h3>Что мы предлагаем</h3>
        <ul class="clean">
          <li>Оригиналы и качественные аналоги</li>
          <li>Экспресс-поиск редких позиций</li>
          <li>Гарантия на поставку</li>
          <li>Удобные способы оплаты</li>
        </ul>
      </div>
    </div>

    <div class="partners-strip">
      <div class="partner">FEBEST</div>
      <div class="partner">CTR</div>
      <div class="partner">MEYLE</div>
      <div class="partner">SKF</div>
      <div class="partner">BOSCH</div>
      <div class="partner">NGK</div>
      <div class="partner">DENSO</div>
      <div class="partner">KYB</div>
    </div>
  </main>

  <!-- Подвал -->
  <footer class="pattern-bg">
    <svg xmlns="http://www.w3.org/2000/svg">
      <use href="#parts"></use>
    </svg>
    <p><strong>Свяжитесь с нами:</strong></p>
    <p>WhatsApp:
      <a href="https://wa.me/77072902502" target="_blank" style="color:#fff;text-decoration:underline">+7 707 290 2502 (Дмитрий)</a> |
      <a href="https://wa.me/77089203177" target="_blank" style="color:#fff;text-decoration:underline">+7 708 920 3177 (Евгений)</a>
    </p>
    <p>г. Алматы | Работаем по всему Казахстану</p>
    <div class="qrs">
      <img src="https://api.qrserver.com/v1/create-qr-code/?data=https://wa.me/77072902502&size=250x250" alt="QR Дмитрий" />
      <img src="https://api.qrserver.com/v1/create-qr-code/?data=https://wa.me/77089203177&size=250x250" alt="QR Евгений" />
    </div>
  </footer>
</body>
</html>
