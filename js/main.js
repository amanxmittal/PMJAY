/**
 * PMAY-G Official Portal JavaScript
 * Accessibility, Responsive UI Controls, and Interaction Handlers
 */

document.addEventListener('DOMContentLoaded', function () {
  // 1. Accessibility: Font Resizing (A-, A, A+)
  const btnFontDecrease = document.getElementById('btn-font-decrease');
  const btnFontReset = document.getElementById('btn-font-reset');
  const btnFontIncrease = document.getElementById('btn-font-increase');
  let currentFontSize = 100; // in percent

  if (btnFontIncrease) {
    btnFontIncrease.addEventListener('click', function () {
      if (currentFontSize < 120) {
        currentFontSize += 5;
        document.body.style.fontSize = currentFontSize + '%';
      }
    });
  }

  if (btnFontDecrease) {
    btnFontDecrease.addEventListener('click', function () {
      if (currentFontSize > 90) {
        currentFontSize -= 5;
        document.body.style.fontSize = currentFontSize + '%';
      }
    });
  }

  if (btnFontReset) {
    btnFontReset.addEventListener('click', function () {
      currentFontSize = 100;
      document.body.style.fontSize = '100%';
    });
  }

  // 2. High Contrast Theme Toggle
  const btnHighContrast = document.getElementById('btn-high-contrast');
  if (btnHighContrast) {
    btnHighContrast.addEventListener('click', function () {
      document.body.classList.toggle('high-contrast-mode');
    });
  }

  // 3. Announcement Ticker Play / Pause
  const tickerPauseBtn = document.getElementById('ticker-pause-btn');
  const tickerMarquee = document.getElementById('announcement-ticker');
  let isTickerPaused = false;

  if (tickerPauseBtn && tickerMarquee) {
    tickerPauseBtn.addEventListener('click', function () {
      isTickerPaused = !isTickerPaused;
      if (isTickerPaused) {
        tickerMarquee.stop();
        this.innerHTML = '<i class="bi bi-play-fill"></i>';
        this.setAttribute('title', 'Play announcements');
      } else {
        tickerMarquee.start();
        this.innerHTML = '<i class="bi bi-pause-fill"></i>';
        this.setAttribute('title', 'Pause announcements');
      }
    });
  }

  // 4. Mark Current Active Page in Navigation Bar
  const currentPath = window.location.pathname.split('/').pop() || 'index.html';
  const navLinks = document.querySelectorAll('.pmayg-navbar .nav-link, .pmayg-navbar .dropdown-item');
  
  navLinks.forEach(function (link) {
    const href = link.getAttribute('href');
    if (href === currentPath) {
      link.classList.add('active');
      const parentDropdown = link.closest('.dropdown');
      if (parentDropdown) {
        const toggle = parentDropdown.querySelector('.dropdown-toggle');
        if (toggle) toggle.classList.add('active');
      }
    }
  });

  // 5. Search Bar Submit Feedback
  const searchForms = document.querySelectorAll('.header-search-form');
  searchForms.forEach(function(form) {
    form.addEventListener('submit', function (e) {
      e.preventDefault();
      const input = this.querySelector('input[type="search"]');
      if (input && input.value.trim() !== '') {
        alert('Searching PMAY-G portal for: "' + input.value.trim() + '"');
      }
    });
  });
});

