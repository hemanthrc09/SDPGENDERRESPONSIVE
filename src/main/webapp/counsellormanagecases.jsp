<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Manage Cases - Domestic Violence Support</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f9f9f9;
    }

    header {
      background-color: #4a90e2;
      padding: 20px;
      color: white;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 24px;
    }
    nav {
      display: flex;
      justify-content: space-around;
      background-color: #003366;
      padding: 10px 0;
    }

    nav a {
      color: white;
      text-decoration: none;
      font-size: 16px;
    }

    nav a:hover {
      text-decoration: underline;
    }

    .container {
      padding: 20px;
      background-color: #e8f1fc;
    }

    .container h2 {
      text-align: center;
      color: #003366;
    }

    .search-filter {
      margin-bottom: 20px;
      display: flex;
      justify-content: center;
      gap: 10px;
    }

    .search-filter input,
    .search-filter select {
      padding: 10px;
      font-size: 14px;
      border-radius: 5px;
      border: 1px solid #ddd;
    }

    .case-list {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
      gap: 20px;
    }

    .case-card {
      background: white;
      border: 1px solid #ddd;
      border-radius: 8px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      padding: 15px;
    }

    .case-card h3 {
      margin-top: 0;
      font-size: 20px;
      color: #003366;
    }

    .case-card p {
      font-size: 14px;
      color: #555;
    }

    .case-status {
      display: inline-block;
      padding: 5px 10px;
      font-size: 12px;
      border-radius: 4px;
      margin-top: 10px;
    }

    .status-open {
      background-color: #ffc107;
      color: white;
    }

    .status-closed {
      background-color: #28a745;
      color: white;
    }

    .status-in-progress {
      background-color: #007bff;
      color: white;
    }

    .case-card a {
      display: inline-block;
      margin-top: 15px;
      padding: 10px 15px;
      background-color: #4a90e2;
      color: white;
      border-radius: 5px;
      text-decoration: none;
      font-size: 14px;
      text-align: center;
    }

    .case-card a:hover {
      background-color: #003366;
    }
  </style>
</head>
<body>
  <header>
    <h1>Manage Cases</h1>
  </header>

 <nav>
    <a href="counsellormanagecases.jsp">Manage Cases</a>
    <a href="counsellorsessions.jsp">Provide Support</a>
    <a href="counsellorresources.jsp">Resources</a>
     <a href="counsellorprogresstracking.jsp">Track Progress</a>
    <a href="counsellorlogout.jsp">Logout</a>
  </nav>
  <div class="container">
    <h2>Case Management</h2>
    <div class="search-filter">
      <input type="text" placeholder="Search by case ID or name..." id="searchInput">
      <select id="statusFilter">
        <option value="">Filter by Status</option>
        <option value="open">Open</option>
        <option value="in-progress">In Progress</option>
        <option value="closed">Closed</option>
      </select>
      <button style="padding: 10px; background-color: #4a90e2; color: white; border: none; border-radius: 5px;" onclick="applyFilters()">Search</button>
    </div>

    <div class="case-list" id="caseList">
      <!-- Sample Case 1 -->
      <div class="case-card">
        <h3>Case #101: Jane Doe</h3>
        <p><strong>Assigned Counselor:</strong> John Smith</p>
        <p><strong>Description:</strong> Case involves domestic abuse and requires legal aid.</p>
        <span class="case-status status-open">Open</span>
        <a href="#">View Case</a>
      </div>

      <!-- Sample Case 2 -->
      <div class="case-card">
        <h3>Case #102: Mary Johnson</h3>
        <p><strong>Assigned Counselor:</strong> Sarah Wilson</p>
        <p><strong>Description:</strong> Survivor needs counseling and shelter support.</p>
        <span class="case-status status-in-progress">In Progress</span>
        <a href="#">View Case</a>
      </div>

      <!-- Sample Case 3 -->
      <div class="case-card">
        <h3>Case #103: Robert Brown</h3>
        <p><strong>Assigned Counselor:</strong> Alice Davis</p>
        <p><strong>Description:</strong> Case resolved with effective counseling sessions.</p>
        <span class="case-status status-closed">Closed</span>
        <a href="#">View Case</a>
      </div>
    </div>
  </div>

  <script>
    function applyFilters() {
      const searchInput = document.getElementById('searchInput').value.toLowerCase();
      const statusFilter = document.getElementById('statusFilter').value;

      const cases = document.querySelectorAll('.case-card');
      cases.forEach(caseCard => {
        const caseText = caseCard.textContent.toLowerCase();
        const caseStatus = caseCard.querySelector('.case-status').textContent.toLowerCase();

        const matchesSearch = searchInput === '' || caseText.includes(searchInput);
        const matchesStatus = statusFilter === '' || caseStatus.includes(statusFilter);

        if (matchesSearch && matchesStatus) {
          caseCard.style.display = 'block';
        } else {
          caseCard.style.display = 'none';
        }
      });
    }
  </script>
</body>
</html>
