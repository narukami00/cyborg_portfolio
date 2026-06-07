document.addEventListener("DOMContentLoaded", () => {
  const navToggle = document.querySelector("[data-nav-toggle]");
  const navMenu = document.querySelector("[data-nav-menu]");

  if (navToggle && navMenu) {
    function setNavOpen(isOpen) {
      navToggle.classList.toggle("is-open", isOpen);
      navMenu.classList.toggle("is-open", isOpen);
      navToggle.setAttribute("aria-expanded", String(isOpen));
      navToggle.setAttribute(
        "aria-label",
        isOpen ? "Close navigation menu" : "Open navigation menu",
      );
    }

    navToggle.addEventListener("click", () => {
      setNavOpen(!navMenu.classList.contains("is-open"));
    });

    navMenu.querySelectorAll("a").forEach((link) => {
      link.addEventListener("click", () => setNavOpen(false));
    });

    document.addEventListener("keydown", (event) => {
      if (event.key === "Escape") {
        setNavOpen(false);
      }
    });
  }

  const panels = document.querySelectorAll(".roster-panel");
  let autoPlayInterval;
  const slideDuration = 4000; // Time in milliseconds before switching

  // Start the automated loop
  startAutoPlay();

  panels.forEach((panel) => {
    panel.addEventListener("click", () => {
      // Switch manually
      removeActiveClasses();
      panel.classList.add("active");

      // The user clicked, so reset the timer to prevent immediate switching
      resetTimer();
    });
  });

  function removeActiveClasses() {
    panels.forEach((panel) => {
      panel.classList.remove("active");
    });
  }

  function nextPanel() {
    let currentIndex = -1;

    // Find who is currently active
    panels.forEach((panel, index) => {
      if (panel.classList.contains("active")) {
        currentIndex = index;
      }
    });

    // Calculate the next index (wrap around to 0 if at the end)
    let nextIndex = (currentIndex + 1) % panels.length;

    // Apply the switch
    removeActiveClasses();
    panels[nextIndex].classList.add("active");
  }

  function startAutoPlay() {
    autoPlayInterval = setInterval(nextPanel, slideDuration);
  }

  function resetTimer() {
    // Kill the current metronome and start a fresh one
    clearInterval(autoPlayInterval);
    startAutoPlay();
  }

  const galleryHero = document.querySelector("[data-gallery-hero]");

  if (galleryHero) {
    const gallerySlides = Array.from(
      galleryHero.querySelectorAll("[data-gallery-slide]"),
    );
    const galleryDots = Array.from(
      galleryHero.querySelectorAll("[data-gallery-dot]"),
    );
    const galleryCaption = galleryHero.querySelector(
      "[data-gallery-caption-text]",
    );
    const gallerySlideDuration = 4000;
    let galleryActiveIndex = Math.max(
      gallerySlides.findIndex((slide) => slide.classList.contains("is-active")),
      0,
    );
    let galleryInterval;

    function setActiveGallerySlide(index) {
      if (!gallerySlides.length) {
        return;
      }

      galleryActiveIndex =
        (index + gallerySlides.length) % gallerySlides.length;

      gallerySlides.forEach((slide, slideIndex) => {
        slide.classList.toggle("is-active", slideIndex === galleryActiveIndex);
      });

      if (galleryCaption) {
        galleryCaption.textContent =
          gallerySlides[galleryActiveIndex].dataset.galleryCaption || "";
      }

      galleryDots.forEach((dot, dotIndex) => {
        dot.classList.toggle("is-active", dotIndex === galleryActiveIndex);
      });
    }

    function nextGallerySlide() {
      setActiveGallerySlide(galleryActiveIndex + 1);
    }

    function startGalleryAutoPlay() {
      clearInterval(galleryInterval);
      galleryInterval = setInterval(nextGallerySlide, gallerySlideDuration);
    }

    function stopGalleryAutoPlay() {
      clearInterval(galleryInterval);
    }

    galleryDots.forEach((dot, index) => {
      dot.addEventListener("click", () => {
        setActiveGallerySlide(index);
        startGalleryAutoPlay();
      });
    });

    galleryHero.addEventListener("mouseenter", stopGalleryAutoPlay);
    galleryHero.addEventListener("mouseleave", startGalleryAutoPlay);

    setActiveGallerySlide(galleryActiveIndex);
    startGalleryAutoPlay();
  }

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('is-revealed');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.15 });
  document.querySelectorAll('.visible').forEach(el => observer.observe(el));

  // Terminal Easter Egg Logic
  let overrideConfirmed = false;

  function typeText(element, text, callback) {
    element.textContent = "";
    let i = 0;
    let interval = setInterval(() => {
      element.textContent += text.charAt(i);
      i++;
      if (i >= text.length) {
        clearInterval(interval);
        setTimeout(callback, 600);
      }
    }, 35);
  }

  const btnInit = document.querySelector('[data-ref="initialize"]');
  if (btnInit) {
    btnInit.addEventListener('click', function(e) {
      if (overrideConfirmed) {
        overrideConfirmed = false;
        return;
      }
      const trans = document.querySelector('[data-ref="transmission"]').value.trim();
      if (trans === "sudo override -auth director") {
        e.preventDefault();
        const overlay = document.getElementById('hacker-overlay');
        const textEl = document.getElementById('hacker-text');
        overlay.style.display = 'flex';
        typeText(textEl, "> GRANTING DIRECTOR PRIVILEGES...", () => {
          overrideConfirmed = true;
          btnInit.click();
        });
      }
    });
  }

  const adminCmd = document.querySelector('[data-ref="admin-cmd"]');
  if (adminCmd) {
    adminCmd.addEventListener('keydown', function(e) {
      if (e.key === 'Enter') {
        e.preventDefault();
        const cmd = this.value.trim().toLowerCase();
        if (cmd === "logout") {
          const overlay = document.getElementById('hacker-overlay');
          const textEl = document.getElementById('hacker-text');
          overlay.style.display = 'flex';
          typeText(textEl, "> REVOKING DIRECTOR PRIVILEGES...", () => {
            document.querySelector('[data-ref="logout"]').click();
          });
        } else {
          this.value = '';
        }
      }
    });
  }
});
