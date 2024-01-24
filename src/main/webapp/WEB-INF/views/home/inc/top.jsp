<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  

  <!-- SEARCH POPUP -->
  <div class="search-popup">
    <!-- CROSS ICON -->
    <svg class="cross-icon big close-button search-popup-close">
      <use xlink:href="#svg-cross-big"></use>
    </svg>
    <!-- /CROSS ICON -->

    <form method="GET" class="search-popup-form">
      <input type="text" id="search" class="input-line" name="search" placeholder="What are you looking for...?">
    </form>
    <p class="search-popup-text">Write what you are looking for and press enter to begin your search!</p>
  </div>
  <!-- /SEARCH POPUP -->

  <!-- INVENTORY BAG PREVIEW -->
  <div class="inventory-bag-preview">
    <!-- INVENTORY CLOSE BUTTON -->
    <svg class="inventory-close-button cross-icon big">
      <use xlink:href="#svg-cross-big"></use>
    </svg>
    <!-- /INVENTORY CLOSE BUTTON -->
    <p class="items-in-inventory"><span class="quantity">8</span> items in inventory</p>
    <div class="line-separator"></div>

    <!-- INVENTORY ITEMS PREVIEW -->
    <div class="inventory-items-preview">
      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview">
        <!-- PRODUCT PREVIEW -->
        <div class="product-preview small">
          <!-- PRODUCT PREVIEW IMG WRAP -->
          <div class="product-preview-img-wrap">
            <!-- PRODUCT PREVIEW IMG -->
            <a href="product-page.html">
              <figure class="product-preview-img liquid">
                <img src="${pageContext.request.contextPath}/resources/forum/img/products/01.jpg" alt="product-01">
              </figure>
            </a>
            <!-- /PRODUCT PREVIEW IMG -->
          </div>
          <!-- /PRODUCT PREVIEW IMG WRAP -->

          <!-- REMOVE -->
          <div class="bubble-ornament small red remove">
            <!-- CROSS ICON -->
            <svg class="cross-cb-icon small">
              <use xlink:href="#svg-cross-cb-small"></use>
            </svg>
            <!-- /CROSS ICON -->
          </div>
          <!-- /REMOVE -->

          <!-- TAG QUANTITY -->
          <div class="tag-quantity">
            <p class="tag-quantity-text">x <span class="value">2</span></p>
          </div>
          <!-- TAG QUANTITY -->

          <!-- PRODUCT PREVIEW TITLE -->
          <a href="product-page.html" class="product-preview-title">New Funtendo 3XSD - black</a>
          <!-- PRODUCT PREVIEW INFO -->
          <div class="product-preview-info">
            <!-- RATING ORNAMENT -->
            <div class="rating-ornament small void yellow">
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            </div>
            <!-- /RATING ORNAMENT -->
          </div>
          <!-- /PRODUCT PREVIEW INFO -->

          <!-- PRODUCT PRICE WRAP -->
          <div class="product-price-wrap">
            <p class="product-preview-price current"><span class="currency">$</span>199.00</p>
          </div>
          <!-- /PRODUCT PRICE WRAP -->
        </div>
        <!-- /PRODUCT PREVIEW -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview">
        <!-- PRODUCT PREVIEW -->
        <div class="product-preview small">
          <!-- PRODUCT PREVIEW IMG WRAP -->
          <div class="product-preview-img-wrap">
            <!-- PRODUCT PREVIEW IMG -->
            <a href="product-page.html">
              <figure class="product-preview-img liquid">
              <img src="${pageContext.request.contextPath}/resources/forum/img/products/06.jpg" alt="product-06">
              </figure>
            </a>
            <!-- /PRODUCT PREVIEW IMG -->
          </div>
          <!-- /PRODUCT PREVIEW IMG WRAP -->

          <!-- REMOVE -->
          <div class="bubble-ornament small red remove">
            <!-- CROSS ICON -->
            <svg class="cross-cb-icon small">
              <use xlink:href="#svg-cross-cb-small"></use>
            </svg>
            <!-- /CROSS ICON -->
          </div>
          <!-- /REMOVE -->

          <!-- TAG QUANTITY -->
          <div class="tag-quantity">
            <p class="tag-quantity-text">x <span class="value">1</span></p>
          </div>
          <!-- TAG QUANTITY -->

          <!-- PRODUCT PREVIEW TITLE -->
          <a href="product-page.html" class="product-preview-title">Crimson red joystick</a>
          <!-- PRODUCT PREVIEW INFO -->
          <div class="product-preview-info">
            <!-- RATING ORNAMENT -->
            <div class="rating-ornament small void yellow">
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon empty">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon empty">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            </div>
            <!-- /RATING ORNAMENT -->
          </div>
          <!-- /PRODUCT PREVIEW INFO -->

          <!-- PRODUCT PRICE WRAP -->
          <div class="product-price-wrap">
            <p class="product-preview-price current"><span class="currency">$</span>32.50</p>
          </div>
          <!-- /PRODUCT PRICE WRAP -->
        </div>
        <!-- /PRODUCT PREVIEW -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview">
        <!-- PRODUCT PREVIEW -->
        <div class="product-preview small">
          <!-- PRODUCT PREVIEW IMG WRAP -->
          <div class="product-preview-img-wrap">
            <!-- PRODUCT PREVIEW IMG -->
            <a href="product-page.html">
              <figure class="product-preview-img liquid">
              <img src="${pageContext.request.contextPath}/resources/forum/img/products/05.jpg" alt="product-05">
              </figure>
            </a>
            <!-- /PRODUCT PREVIEW IMG -->
          </div>
          <!-- /PRODUCT PREVIEW IMG WRAP -->

          <!-- REMOVE -->
          <div class="bubble-ornament small red remove">
            <!-- CROSS ICON -->
            <svg class="cross-cb-icon small">
              <use xlink:href="#svg-cross-cb-small"></use>
            </svg>
            <!-- /CROSS ICON -->
          </div>
          <!-- /REMOVE -->

          <!-- TAG QUANTITY -->
          <div class="tag-quantity">
            <p class="tag-quantity-text">x <span class="value">4</span></p>
          </div>
          <!-- TAG QUANTITY -->

          <!-- PRODUCT PREVIEW TITLE -->
          <a href="product-page.html" class="product-preview-title">Carbon black joystick</a>
          <!-- PRODUCT PREVIEW INFO -->
          <div class="product-preview-info">
            <!-- RATING ORNAMENT -->
            <div class="rating-ornament small void yellow">
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon empty">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            </div>
            <!-- /RATING ORNAMENT -->
          </div>
          <!-- /PRODUCT PREVIEW INFO -->

          <!-- PRODUCT PRICE WRAP -->
          <div class="product-price-wrap">
            <p class="product-preview-price current"><span class="currency">$</span>55.00</p>
          </div>
          <!-- /PRODUCT PRICE WRAP -->
        </div>
        <!-- /PRODUCT PREVIEW -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview">
        <!-- PRODUCT PREVIEW -->
        <div class="product-preview small">
          <!-- PRODUCT PREVIEW IMG WRAP -->
          <div class="product-preview-img-wrap">
            <!-- PRODUCT PREVIEW IMG -->
            <a href="product-page.html">
              <figure class="product-preview-img liquid">
              <img src="${pageContext.request.contextPath}/resources/forum/img/products/14.jpg" alt="product-14">
              </figure>
            </a>
            <!-- /PRODUCT PREVIEW IMG -->
          </div>
          <!-- /PRODUCT PREVIEW IMG WRAP -->

          <!-- REMOVE -->
          <div class="bubble-ornament small red remove">
            <!-- CROSS ICON -->
            <svg class="cross-cb-icon small">
              <use xlink:href="#svg-cross-cb-small"></use>
            </svg>
            <!-- /CROSS ICON -->
          </div>
          <!-- /REMOVE -->

          <!-- TAG QUANTITY -->
          <div class="tag-quantity">
            <p class="tag-quantity-text">x <span class="value">1</span></p>
          </div>
          <!-- TAG QUANTITY -->

          <!-- PRODUCT PREVIEW TITLE -->
          <a href="product-page.html" class="product-preview-title">Magimons black framed print</a>
          <!-- PRODUCT PREVIEW INFO -->
          <div class="product-preview-info">
            <!-- RATING ORNAMENT -->
            <div class="rating-ornament small void yellow">
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
              <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            
                <!-- RATING ORNAMENT ITEM -->
              <div class="rating-ornament-item">
                <!-- RATING ORNAMENT ICON -->
                <svg class="rating-ornament-icon">
                  <use xlink:href="#svg-star"></use>
                </svg>
              </div>
              <!-- /RATING ORNAMENT ITEM -->
            </div>
            <!-- /RATING ORNAMENT -->
          </div>
          <!-- /PRODUCT PREVIEW INFO -->

          <!-- PRODUCT PRICE WRAP -->
          <div class="product-price-wrap">
            <p class="product-preview-price current"><span class="currency">$</span>20.00</p>
          </div>
          <!-- /PRODUCT PRICE WRAP -->
        </div>
        <!-- /PRODUCT PREVIEW -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->

      <!-- INVENTORY ITEM PREVIEW -->
      <div class="inventory-item-preview empty">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory-light"></use>
        </svg>
        <!-- /INVENTORY ICON -->
      </div>
      <!-- /INVENTORY ITEM PREVIEW -->
    </div>
    <!-- /INVENTORY ITEMS PREVIEW -->

    <div class="line-separator"></div>
    <p class="inventory-subtotal"><span class="subtotal-text">Inventory subtotal:</span> <span class="subtotal-value"><span class="currency">$</span><span class="value">670.50</span></span></p>
    <div class="line-separator"></div>
    <!-- INVENTORY ACTIONS -->
    <div class="inventory-actions">
      <a href="inventory-bag.html" class="button full blue">Go to the inventory bag</a>
      <a href="checkout.html" class="button full violet">Proceed to checkout</a>
    </div>
    <!-- /INVENTORY ACTIONS -->
  </div>
  <!-- /INVENTORY BAG PREVIEW -->

  <!-- MOBILE MENU WRAP -->
  <div class="mobile-menu-wrap">
    <!-- CROSS ICON -->
    <svg class="cross-icon big mobile-menu-close">
      <use xlink:href="#svg-cross-big"></use>
    </svg>
    <!-- /CROSS ICON -->

    <!-- SEARCH POPUP OPEN -->
    <svg class="search-popup-open search-icon">
      <use xlink:href="#svg-search"></use>
    </svg>
    <!-- /SEARCH POPUP OPEN -->

    <!-- LOGO IMG -->
    <figure class="logo-img">
    <img src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png" alt="Logo">
    </figure>
    <!-- /LOGO IMG -->

    <!-- MOBILE MENU -->
    <ul class="mobile-menu">
      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <a href="index.html" class="mobile-menu-item-link">Homew</a>
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <p class="mobile-menu-item-link pd-dropdown-handler">eSports</p>
        <!-- ARROW ICON -->
        <svg class="arrow-icon medium">
          <use xlink:href="#svg-arrow-medium"></use>
        </svg>
        <!-- /ARROW ICON -->

        <!-- MOBILE DROPDOWN -->
        <ul class="mobile-dropdown pd-dropdown">
          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Main Pages</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-home.html" class="mobile-dropdown-item-link">eSports wwwHome</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-news.html" class="mobile-dropdown-item-link">eSports News</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-post.html" class="mobile-dropdown-item-link">eSports Post Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-tournament.html" class="mobile-dropdown-item-link">Tournamentwwwwww Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Match Overviews</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-match-overview-v1.html" class="mobile-dropdown-item-link">Match Overview V1</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-match-overview-v2.html" class="mobile-dropdown-item-link">Match Overview V2</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-match-overview-v3.html" class="mobile-dropdown-item-link">Match Overview V3</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-match-overview-v4.html" class="mobile-dropdown-item-link">Match Overview V4</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Teams &amp; Players</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-team.html" class="mobile-dropdown-item-link">eSports Team Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-player.html" class="mobile-dropdown-item-link">eSports Player Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-streamers.html" class="mobile-dropdown-item-link">Streamers Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-calendar.html" class="mobile-dropdown-item-link">Scores with Calendar</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">eSports Widgets</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-widgets-v1.html" class="mobile-dropdown-item-link">Widgets Page 01</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-widgets-v2.html" class="mobile-dropdown-item-link">Widgets Page 02</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="esports-widgets-v3.html" class="mobile-dropdown-item-link">Widgets Page 03</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->
        </ul>
        <!-- /MOBILE DROPDOWN -->
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <a href="news-v1.html" class="mobile-menu-item-link">News</a>
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <a href="news-v2.html" class="mobile-menu-item-link">Reviews</a>
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <p class="mobile-menu-item-link pd-dropdown-handler">Features</p>
        <!-- ARROW ICON -->
        <svg class="arrow-icon medium">
          <use xlink:href="#svg-arrow-medium"></use>
        </svg>
        <!-- /ARROW ICON -->

        <!-- MOBILE DROPDOWN -->
        <ul class="mobile-dropdown pd-dropdown">
          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Pixel Main Features</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="index.html" class="mobile-dropdown-item-link">Main Homepdddage</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="home-v2.html" class="mobile-dropdown-item-link">Homepage V2</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="home-v3.html" class="mobile-dropdown-item-link">Homepage V3</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="news-v1.html" class="mobile-dropdown-item-link">News Page V1</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="news-v2.html" class="mobile-dropdown-item-link">News Page V2</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="news-v3.html" class="mobile-dropdown-item-link">News Page V3</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="news-v4.html" class="mobile-dropdown-item-link">News Page V4</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="post-v1.html" class="mobile-dropdown-item-link">Post Page V1</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="post-v2.html" class="mobile-dropdown-item-link">Post Page V2</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="post-v3.html" class="mobile-dropdown-item-link">Post Page V3</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="post-v4.html" class="mobile-dropdown-item-link">Post Page V4</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="browse-videos.html" class="mobile-dropdown-item-link">Browse Videos</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="post-video.html" class="mobile-dropdown-item-link">Video Post Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="search-results.html" class="mobile-dropdown-item-link">Search Results</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="calendar.html" class="mobile-dropdown-item-link">Events Calendar</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="event.html" class="mobile-dropdown-item-link">Open Event</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="404.html" class="mobile-dropdown-item-link">404 Error Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shortcodes.html" class="mobile-dropdown-item-link">Shortcodes</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="menu-dropdowns.html" class="mobile-dropdown-item-link">Menu &amp; Dropdowns</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="headers-dividers.html" class="mobile-dropdown-item-link">Headers &amp; Dividers</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="pixel-popups.html" class="mobile-dropdown-item-link">Pixel Popups</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Account &amp; Company</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="login-register.html" class="mobile-dropdown-item-link">Login &amp; Register</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="login-register-popups.html" class="mobile-dropdown-item-link">Login &amp; Register Popups</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="account-settings.html" class="mobile-dropdown-item-link">Account Settings</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="orders-history.html" class="mobile-dropdown-item-link">Account Orders</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="faq.html" class="mobile-dropdown-item-link">FAQs Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="contact.html" class="mobile-dropdown-item-link">Contact Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="sponsors.html" class="mobile-dropdown-item-link">Sponsors Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Pixel Forums</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="forum.html" class="mobile-dropdown-item-link">Main Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="forum-categories.html" class="mobile-dropdown-item-link">Category Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="topic.html" class="mobile-dropdown-item-link">Main Topic</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="forum-badges.html" class="mobile-dropdown-item-link">Badges Big &amp; Small</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-summary.html" class="mobile-dropdown-item-link">Profile Summary</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-activity.html" class="mobile-dropdown-item-link">Profile Activity</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-notifications.html" class="mobile-dropdown-item-link">Profile Notifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-messages.html" class="mobile-dropdown-item-link">Profile Messages</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-badges.html" class="mobile-dropdown-item-link">Profile Badges</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-settings.html" class="mobile-dropdown-item-link">Profile Settings</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="forum-search-results.html" class="mobile-dropdown-item-link">Forum Results</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->
        </ul>
        <!-- /MOBILE DROPDOWN -->
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <p class="mobile-menu-item-link pd-dropdown-handler">Shop</p>
        <!-- ARROW ICON -->
        <svg class="arrow-icon medium">
          <use xlink:href="#svg-arrow-medium"></use>
        </svg>
        <!-- /ARROW ICON -->

        <!-- MOBILE DROPDOWN -->
        <ul class="mobile-dropdown pd-dropdown">
          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">New Releases</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-grid.html" class="mobile-dropdown-item-link">Shop 3 Columns Grid</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-list.html" class="mobile-dropdown-item-link">Shop 3 Columns List</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v2.html" class="mobile-dropdown-item-link">Shop 4 Columns</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Description</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Reviews</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Specifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="inventory-bag.html" class="mobile-dropdown-item-link">Inventory Bag (Cart)</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="checkout.html" class="mobile-dropdown-item-link">Checkout Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="order-confirmation.html" class="mobile-dropdown-item-link">Order Confirmation</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="wishlist.html" class="mobile-dropdown-item-link">Wishlist</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-compare.html" class="mobile-dropdown-item-link">Product Compare</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Shop Features</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-grid.html" class="mobile-dropdown-item-link">Shop 3 Columns Grid</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-list.html" class="mobile-dropdown-item-link">Shop 3 Columns List</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v2.html" class="mobile-dropdown-item-link">Shop 4 Columns</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Description</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Reviews</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Specifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="inventory-bag.html" class="mobile-dropdown-item-link">Inventory Bag (Cart)</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="checkout.html" class="mobile-dropdown-item-link">Checkout Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="order-confirmation.html" class="mobile-dropdown-item-link">Order Confirmation</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="wishlist.html" class="mobile-dropdown-item-link">Wishlist</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-compare.html" class="mobile-dropdown-item-link">Product Compare</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Powerstation</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-grid.html" class="mobile-dropdown-item-link">Shop 3 Columns Grid</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-list.html" class="mobile-dropdown-item-link">Shop 3 Columns List</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v2.html" class="mobile-dropdown-item-link">Shop 4 Columns</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Description</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Reviews</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Specifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="inventory-bag.html" class="mobile-dropdown-item-link">Inventory Bag (Cart)</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="checkout.html" class="mobile-dropdown-item-link">Checkout Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="order-confirmation.html" class="mobile-dropdown-item-link">Order Confirmation</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="wishlist.html" class="mobile-dropdown-item-link">Wishlist</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-compare.html" class="mobile-dropdown-item-link">Product Compare</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">X-Rock</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-grid.html" class="mobile-dropdown-item-link">Shop 3 Columns Grid</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-list.html" class="mobile-dropdown-item-link">Shop 3 Columns List</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v2.html" class="mobile-dropdown-item-link">Shop 4 Columns</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Description</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Reviews</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Specifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="inventory-bag.html" class="mobile-dropdown-item-link">Inventory Bag (Cart)</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="checkout.html" class="mobile-dropdown-item-link">Checkout Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="order-confirmation.html" class="mobile-dropdown-item-link">Order Confirmation</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="wishlist.html" class="mobile-dropdown-item-link">Wishlist</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-compare.html" class="mobile-dropdown-item-link">Product Compare</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Funtendo</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-grid.html" class="mobile-dropdown-item-link">Shop 3 Columns Grid</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v1-list.html" class="mobile-dropdown-item-link">Shop 3 Columns List</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="shop-v2.html" class="mobile-dropdown-item-link">Shop 4 Columns</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Description</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Reviews</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-page.html" class="mobile-dropdown-item-link">Product Specifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="inventory-bag.html" class="mobile-dropdown-item-link">Inventory Bag (Cart)</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="checkout.html" class="mobile-dropdown-item-link">Checkout Page</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="order-confirmation.html" class="mobile-dropdown-item-link">Order Confirmation</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="wishlist.html" class="mobile-dropdown-item-link">Wishlist</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="product-compare.html" class="mobile-dropdown-item-link">Product Compare</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->
        </ul>
        <!-- /MOBILE DROPDOWN -->
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <p class="mobile-menu-item-link pd-dropdown-handler">
            <img class="widget-option-img user-avatar micro"src="${pageContext.request.contextPath}/resources/forum/img/users/05.jpg" alt="avatar-01">
            James_Spiegel
        </p>
        <!-- ARROW ICON -->
        <svg class="arrow-icon medium">
          <use xlink:href="#svg-arrow-medium"></use>
        </svg>
        <!-- /ARROW ICON -->

        <!-- MOBILE DROPDOWN -->
        <ul class="mobile-dropdown pd-dropdown">
          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Main Account</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="account-settings.html" class="mobile-dropdown-item-link">Account Settings</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="#" class="mobile-dropdown-item-link">Shipping Details</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="#" class="mobile-dropdown-item-link">Billing Details</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="orders-history.html" class="mobile-dropdown-item-link">Orders History</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->

          <!-- MOBILE DROPDOWN ITEM -->
          <li class="mobile-dropdown-item">
            <p class="mobile-dropdown-item-link pd-dropdown-handler">Pixel Forums</p>
            <!-- ARROW ICON -->
            <svg class="arrow-icon medium">
              <use xlink:href="#svg-arrow-medium"></use>
            </svg>
            <!-- /ARROW ICON -->

            <!-- MOBILE DROPDOWN -->
            <ul class="mobile-dropdown pd-dropdown">
              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-summary.html" class="mobile-dropdown-item-link">Summary</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-activity.html" class="mobile-dropdown-item-link">Activity</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-notifications.html" class="mobile-dropdown-item-link">Notifications</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-messages.html" class="mobile-dropdown-item-link">Messages</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-badges.html" class="mobile-dropdown-item-link">Profile Badges</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->

              <!-- MOBILE DROPDOWN ITEM -->
              <li class="mobile-dropdown-item">
                <a href="profile-settings.html" class="mobile-dropdown-item-link">Settings</a>
              </li>
              <!-- /MOBILE DROPDOWN ITEM -->
            </ul>
            <!-- /MOBILE DROPDOWN -->
          </li>
          <!-- /MOBILE DROPDOWN ITEM -->
        </ul>
        <!-- /MOBILE DROPDOWN -->
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <a href="wishlist.html" class="mobile-menu-item-link">Wishlist (<span class="quantity">5</span>)</a>
      </li>
      <!-- /MOBILE MENU ITEM -->

      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <a href="product-compare.html" class="mobile-menu-item-link">Compare (<span class="quantity">4</span>)</a>
      </li>
      <!-- /MOBILE MENU ITEM -->
    </ul>
    <!-- /MOBILE MENU -->
  </div>
  <!-- /MOBILE MENU WRAP -->

  <!-- HEADER WRAP -->
  <div class="header-wrap">
    <!-- HEADER -->
    <div class="header grid-limit">
      <!-- WIDGET SELECTABLES -->
      <div class="widget-selectables">
        <!-- WIDGET OPTIONS WRAP -->
        <div class="widget-options-wrap">
          <!-- CURRENT OPTION -->
          <div id="lang-dropdown-trigger" class="current-option">
             <!-- CURRENT OPTION VALUE -->
            <div id="lang-dropdown-option-value" class="current-option-value">
              <img class="widget-option-img"src="${pageContext.request.contextPath}/resources/forum/img/flags/flag-us.png" alt="flag-us">
              <p class="widget-option-text">English</p>
            </div>
            <!-- /CURRENT OPTION VALUE -->

            <!-- ARROW ICON -->
            <svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg>
            <!-- /ARROW ICON -->
          </div>
          <!-- /CURRENT OPTION -->

          <!-- WIDGET OPTIONS -->
          <div id="lang-dropdown" class="widget-options small">
            <!-- WIDGET OPTION -->
            <div class="widget-option">
              <img class="widget-option-img"src="${pageContext.request.contextPath}/resources/forum/img/flags/flag-us.png" alt="flag-us">
              <p class="widget-option-text">English</p>
            </div>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
          <!--  <div class="widget-option">
              <img class="widget-option-img"src="${pageContext.request.contextPath}/resources/forum/img/flags/flag-es.png" alt="flag-es">
              <p class="widget-option-text">Spanish</p>
            </div>-->
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
           <!-- <div class="widget-option">
              <img class="widget-option-img"src="${pageContext.request.contextPath}/resources/forum/img/flags/flag-fr.png" alt="flag-fr">
              <p class="widget-option-text">French</p>
            </div>-->
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
           <!-- <div class="widget-option">
              <img class="widget-option-img"src="${pageContext.request.contextPath}/resources/forum/img/flags/flag-jp.png" alt="flag-jp">
              <p class="widget-option-text">Japanese</p>
            </div>-->
            <!-- /WIDGET OPTION -->
          </div>
          <!-- /WIDGET OPTIONS -->
        </div>
        <!-- /WIDGET OPTIONS WRAP -->

        <!-- WIDGET OPTIONS WRAP -->
        <!-- /WIDGET OPTIONS WRAP -->
      </div>
      <!-- /WIDGET SELECTABLES -->

      <!-- WIDGET SELECTABLES -->
      
        
        <c:if test="${s_isLogin == 1}">
        
        
        <div class="widget-selectables">
        <!-- WIDGET OPTIONS WRAP -->
        <div class="widget-options-wrap">
          <!-- CURRENT OPTION -->
          <div id="account-dropdown-trigger" class="current-option">
            <!-- CURRENT OPTION VALUE -->
            <div class="current-option-value">
              <img class="widget-option-img user-avatar micro"src="${pageContext.request.contextPath}/resources/forum/img/users/05.jpg" alt="avatar-01">
              <p class="widget-option-text">James_Spiegel</p>
            </div>
            <!-- /CURRENT OPTION VALUE -->

            <!-- ARROW ICON -->
            <svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg>
            <!-- /ARROW ICON -->
          </div>
          <!-- /CURRENT OPTION -->

          <!-- WIDGET OPTIONS -->
          <div id="account-dropdown" class="widget-options short linkable">
            <!-- WIDGET OPTION HEADING -->
            <div class="widget-option-heading blue">
              <p class="widget-option-text">Main Account</p>
            </div>
            <!-- /WIDGET OPTION HEADING -->

            <!-- WIDGET OPTION -->
            <a href="account-settings.html" class="widget-option">
              <p class="widget-option-text">Account Settings</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="#" class="widget-option">
              <p class="widget-option-text">Shipping Details</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="#" class="widget-option">
              <p class="widget-option-text">Billing Details</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="orders-history.html" class="widget-option">
              <p class="widget-option-text">Orders History</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION HEADING -->
            <div class="widget-option-heading red">
              <p class="widget-option-text">Pixel Forums</p>
            </div>
            <!-- /WIDGET OPTION HEADING -->

            <!-- WIDGET OPTION -->
            <a href="profile-summary.html" class="widget-option">
              <p class="widget-option-text">Summary</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="profile-activity.html" class="widget-option">
              <p class="widget-option-text">Activity</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="profile-notifications.html" class="widget-option">
              <p class="widget-option-text">Notifications</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="profile-messages.html" class="widget-option">
              <p class="widget-option-text">Messages</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="profile-badges.html" class="widget-option">
              <p class="widget-option-text">Profile Badges</p>
            </a>
            <!-- /WIDGET OPTION -->

            <!-- WIDGET OPTION -->
            <a href="profile-settings.html" class="widget-option">
              <p class="widget-option-text">Settings</p>
            </a>
            <!-- /WIDGET OPTION -->
          </div>
          <!-- /WIDGET OPTIONS -->
        </div>
        <!-- /WIDGET OPTIONS WRAP -->

        <!-- WIDGET OPTIONS WRAP -->
        <div class="widget-options-wrap">
          <!-- CURRENT OPTION -->
          <a href="wishlist.html">
          <div class="current-option">
            <!-- CURRENT OPTION VALUE -->
            <div class="current-option-value">
              <i class="icon-heart widget-option-icon"></i>
              <p class="widget-option-text">Wishlist <span class="quantity">(5)</span></p>
            </div>
            <!-- /CURRENT OPTION VALUE -->
          </div>
          </a>
          <!-- /CURRENT OPTION -->
        </div>
        <!-- /WIDGET OPTIONS WRAP -->
        
        <!-- WIDGET OPTIONS WRAP -->
        <div class="widget-options-wrap">
          <!-- CURRENT OPTION -->
          <a href="product-compare.html">
          <div class="current-option">
            <!-- CURRENT OPTION VALUE -->
            <div class="current-option-value">
              <i class="icon-tag widget-option-icon"></i>
              <p class="widget-option-text">Compare <span class="quantity">(2)</span></p>
            </div>
            <!-- /CURRENT OPTION VALUE -->
          </div>
          </a>
          <!-- /CURRENT OPTION -->
        </div>
        <!-- /WIDGET OPTIONS WRAP -->

        <!-- BUTTON -->
        
        
       <a href="#" class="button tiny red log-button">
            Logout
            <!-- BUTTON ORNAMENT -->
            <div class="button-ornament">
              <!-- ARROW ICON -->
              <svg class="arrow-icon">
                <use xlink:href="#svg-arrow"></use>
              </svg>
              <!-- /ARROW ICON -->
            </div>
            <!-- /BUTTON ORNAMENT -->
          </a>
          </div>
          
    </c:if>
    <c:if test="${s_isLogin != 1}">
      <div class="widget-selectables">
        <!-- WIDGET OPTIONS WRAP -->
        <div class="widget-options-wrap">
        <a href="${pageContext.request.contextPath}/forum/login" class="button tiny blue log-button">
            Login
            <!-- BUTTON ORNAMENT -->
            <div class="button-ornament">
              <!-- ARROW ICON -->
              <svg class="arrow-icon">
                <use xlink:href="#svg-arrow"></use>
              </svg>
              <!-- /ARROW ICON -->
            </div>
            <!-- /BUTTON ORNAMENT -->
          </a>
          </div>
          </div>
          
    </c:if>
    
    
        
          <!-- /BUTTON -->
      </div>
      <!-- /WIDGET SELECTABLES -->
    </div>
    <!-- /HEADER -->
  
  <!-- /HEADER WRAP -->

  <!-- NAVIGATION WRAP -->
  <nav class="navigation-wrap">
    <!-- NAVIGATION -->
    <div class="navigation grid-limit">
      <!-- LOGO -->
      <div class="logo">
        <!-- LOGO IMG -->
        <figure class="logo-img">
        <img src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png" alt="Logo">
        </figure>
        <!-- /LOGO IMG -->

        <!-- LOGO TEXT -->
        <div class="logo-text">
          <h2 class="logo-title">Inves<span class="highlight">Forum</span></h2>
          <p class="logo-info">The Latest Asset News</p>
        </div>
        <!-- /LOGO TEXT -->
      </div>
      <!-- /LOGO -->

      <!-- INVENTORY BUTTON -->
      <div class="inventory-button">
        <!-- INVENTORY ICON -->
        <svg class="inventory-icon">
          <use xlink:href="#svg-inventory"></use>
        </svg>
        <!-- /INVENTORY ICON -->

        <!-- INVENTORY ITEM QUANTITY WRAP -->
        <div class="inventory-item-quantity-wrap">
          <p class="inventory-item-quantity">2</p>
        </div>
        <!-- /INVENTORY ITEM QUANTITY WRAP -->
      </div>
      <!-- /INVENTORY BUTTON -->

      <!-- SEARCH BUTTON -->
      <div class="search-button search-popup-open">
        <!-- SEARCH ICON -->
        <svg class="search-icon">
          <use xlink:href="#svg-search"></use>
        </svg>
        <!-- /SEARCH ICON -->
      </div>
      <!-- /SEARCH BUTTON -->




      <!-- MAIN MENU -->
      <ul class="main-menu">
        <!-- MAIN MENU ITEM -->
        <li class="main-menu-item">
          <a href="${pageContext.request.contextPath}/home/index" class="main-menu-item-link">Home</a>
        </li>
        <!-- /MAIN MENU ITEM -->
        
<c:forEach items="${ forumlist }" var="listinfo" varStatus="status"><!-- Forums -->
        

            
        <!-- MAIN MENU ITEM -->
        <li class="main-menu-item">
          <a href="esports-home.html" class="main-menu-item-link">
            ${listinfo.name }
            <!-- SVG ARROW -->
            <svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg>
            <!-- /SVG ARROW -->
          </a>

          <!-- SUBMENU -->
          <ul class="submenu void">
            <!-- SUBMENU ITEM -->
            <li class="submenu-item padded">
              <!-- LINK SECTIONS WRAP -->
              <div class="link-sections-wrap">
                <!-- LINK SECTIONS -->
                <div class="link-sections">
                  <c:forEach items="${ forumcatlist }" var="forumcatlist" varStatus="status2">
                  <!-- LINK SECTION -->
                  <c:choose>
					<c:when test="${listinfo.id == forumcatlist.forum_id}">
					<div class="link-section">
                    <!-- SECTION TITLE WRAP -->
                    <div class="section-title-wrap violet">
                      <h2 class="section-title small">${forumcatlist.name}</h2>
                      <div class="section-title-separator"></div>
                    </div>
                    <!-- /SECTION TITLE WRAP -->
					
                    <!-- LINK LIST -->
                    <ul class="link-list medium">
                      <!-- LINK LIST ITEM -->
                      <li class="link-list-item">
                        <a href="esports-home.html">${forumcatlist.description}</a>
                      </li>
                      <!-- /LINK LIST ITEM -->

                    </ul>
                    <!-- /LINK LIST -->
                  </div>
					</c:when>
				  </c:choose>
                  
                  <!-- /LINK SECTION -->
				  </c:forEach>
				  
                 
              <!-- LINE SEPARATOR -->
              <div class="line-separator"></div>

              <!-- NEWS ITEMS PREVIEW -->
              <div class="news-items-preview">
                <!-- POST PREVIEW -->
                <div class="post-preview gaming-news">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="post-v1.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/09.jpg" alt="post-09">
                      </figure>
                      <!-- /POST PREVIEW IMG -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="news-v1.html" class="tag-ornament">Gaming News</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="post-v1.html" class="post-preview-title">New "Rizen" game is gonna be released in summer 2019</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Vellatrix</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->

                <!-- POST PREVIEW -->
                <div class="post-preview game-review">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="post-v2.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/08.jpg" alt="post-08">
                      </figure>
                      <!-- /POST PREVIEW IMG -->

                      <!-- REVIEW RATING -->
                      <div class="review-rating">
                        <div id="menu-rate-08-1" class="arc small"></div>
                      </div>
                      <!-- /REVIEW RATING -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="news-v2.html" class="tag-ornament">Game Reviews</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="post-v2.html" class="post-preview-title">The new mecha cyborg game is breaking barriers</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Vellatrix</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->

                <!-- POST PREVIEW -->
                <div class="post-preview e-sport">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="esports-post.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/38.jpg" alt="post-38">
                      </figure>
                      <!-- /POST PREVIEW IMG -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="esports-news.html" class="tag-ornament">Esports</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="esports-post.html" class="post-preview-title">Pro Soccer 2017 world league kicked off today!</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Faye V.</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->

                <!-- POST PREVIEW -->
                <div class="post-preview geeky-news">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="post-v4.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/02.jpg" alt="post-02">
                      </figure>
                      <!-- /POST PREVIEW IMG -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="news-v4.html" class="tag-ornament">Geeky news</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="post-v4.html" class="post-preview-title">Jessica Tam to star in the new "Charlotte" series</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Vellatrix</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->
              </div>

              
            </li>
            <!-- /SUBMENU ITEM -->
          </ul>
          <!-- /SUBMENU -->
        </li>
        <!-- /MAIN MENU ITEM -->
</c:forEach>




        <!-- MAIN MENU ITEM -->
        <li class="main-menu-item">
          <a href="#" class="main-menu-item-link">
            Features
            <!-- SVG ARROW -->
            <svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg>
            <!-- /SVG ARROW -->
          </a>

          <!-- SUBMENU -->
          <ul class="submenu void">
            <!-- SUBMENU ITEM -->
            <li class="submenu-item padded">
              <!-- LINK SECTIONS -->
              <div class="link-sections">
                <!-- LINK SECTION -->
                <div class="link-section">
                  <!-- SECTION TITLE WRAP -->
                  <div class="section-title-wrap blue">
                    <h2 class="section-title small">Pixel Main Features</h2>
                    <div class="section-title-separator"></div>
                  </div>
                  <!-- /SECTION TITLE WRAP -->

                  <!-- LINK LIST -->
                  <ul class="link-list">
                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="index.html">Main Homepageddddd</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="home-v2.html">Homepage V2</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="home-v3.html">Homepage V3</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="news-v1.html">News Page V1</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="news-v2.html">News Page V2</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="news-v3.html">News Page V3</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="news-v4.html">News Page V4</a>
                    </li>
                    <!-- /LINK LIST ITEM -->
                  </ul>
                  <!-- /LINK LIST -->

                  
                  <!-- /LINK LIST -->
                </div>
                <!-- /LINK SECTION -->

                <!-- LINK SECTION -->
                <div class="link-section">
                  <!-- SECTION TITLE WRAP -->
                  <div class="section-title-wrap blue">
                    <h2 class="section-title small">Account &amp; Company</h2>
                    <div class="section-title-separator"></div>
                  </div>
                  <!-- /SECTION TITLE WRAP -->

                  <!-- LINK LIST -->
                  <ul class="link-list">
                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="login-register.html">Login &amp; Register</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="login-register-popups.html">Login &amp; Register Popups</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="account-settings.html">Account Settings</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="orders-history.html">Account Orders</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="faq.html">FAQs Page</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="contact.html">Contact Page</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="sponsors.html">Sponsors Page</a>
                    </li>
                    <!-- /LINK LIST ITEM -->
                  </ul>
                  <!-- /LINK LIST -->
                </div>
                <!-- /LINK SECTION -->

                <!-- LINK SECTION -->
                <div class="link-section">
                  <!-- SECTION TITLE WRAP -->
                  <div class="section-title-wrap red">
                    <h2 class="section-title small">Pixel Forums</h2>
                    <div class="section-title-separator"></div>
                  </div>
                  <!-- /SECTION TITLE WRAP -->

                  <!-- LINK LIST -->
                  <ul class="link-list">
                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="forum.html">Main Page</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="forum-categories.html">Category Page</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="topic.html">Main Topic</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="forum-badges.html">Badges Big &amp; Small</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="profile-summary.html">Profile Summary</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="profile-activity.html">Profile Activity</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="profile-notifications.html">Profile Notifications</a>
                    </li>
                    <!-- /LINK LIST ITEM -->
                  </ul>
                  <!-- /LINK LIST -->

                  <!-- LINK LIST -->
                  <ul class="link-list">
                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="profile-messages.html">Profile Messages</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="profile-badges.html">Profile Badges</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="profile-settings.html">Profile Settings</a>
                    </li>
                    <!-- /LINK LIST ITEM -->

                    <!-- LINK LIST ITEM -->
                    <li class="link-list-item">
                      <a href="forum-search-results.html">Forum Results</a>
                    </li>
                    <!-- /LINK LIST ITEM -->
                  </ul>
                  <!-- /LINK LIST -->
                </div>
                <!-- /LINK SECTION -->
              </div>
              <!-- /LINK SECTIONS -->

              <!-- LINE SEPARATOR -->
              <div class="line-separator"></div>

              <!-- NEWS ITEMS PREVIEW -->
              <div class="news-items-preview">
                <!-- POST PREVIEW -->
                <div class="post-preview gaming-news">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="post-v1.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/09.jpg" alt="post-09">
                      </figure>
                      <!-- /POST PREVIEW IMG -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="news-v1.html" class="tag-ornament">Gaming News</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="post-v1.html" class="post-preview-title">New "Rizen" game is gonna be released in summer 2019</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Vellatrix</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->

                <!-- POST PREVIEW -->
                <div class="post-preview game-review">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="post-v2.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/08.jpg" alt="post-08">
                      </figure>
                      <!-- /POST PREVIEW IMG -->

                      <!-- REVIEW RATING -->
                      <div class="review-rating">
                        <div id="menu-rate-08-1" class="arc small"></div>
                      </div>
                      <!-- /REVIEW RATING -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="news-v2.html" class="tag-ornament">Game Reviews</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="post-v2.html" class="post-preview-title">The new mecha cyborg game is breaking barriers</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Vellatrix</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->

                <!-- POST PREVIEW -->
                <div class="post-preview e-sport">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="esports-post.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/38.jpg" alt="post-38">
                      </figure>
                      <!-- /POST PREVIEW IMG -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="esports-news.html" class="tag-ornament">Esports</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="esports-post.html" class="post-preview-title">Pro Soccer 2017 world league kicked off today!</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Faye V.</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->

                <!-- POST PREVIEW -->
                <div class="post-preview geeky-news">
                  <!-- POST PREVIEW IMG WRAP -->
                  <a href="post-v4.html">
                    <div class="post-preview-img-wrap">
                      <!-- POST PREVIEW IMG -->
                      <figure class="post-preview-img liquid">
                      <img src="${pageContext.request.contextPath}/resources/forum/img/posts/02.jpg" alt="post-02">
                      </figure>
                      <!-- /POST PREVIEW IMG -->
                    </div>
                  </a>
                  <!-- /POST PREVIEW IMG WRAP -->
            
                  <!-- TAG ORNAMENT -->
                  <a href="news-v4.html" class="tag-ornament">Geeky news</a>
                  <!-- /TAG ORNAMENT -->
            
                  <!-- POST PREVIEW TITLE -->
                  <a href="post-v4.html" class="post-preview-title">Jessica Tam to star in the new "Charlotte" series</a>
                  <!-- POST AUTHOR INFO -->
                  <div class="post-author-info-wrap">
                    <p class="post-author-info small light">By <a href="search-results.html" class="post-author">Vellatrix</a><span class="separator">|</span>December 15th, 2018</p>
                  </div>
                  <!-- /POST AUTHOR INFO -->
                  <!-- POST PREVIEW TEXT -->
                  <p class="post-preview-text">Lorem ipsum dolor sit amet, consectetur bere adipisicing elit, sed do eiusmod por lorem incididunt ut labore.</p>
                </div>
                <!-- /POST PREVIEW -->
              </div>
              <!-- /NEWS ITEMS PREVIEW -->
            </li>
            <!-- /SUBMENU ITEM -->
          </ul>
          <!-- /SUBMENU -->
        </li>
        <!-- /MAIN MENU ITEM -->

        <!-- MAIN MENU ITEM -->
        <li class="main-menu-item">
          <a href="shop-v1-grid.html" class="main-menu-item-link">
            Shop
          <!-- SVG ARROW -->
          <svg class="arrow-icon">
            <use xlink:href="#svg-arrow"></use>
          </svg>
          <!-- /SVG ARROW -->
          </a>

          <!-- SUBMENU -->
          <ul class="submenu void">
            <!-- SUBMENU ITEM -->
            <li class="submenu-item v2">
              <!-- SUBMENU ITEM SLIDER -->
              <div id="submenu-slider-1" class="submenu-slider">
                <!-- DROPDOWN LIST -->
                <ul class="dropdown-list submenu-slider-options">
                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">New Releases</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->

                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">Shop Features</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->

                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">Powerstation</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->

                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">Funtendo</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->

                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">X-Rock</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->

                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">Clothing &amp; Hats</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->

                  <!-- DROPDOWN LIST ITEM -->
                  <li class="dropdown-list-item">
                    <p class="dropdown-list-item-link">Merchandise</p>
                    <!-- ARROW ICON -->
                    <svg class="arrow-icon medium">
                      <use xlink:href="#svg-arrow-medium"></use>
                    </svg>
                    <!-- /ARROW ICON -->
                  </li>
                  <!-- /DROPDOWN LIST ITEM -->
                </ul>
                <!-- /DROPDOWN LIST -->

                <!-- SUBMENU SLIDER ITEMS WRAP -->
                <div class="submenu-slider-items-wrap">
                  <!-- SUBMENU SLIDER ITEMS -->
                  <div class="submenu-slider-items">
                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-1">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/04.jpg" alt="product-04">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">Mee U - kawai 8 bundle</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Funtendo</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon empty">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon empty">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price before"><span class="currency">$</span>310.00</p>
                          <p class="product-preview-price current"><span class="currency">$</span>280.00</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">New Releases</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->

                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-2">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/11.jpg" alt="product-11">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">Diamond men's black...</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Clothing &amp; Hats</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price current"><span class="currency">$</span>16.00</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">Shop Features</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->

                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-3">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/09.jpg" alt="product-09">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">Galaxy Adventure RX...</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Powerstation</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price current"><span class="currency">$</span>59.99</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">Powerstation</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->

                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-4">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/08.jpg" alt="product-08">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">Tales of Odd Dimensions</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Funtendo</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon empty">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon empty">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price current"><span class="currency">$</span>59.99</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">Funtendo</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->

                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-5">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/07.jpg" alt="product-07">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">XRock One Bundle + Cam</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Funtendo</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon empty">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price current"><span class="currency">$</span>399.00</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">X-Rock</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->

                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-6">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/12.jpg" alt="product-12">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">Diamond men's white...</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Clothing &amp; Hats</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price current"><span class="currency">$</span>16.00</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">Clothing &amp; Hats</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->

                    <!-- SUBMENU SLIDER ITEM -->
                    <div class="submenu-slider-item submenu-slider-item-7">
                      <!-- PRODUCT PREVIEW -->
                      <div class="product-preview short">
                        <!-- PRODUCT PREVIEW IMG WRAP -->
                        <div class="product-preview-img-wrap">
                          <!-- PRODUCT PREVIEW IMG -->
                          <a href="product-page.html">
                            <figure class="product-preview-img liquid">
                            <img src="${pageContext.request.contextPath}/resources/forum/img/products/13.jpg" alt="product-13">
                            </figure>
                          </a>
                          <!-- /PRODUCT PREVIEW IMG -->
                        </div>
                        <!-- /PRODUCT PREVIEW IMG WRAP -->

                        <!-- PRODUCT PREVIEW TITLE -->
                        <a href="product-page.html" class="product-preview-title">Diamond white enamel...</a>
                        <!-- PRODUCT PREVIEW INFO -->
                        <div class="product-preview-info">
                          <!-- PRODUCT PREVIEW CATEGORY -->
                          <a href="shop-v1-grid.html" class="product-preview-category">Merchandise</a>
                          <!-- RATING ORNAMENT -->
                          <div class="rating-ornament small void yellow">
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                            <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          
                              <!-- RATING ORNAMENT ITEM -->
                            <div class="rating-ornament-item">
                              <!-- RATING ORNAMENT ICON -->
                              <svg class="rating-ornament-icon empty">
                                <use xlink:href="#svg-star"></use>
                              </svg>
                            </div>
                            <!-- /RATING ORNAMENT ITEM -->
                          </div>
                          <!-- /RATING ORNAMENT -->
                        </div>
                        <!-- /PRODUCT PREVIEW INFO -->

                        <!-- PRODUCT PRICE WRAP -->
                        <div class="product-price-wrap">
                          <p class="product-preview-price current"><span class="currency">$</span>10.99</p>
                        </div>
                        <!-- /PRODUCT PRICE WRAP -->

                        <!-- ADD TO BAG -->
                        <div class="button small violet add-to-bag">Add to bag</div>
                      </div>
                      <!-- /PRODUCT PREVIEW -->

                      <!-- LINK SECTIONS -->
                      <div class="link-sections">
                        <!-- LINK SECTION -->
                        <div class="link-section">
                          <!-- SECTION TITLE WRAP -->
                          <div class="section-title-wrap violet">
                            <h2 class="section-title small">Merchandise</h2>
                            <div class="section-title-separator"></div>
                          </div>
                          <!-- /SECTION TITLE WRAP -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-grid.html">Shop 3 Columns Grid</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v1-list.html">Shop 3 Columns List</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="shop-v2.html">Shop 4 Columns</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Description</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Reviews</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-page.html">Product Specifications</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="inventory-bag.html">Inventory Bag (Cart)</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="checkout.html">Checkout Page</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="order-confirmation.html">Order Confirmation</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->

                          <!-- LINK LIST -->
                          <ul class="link-list">
                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="wishlist.html">Wishlist</a>
                            </li>
                            <!-- /LINK LIST ITEM -->

                            <!-- LINK LIST ITEM -->
                            <li class="link-list-item">
                              <a href="product-compare.html">Product Compare</a>
                            </li>
                            <!-- /LINK LIST ITEM -->
                          </ul>
                          <!-- /LINK LIST -->
                        </div>
                        <!-- /LINK SECTION -->
                      </div>
                      <!-- /LINK SECTIONS -->
                    </div>
                    <!-- /SUBMENU SLIDER ITEM -->
                  </div>
                  <!-- /SUBMENU SLIDER ITEMS -->
                </div>
                <!-- SUBMENU SLIDER ITEMS WRAP -->
              </div>
              <!-- /SUBMENU ITEM SLIDER -->
            </li>
            <!-- /SUBMENU ITEM -->
          </ul>
          <!-- /SUBMENU -->
        </li>
        <!-- /MAIN MENU ITEM -->
      </ul>
      <!-- /MAIN MENU -->
    </div>
    <!-- NAVIGATION -->
  </nav>
  <!-- /NAVIGATION WRAP -->

  <!-- MOBILE MENU PULL -->
  <div class="mobile-menu-pull mobile-menu-open">
    <!-- MENU PULL ICON -->
    <svg class="menu-pull-icon">
      <use xlink:href="#svg-menu-pull"></use>
    </svg>
    <!-- /MENU PULL ICON -->
  </div>
  <!-- /MOBILE MENU PULL -->