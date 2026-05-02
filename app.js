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
});
