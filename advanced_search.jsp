<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Advanced Search</title>
    
    <!-- Boostrap CSS -->
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
      />
      
      <!-- CSS for datatable -->
      <link
      href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css"
      rel="stylesheet"
      crossorigin="anonymous"
      />

    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/search-results.css" />
    
    <!-- Bootstrap JS -->
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>

    <!-- Bootstrap Icons -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&family=Ubuntu&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!------------------------------ Navbar ------------------------------>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid px-3">
        <!-- Brand Img -->
        <a class="navbar-brand" href="index.html">
          <img
            class="rounded-circle pt-auto pb-auto"
            src="Images/FlightPub-Logo.png"
            width="30"
            height="30"
            alt=""
          />
        </a>

        <ul class="navbar-nav d-flex flex-row ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="notifications.html"
              ><img
                class="rounded-circle pt-auto pb-auto"
                src="Images/notification-symbol.png"
                width="30"
                height="30"
                alt=""
            /></a>
          </li>
          <li class="nav-item ps-2">
            <div class="dropdown">
              <a
                class="nav-link dropdown-toggle"
                id="dropdownMenuLink"
                data-bs-toggle="dropdown"
                aria-expanded="false"
                ><img
                  class="rounded-circle pt-auto pb-auto"
                  src="Images/blank-user.png"
                  width="30"
                  height="30"
                  alt=""
              /></a>

              <ul
                class="dropdown-menu dropdown-menu-lg-end"
                aria-labelledby="dropdownMenuLink"
              >
                <li>
                  <a class="dropdown-item" href="user.html">My Account</a>
                </li>
                <li>
                  <a class="dropdown-item" href="watchlist.html">Watchlist</a>
                </li>
                <li>
                  <a class="dropdown-item" href="#">Accessibility</a>
                </li>
                <li>
                  <a class="dropdown-item" href="login.html">Log Out</a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!------------------------------ Navbar ------------------------------>
    <div class="green-background px-5" id="main-body">
      <!------------------- Search Bar------------------->
      <section class="mx-5 pt-3" id="search">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="card bg-light text-white w-75 p-3">
            <div class="card-body p-2 text-center">
              <form action="advanced_search.html">
                <div class="row">
                  <div class="form-outline col-md-3 form-white pe-2">
                    <input
                      type="text"
                      id="location"
                      class="form-control form-control-lg"
                      placeholder="From"
                    />
                  </div>

                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="text"
                      id="destination"
                      class="form-control form-control-lg"
                      placeholder="To"
                    />
                  </div>

                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="date"
                      id="start-date"
                      class="form-control form-control-lg"
                      placeholder="Start Date"
                    />
                  </div>

                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="date"
                      id="End Date"
                      class="form-control form-control-lg"
                      placeholder="End Date"
                    />
                  </div>
                </div>
                
                <div class="row py-3">
                  <div class="form-outline col-md-2 form-white px-2">
                    <select id="trip-type" class="form-select">
                      <option value="return">One Way</option>
                      <option value="round-trip">Round Trip</option>
                    </select>
                  </div>

                  <div class="col-md-2">
                    <select class="form-select" aria-label="Class">
                      <option selectd>Choose Class</option>
                      <option value="economy">Economy</option>
                      <option value="business">Business</option>
                      <option value="first-class">First Class</option>
                    </select>
                  </div>

                  <div class="col-md-2">
                    <select class="form-select" aria-label="Maximum Stopovers">
                      <option selected>Maximum Stopovers</option>
                      <option value="0">Non-stop</option>
                      <option value="1">1 stopover</option>
                      <option value="2">2 stopovers</option>
                      <option value="3">3 stopovers</option>
                    </select>
                  </div>

                  <div class="form-outline col-lg-3 form-white px-2">
                    <div class="input-group">
                      <button type="button" class="btn btn-outline-secondary minus-btn">-</button>
                      <input type="text" id="passengers" class="form-control form-control-lg" value="1">
                      <button type="button" class="btn btn-outline-secondary plus-btn">+</button>
                    </div>
                  </div>

                  <div class="col-md-2 text-center">
                    <button
                      class="btn btn-outline-dark btn-lg px-5"
                      type="submit"
                      >
                      Search
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
      <!------------------- Search Results------------------->
      <section class="mx-5 py-5" id="search-results">
        <div class="container">
          <div class="row card">
            <div class="col-md-12">
              <h2>Search Results</h2>
              <table id="resultsTable" class="table table-md">
                <thead class="thead-dark">
                  <tr>
                    <th>Airline(s)</th>
                    <th>Start Date</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                    <th>Duration</th>
                    <th>Number of Stops</th>
                    <th>Price</th>
                  </tr>
                </thead>
                <tbody>
                  <tr onclick="window.location='flight.html'">
                    <td>Air India</td>
                    <td>April 14, 2023</td>
                    <td>09:45</td>
                    <td>18:30</td>
                    <td>40 hr 45 min</td>
                    <td>1 stop</td>
                    <td class="price">$1128</td>
                  </tr>
                  <tr onclick="window.location='flight.html'">
                    <td>Gulf Air</td>
                    <td>April 14, 2023</td>
                    <td>09:45</td>
                    <td>07:55</td>
                    <td>30 hr 10 min</td>
                    <td>2 Stops</td>
                    <td class="price">$1359</td>
                  </tr>
                  <tr onclick="window.location='flight.html'">
                    <td>Virgin, Air Asia</td>
                    <td>April 14, 2023</td>
                    <td>12:35</td>
                    <td>13:40</td>
                    <td>33 hr 5 min</td>
                    <td>3 Stops</td>
                    <td class="price">$1186</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </section>
    </div>
  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
  <script src="js/advanced_search.js"></script>
  </body>
</html>