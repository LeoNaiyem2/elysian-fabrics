<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garment BOM | Intellect8 ERP</title>
    <link rel="stylesheet" href="bom.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- jsPDF for PDF export -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.25/jspdf.plugin.autotable.min.js"></script>

    <style>
        /* Base Styles */
        body {
            /* font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            margin: 0;
            padding: 20px;
            color: #333; */
        }

        .bom-container {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Header */
        .bom-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            border-bottom: 1px solid #eee;
            padding-bottom: 15px;
        }

        .bom-header h1 {
            margin: 0;
            font-size: 24px;
            color: #2c3e50;
        }

        .bom-header h1 i {
            margin-right: 10px;
            color: #3498db;
        }

        /* Buttons */
        .btn {
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 500;
            transition: background 0.3s;
        }

        .btn-primary {
            background: #3498db;
            color: white;
        }

        .btn-primary:hover {
            background: #2980b9;
        }

        .btn-export {
            background: #27ae60;
            color: white;
            margin-left: 10px;
        }

        .btn-export:hover {
            background: #219653;
        }

        .btn-search {
            background: #e67e22;
            color: white;
        }

        .btn-search:hover {
            background: #d35400;
        }

        .btn-icon {
            background: none;
            border: none;
            color: #7f8c8d;
            cursor: pointer;
            margin: 0 5px;
            font-size: 16px;
        }

        .btn-icon:hover {
            color: #3498db;
        }

        /* Filters */
        .bom-filters {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
            flex-wrap: wrap;
        }

        .filter-group {
            display: flex;
            flex-direction: column;
        }

        .filter-group label {
            margin-bottom: 5px;
            font-weight: 500;
            font-size: 14px;
        }

        .filter-group select {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            min-width: 150px;
        }

        /* Table */
        .bom-table-container {
            overflow-x: auto;
        }

        .bom-table {
            width: 100%;
            border-collapse: collapse;
        }

        .bom-table th,
        .bom-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        .bom-table th {
            background: #f8f9fa;
            font-weight: 600;
            color: #2c3e50;
        }

        .bom-table tr:hover {
            background: #f5f7fa;
        }

        /* Status Badges */
        .status-approved {
            background: #27ae60;
            color: white;
            padding: 5px 10px;
            border-radius: 12px;
            font-size: 12px;
        }

        .status-pending {
            background: #f39c12;
            color: white;
            padding: 5px 10px;
            border-radius: 12px;
            font-size: 12px;
        }

        /* Modal */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 80%;
            max-width: 800px;
            max-height: 80vh;
            overflow-y: auto;
        }

        .close {
            float: right;
            font-size: 24px;
            cursor: pointer;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .bom-filters {
                flex-direction: column;
            }

            .bom-header {
                flex-direction: column;
                align-items: flex-start;
            }

            .bom-actions {
                margin-top: 10px;
            }
        }

        /* Modal Styles */
        .modal-content {
            background: white;
            padding: 25px;
            border-radius: 8px;
            width: 80%;
            max-width: 800px;
            max-height: 80vh;
            overflow-y: auto;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .detail-row {
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px solid #eee;
        }

        .detail-row:last-child {
            border-bottom: none;
        }

        .detail-table {
            width: 100%;
            border-collapse: collapse;
            margin: 15px 0;
        }

        .detail-table th,
        .detail-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .detail-table th {
            background-color: #f8f9fa;
        }

        /* Form Styles (for edit mode) */
        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .form-actions {
            margin-top: 20px;
            text-align: right;
        }
    </style>
</head>

<body>
    <div class="bom-container">
        <!-- Header -->
        <header class="bom-header">
            <h1><i class="fas fa-list-alt"></i> Bill of Materials (BOM)</h1>
            <div class="bom-actions">
                <button class="btn btn-primary" id="newBomBtn"><i class="fas fa-plus"></i> New BOM</button>
                <button class="btn btn-export" id="exportPdfBtn"><i class="fas fa-file-export"></i> Export PDF</button>
            </div>
        </header>

        <!-- BOM Filters -->
        <div class="bom-filters">
            <div class="filter-group">
                <label for="style">Style No.</label>
                <select id="styleFilter">
                    <option value="">All Styles</option>
                    <!-- Options will be populated by JavaScript -->
                </select>
            </div>
            <div class="filter-group">
                <label for="status">Status</label>
                <select id="statusFilter">
                    <option value="">All</option>
                    <option value="Draft">Draft</option>
                    <option value="Approved">Approved</option>
                    <option value="Pending">Pending</option>
                </select>
            </div>
            <button class="btn btn-search" id="searchBtn"><i class="fas fa-search"></i> Search</button>
        </div>

        <!-- BOM Table -->
        <div class="bom-table-container">
            <table class="bom-table" id="bomTable">
                <thead>
                    <tr>
                        <th>BOM ID</th>
                        <th>Style No.</th>
                        <th>Description</th>
                        <th>Fabric</th>
                        <th>Trims</th>
                        <th>Total Cost</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody id="bomTableBody">
                    <!-- Data will be populated by JavaScript -->
                </tbody>
            </table>
        </div>

        <!-- BOM Details Modal -->
        <div class="modal" id="bomModal">
            <div class="modal-content">
                <span class="close" id="closeModal">&times;</span>
                <h2 id="modalTitle">BOM Details</h2>
                <div class="bom-details" id="bomDetails">
                    <!-- Dynamic content will go here -->
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Initialize jsPDF
        const { jsPDF } = window.jspdf;

        // DOM Elements
        const bomTableBody = document.getElementById('bomTableBody');
        const styleFilter = document.getElementById('styleFilter');
        const statusFilter = document.getElementById('statusFilter');
        const searchBtn = document.getElementById('searchBtn');
        const newBomBtn = document.getElementById('newBomBtn');
        const exportPdfBtn = document.getElementById('exportPdfBtn');
        const bomModal = document.getElementById('bomModal');
        const closeModal = document.getElementById('closeModal');
        const modalTitle = document.getElementById('modalTitle');
        const bomDetails = document.getElementById('bomDetails');

        // Sample Data (Replace with API calls in production)
        let bomData = [
            {
                id: 'BOM-001',
                styleNo: 'ST-2023-001',
                description: "Men's T-Shirt",
                fabric: "100% Cotton",
                trims: "Buttons, Thread",
                cost: 12.50,
                status: "Approved",
                details: {
                    materials: [
                        { name: "Main Fabric", code: "FAB-001", quantity: 1.5, unit: "yd", cost: 8.00 },
                        { name: "Thread", code: "TRM-001", quantity: 200, unit: "m", cost: 2.50 },
                        { name: "Buttons", code: "TRM-002", quantity: 6, unit: "pcs", cost: 2.00 }
                    ],
                    labor: 5.00,
                    notes: "Standard quality cotton with pearl buttons"
                }
            },
            {
                id: 'BOM-002',
                styleNo: 'ST-2023-002',
                description: "Women's Dress",
                fabric: "Polyester Blend",
                trims: "Zipper, Lace",
                cost: 18.75,
                status: "Pending",
                details: {
                    materials: [
                        { name: "Main Fabric", code: "FAB-002", quantity: 2.2, unit: "yd", cost: 12.00 },
                        { name: "Zipper", code: "TRM-003", quantity: 1, unit: "pcs", cost: 3.50 },
                        { name: "Lace", code: "TRM-004", quantity: 0.5, unit: "yd", cost: 3.25 }
                    ],
                    labor: 7.50,
                    notes: "Premium polyester with invisible zipper"
                }
            }
        ];

        // Initialize the page
        document.addEventListener('DOMContentLoaded', function () {
            populateStyleFilter();
            renderBomTable(bomData);
            setupEventListeners();
        });

        // Populate Style Filter dropdown
        function populateStyleFilter() {
            const uniqueStyles = [...new Set(bomData.map(item => item.styleNo))];
            uniqueStyles.forEach(style => {
                const option = document.createElement('option');
                option.value = style;
                option.textContent = style;
                styleFilter.appendChild(option);
            });
        }

        // Render BOM Table
        function renderBomTable(data) {
            bomTableBody.innerHTML = '';

            data.forEach(item => {
                const row = document.createElement('tr');
                row.innerHTML = `
            <td>${item.id}</td>
            <td>${item.styleNo}</td>
            <td>${item.description}</td>
            <td>${item.fabric}</td>
            <td>${item.trims}</td>
            <td>$${item.cost.toFixed(2)}</td>
            <td><span class="status-${item.status.toLowerCase()}">${item.status}</span></td>
            <td>
                <button class="btn-icon view-btn" data-id="${item.id}"><i class="fas fa-eye"></i></button>
                <button class="btn-icon edit-btn" data-id="${item.id}"><i class="fas fa-edit"></i></button>
                <button class="btn-icon delete-btn" data-id="${item.id}"><i class="fas fa-trash"></i></button>
            </td>
        `;
                bomTableBody.appendChild(row);
            });

            // Add event listeners to action buttons
            document.querySelectorAll('.view-btn').forEach(btn => {
                btn.addEventListener('click', () => openBomModal(btn.dataset.id, 'view'));
            });

            document.querySelectorAll('.edit-btn').forEach(btn => {
                btn.addEventListener('click', () => openBomModal(btn.dataset.id, 'edit'));
            });

            document.querySelectorAll('.delete-btn').forEach(btn => {
                btn.addEventListener('click', () => deleteBom(btn.dataset.id));
            });
        }

        // Filter BOMs
        function filterBoms() {
            const styleValue = styleFilter.value;
            const statusValue = statusFilter.value;

            let filteredData = bomData;

            if (styleValue) {
                filteredData = filteredData.filter(item => item.styleNo === styleValue);
            }

            if (statusValue) {
                filteredData = filteredData.filter(item => item.status === statusValue);
            }

            renderBomTable(filteredData);
        }

        // Open BOM Modal
        function openBomModal(bomId, mode) {
            const bom = bomData.find(item => item.id === bomId);
            if (!bom) return;

            modalTitle.textContent = `${mode === 'view' ? 'View' : 'Edit'} BOM: ${bom.id}`;

            // Build modal content based on mode
            if (mode === 'view') {
                bomDetails.innerHTML = `
            <div class="detail-row">
                <strong>Style No.:</strong> ${bom.styleNo}
            </div>
            <div class="detail-row">
                <strong>Description:</strong> ${bom.description}
            </div>
            <div class="detail-row">
                <strong>Total Cost:</strong> $${bom.cost.toFixed(2)}
            </div>
            <div class="detail-row">
                <strong>Status:</strong> <span class="status-${bom.status.toLowerCase()}">${bom.status}</span>
            </div>
            
            <h3>Materials</h3>
            <table class="detail-table">
                <thead>
                    <tr>
                        <th>Material</th>
                        <th>Code</th>
                        <th>Quantity</th>
                        <th>Unit</th>
                        <th>Cost</th>
                    </tr>
                </thead>
                <tbody>
                    ${bom.details.materials.map(material => `
                        <tr>
                            <td>${material.name}</td>
                            <td>${material.code}</td>
                            <td>${material.quantity}</td>
                            <td>${material.unit}</td>
                            <td>$${material.cost.toFixed(2)}</td>
                        </tr>
                    `).join('')}
                </tbody>
            </table>
            
            <div class="detail-row">
                <strong>Labor Cost:</strong> $${bom.details.labor.toFixed(2)}
            </div>
            
            <div class="detail-row">
                <strong>Notes:</strong> ${bom.details.notes}
            </div>
        `;
            } else {
                // Edit mode form would go here
                bomDetails.innerHTML = `Edit form for ${bom.id}`;
            }

            bomModal.style.display = 'flex';
        }

        // Delete BOM
        function deleteBom(bomId) {
            if (confirm(`Are you sure you want to delete BOM ${bomId}?`)) {
                bomData = bomData.filter(item => item.id !== bomId);
                renderBomTable(bomData);
                alert(`BOM ${bomId} deleted successfully`);
            }
        }

        // Export to PDF
        function exportToPdf() {
            const doc = new jsPDF();

            // Title
            doc.setFontSize(18);
            doc.text('Bill of Materials Report', 105, 15, { align: 'center' });

            // Date
            doc.setFontSize(10);
            doc.text(`Generated on: ${new Date().toLocaleDateString()}`, 105, 22, { align: 'center' });

            // Table
            doc.autoTable({
                head: [['BOM ID', 'Style No.', 'Description', 'Fabric', 'Trims', 'Cost', 'Status']],
                body: bomData.map(item => [
                    item.id,
                    item.styleNo,
                    item.description,
                    item.fabric,
                    item.trims,
                    `$${item.cost.toFixed(2)}`,
                    item.status
                ]),
                startY: 30,
                styles: {
                    fontSize: 8,
                    cellPadding: 2,
                    halign: 'left'
                },
                headStyles: {
                    fillColor: [41, 128, 185],
                    textColor: 255,
                    fontStyle: 'bold'
                }
            });

            doc.save('bom-report.pdf');
        }

        // API Integration Example
        async function fetchBomData() {
            try {
                // Replace with your actual API endpoint
                const response = await fetch('https://your-api-endpoint.com/boms');
                if (!response.ok) throw new Error('Network response was not ok');

                const data = await response.json();
                bomData = data;
                renderBomTable(bomData);
                populateStyleFilter();
            } catch (error) {
                console.error('Error fetching BOM data:', error);
                alert('Failed to load BOM data. Using sample data instead.');
            }
        }

        // Event Listeners
        function setupEventListeners() {
            searchBtn.addEventListener('click', filterBoms);
            newBomBtn.addEventListener('click', () => {
                modalTitle.textContent = 'Create New BOM';
                bomDetails.innerHTML = 'New BOM form would go here';
                bomModal.style.display = 'flex';
            });
            exportPdfBtn.addEventListener('click', exportToPdf);
            closeModal.addEventListener('click', () => {
                bomModal.style.display = 'none';
            });
            window.addEventListener('click', (e) => {
                if (e.target === bomModal) {
                    bomModal.style.display = 'none';
                }
            });

            // Uncomment to fetch real data instead of using sample data
            // fetchBomData();
        }
    </script>

</body>

</html>