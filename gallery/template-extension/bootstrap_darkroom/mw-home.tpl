<div class="mw-page">
<div class="mw-home">

<section class="mw-hero">
  <img src="/gallery/local/images/home/hero.jpg" alt="" class="mw-hero-image">

  <div class="mw-hero-overlay">
    <div class="mw-hero-content">      
      <div class="mw-hero-text"> 
        <h1>Gdzieś...pomiędzy<br>nocą a dniem</h1>
      </div>
    </div>
  </div>
</section>

<section id="mw-powroty" class="mw-section mw-about">
  <div class="mw-about-text">
    <div class="mw-label">O miejscach, do których wracam</div>
      <p>Stale wracam w te same miejsca. Nie dlatego, że są wyjątkowe. Przeciwnie — mogłyby znajdować się niemal wszędzie.</p>

<p>Fascynuje mnie świat pomiędzy nocą a dniem. Niedookreślony, pozbawiony wyraźnych granic, tajemniczy.</p>

<p>Ulotny jak mgła rozproszona pierwszym światłem, zapach mokrej łąki czy ciepło porannego słońca na twarzy.</p>

<p>Staram się fotografować nie miejsca, lecz chwile, w których odnajduję to, co noszę w sobie.
Smutek, melancholię, ale również zachwyt nad cudownym kręgiem życia...
</p>
  </div>

  <div class="mw-about-image">
    <img src="/gallery/local/images/home/mostek.jpg" alt="">
  </div>
</section>

<section class="mw-section mw-author-choice">
  <div class="mw-label">Najbardziej moje</div>

  {if !empty($MW_HOME_CHOICE_PHOTOS)}
  <div class="mw-photo-grid">
    {foreach from=$MW_HOME_CHOICE_PHOTOS item=photo}
      <a href="{$photo.URL}">
        <img src="{$photo.SRC}" alt="{$photo.TITLE|escape:'html'}">
      </a>
    {/foreach}
  </div>
  {/if}

  <div class="mw-link-row">
    <a href="/gallery/index.php?/category/5">Więcej →</a>
  </div>
</section>

<section class="mw-section mw-galleries">
  <div class="mw-label">Cztery Pory Roku</div>

  <div class="mw-gallery-grid">
    <a class="mw-gallery-card" href="index.php?/category/1">
      <img src="./upload/2026/03/28/20260328202745-ae3830bf.jpg" alt="">
      <div>
        <strong>Wiosna</strong>
      </div>
    </a>

    <a class="mw-gallery-card" href="index.php?/category/2">
      <img src="./upload/2026/03/28/20260328202845-d535e6ef.jpg" alt="">
      <div>
        <strong>Lato</strong>
      </div>
    </a>

    <a class="mw-gallery-card" href="index.php?/category/3">
      <img src="./upload/2026/03/28/20260328203016-b7f4772d.jpg" alt="">
      <div>
        <strong>Jesień</strong>
      </div>
    </a>

    <a class="mw-gallery-card" href="index.php?/category/4">
      <img src="./upload/2026/03/28/20260328203111-2f1f538c.jpg" alt="">
      <div>
        <strong>Zima</strong>
      </div>
    </a>
  </div>
</section>

</div>
</div>