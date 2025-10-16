<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>dimobAvtoParts — Подбор и доставка автозапчастей</title>
<style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #fff;
    color: #000;
    overflow-x: hidden;
  }
  header {
    background-color: #d72626;
    color: white;
    text-align: center;
    padding: 40px 10px;
    position: relative;
  }
  header::before {
    content: "";
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-image: url('https://www.transparenttextures.com/patterns/gears.png');
    opacity: 0.2;
  }
  header h1 {
    font-size: 48px;
    font-weight: 800;
    z-index: 2;
    position: relative;
    letter-spacing: 1px;
  }
  header p {
    font-size: 18px;
    z-index: 2;
    position: relative;
  }

  .hero-buttons {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
    margin-top: 20px;
    position: relative;
    z-index: 2;
  }

  .button {
    background-color: #000;
    color: white;
    padding: 14px 24px;
    border-radius: 8px;
    text-decoration: none;
    font-weight: 600;
    display: flex;
    align-items: center;
    gap: 8px;
    transition: 0.3s;
  }

  .button:hover {
    background-color: #333;
  }

  .button img {
    width: 20px;
    height: 20px;
  }

  .qr-container {
    display: flex;
    justify-content: center;
    gap: 50px;
    margin-top: 30px;
    flex-wrap: wrap;
  }
  .qr-item {
    text-align: center;
  }
  .qr-item img {
    width: 120px;
    height: 120px;
  }

  main {
    padding: 50px 5%;
    background-color: #fff;
  }
  .tiles {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 25px;
  }
  .tile {
    background-color: #f8f8f8;
    border: 2px solid #d72626;
    border-radius: 12px;
    padding: 20px;
    text-align: center;
    transition: transform 0.3s, box-shadow 0.3s;
  }
  .tile:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 15px rgba(0,0,0,0.1);
  }
  .tile h3 {
    color: #d72626;
    margin-bottom: 10px;
  }

  footer {
    background-color: #d72626;
    color: white;
    padding: 40px 20px;
    position: relative;
    text-align: center;
  }
  footer::before {
    content: "";
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-image: url('https://www.transparenttextures.com/patterns/gears.png');
    opacity: 0.15;
  }
  footer p {
    margin: 5px 0;
    position: relative;
    z-index: 2;
  }

  .social {
    position: absolute;
    bottom: 20px;
    left: 30px;
    z-index: 2;
  }
  .social a {
    color: white;
    text-decoration: none;
    font-size: 16px;
  }
</style>
</head>
<body>

<header>
  <h1>dimobAvtoParts</h1>
  <p>Подбор и доставка автозапчастей по городу Актобе<br>Работаем напрямую со СТО — без склада, быстро и точно!</p>

  <div class="hero-buttons">
    <a href="https://wa.me/77072902502" class="button" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg"> Менеджер Дмитрий
    </a>
    <a href="https://wa.me/77089203177" class="button" target="_blank">
      <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg"> Менеджер Евгений
    </a>
  </div>

  <div class="qr-container">
    <div class="qr-item">
      <img src="https://api.qrserver.com/v1/create-qr-code/?data=https://wa.me/77072902502&size=120x120" alt="QR Дмитрий">
      <p>Сканируйте, чтобы написать Дмитрию</p>
    </div>
    <div class="qr-item">
      <img src="https://api.qrserver.com/v1/create-qr-code/?data=https://wa.me/77089203177&size=120x120" alt="QR Евгений">
      <p>Сканируйте, чтобы написать Евгению</p>
    </div>
  </div>
</header>

<main>
  <div class="tiles">
    <div class="tile">
      <h3>🚗 Подбор по VIN</h3>
      <p>Просто отправьте VIN-код и название запчасти — подберем все возможные варианты.</p>
    </div>
    <div class="tile">
      <h3>🔧 Работа с СТО</h3>
      <p>Сотрудничаем напрямую с автосервисами — всё быстро, удобно и без посредников.</p>
    </div>
    <div class="tile">
      <h3>📦 Доставка на сервис</h3>
      <p>Доставляем нужные запчасти прямо на ваше СТО в день заказа.</p>
    </div>
    <div class="tile">
      <h3>🏷️ Производители</h3>
      <p>FEBEST, CTR, LYNX, GMB, KOYO, MOBIS, MASUMA, 555, KOYO и другие.</p>
    </div>
    <div class="tile">
      <h3>💰 Гибкие условия</h3>
      <p>Индивидуальные цены для постоянных клиентов и сервисов.</p>
    </div>
    <div class="tile">
      <h3>🧾 Гарантия качества</h3>
      <p>Все запчасти проходят проверку и имеют официальную гарантию.</p>
    </div>
  </div>
</main>

<footer>
  <div class="social">
    <a href="#" target="_blank">Instagram dimobAvtoParts</a>
  </div>
  <p>г. Актобе</p>
  <p>© 2025 dimobAvtoParts — Подбор и доставка автозапчастей</p>
</footer>

</body>
</html>
