# Hospital Management System (HMS) - Flutter Demo

A modern, highly professional, and responsive Hospital Management System (HMS) built with Flutter and Dart. This project demonstrates a comprehensive clinical and administrative portal tailored for healthcare professionals. It supports dual-language localization (English and Arabic), dark mode/light mode themes, and adaptively adjusts its layout for mobile, tablet, and desktop viewports.

---

## 🚀 Features & Modules

The platform is organized into distinct clinical and administrative modules:

### 1. Clinical Workflows
*   **Emergency Department (ER):** Efficient triage categorization, active bed assignments, and emergency case registration/treatment tracking.
*   **Inpatient & Ward Management:** Manage hospital wards, track bed occupancy rates, and handle inpatient admissions and discharges.
*   **Operating Room (OR):** Schedule surgeries, assign surgical teams, manage room availability, and define surgical procedures.
*   **Laboratory & Diagnostics:** Order laboratory tests, track sample processing status, and retrieve diagnostics results.
*   **Pharmacy & Prescriptions:** Manage prescription orders, dispense medicines, and log medication administration histories.
*   **Medical Records:** A consolidated view of electronic health records (EHR), physician notes, nursing charts, and historical diagnoses.

### 2. Administrative & Operations
*   **Interactive Dashboard:** A command-center home screen highlighting key performance indicators (KPIs), active patient counts, bed occupancy rates, and pending appointments.
*   **Patient Registry:** Complete patient demographics profile manager (MRN generation, insurance mapping, VIP flagging, and emergency contacts).
*   **Appointments Scheduling:** Book, reschedule, and manage doctor appointments.
*   **Insurance & Billing:** Process pre-authorizations, verify insurance policy guidelines, and manage claim submissions.

### 3. Core Framework Capabilities
*   **Localization (Multi-language):** Full support for English (`en`) and Arabic (`ar`) with right-to-left (RTL) compatibility using `flutter_localizations` and `flutter_intl`.
*   **Responsive UI/UX:** Built with `responsive_builder` to ensure an optimal layout on mobile devices, tablets, and wide desktop screens.
*   **Dynamic Theming:** Seamless real-time toggle between Light and Dark mode.
*   **Centralized API Client:** Integrated networking service with `Dio` featuring request logging, global error mapping, and Tenant-specific headers (`X-Tenant-Id`) for multi-tenant deployments.

---

## 🛠️ Technology Stack

| Technology / Library | Purpose |
| :--- | :--- |
| **Flutter & Dart SDK** | Core application runtime and UI rendering engine |
| **Riverpod (`flutter_riverpod`)** | State management, dependency injection, and theme state |
| **GoRouter (`go_router`)** | Declarative routing, deep linking, and navigation shell |
| **Dio (`dio`)** | Robust HTTP client for REST API communication |
| **Reactive Forms (`reactive_forms`)** | Dynamic form validation and structured data entry |
| **Toastification (`toastification`)** | Rich, animated toast notifications and alerts |
| **Responsive Builder** | Viewport-adaptive grid and sidebar navigation layouts |
| **Google Fonts** | Modern typography management (Inter & Outfit palettes) |

---

## 📂 Project Structure

```text
lib/
├── common.dart                 # Global exports and core providers
├── main.dart                   # Application entry point & configuration
├── routes.dart                 # GoRouter configuration & shell layout routes
├── src/
│   ├── app.dart                # MainApp widget (MaterialApp.router setup)
│   ├── extensions/             # Context and theme extensions
│   ├── mixins/                 # Reusable utility mixins
│   ├── models/                 # Strong-typed JSON-serializable clinical models
│   ├── pages/                  # Screen views grouped by clinical modules:
│   │   ├── home/               # Entrance landing page
│   │   ├── dashboard/          # Performance & summary cards
│   │   ├── patients/           # Patient records and lists
│   │   ├── appointments/       # Scheduling interface
│   │   ├── medical_records/    # EHR timeline and notes
│   │   ├── pharmacy/           # Medication logs
│   │   ├── laboratory/         # Lab tests list and details
│   │   ├── inpatient/          # Ward management UI
│   │   ├── emergency/          # ER Triage dashboard
│   │   ├── operating_room/     # Surgery bookings list
│   │   ├── insurance/          # Pre-authorizations list
│   │   └── shell/              # Sidebar navigation & layout drawer
│   ├── services/               # Dio Client, API end-points, & data providers
│   ├── utils/                  # Theme configuration, text styles, and color constants
│   └── widgets/                # Reusable custom UI components (AppPage, cards, inputs)
└── l10n/                       # Localization bundles (intl_en.arb, intl_ar.arb)
```

---

## ⚙️ Getting Started

### Prerequisites
*   Flutter SDK: `^3.11.4` (or newer compatible version)
*   Dart SDK

### 1. Installation
Clone the repository and fetch the project dependencies:
```bash
flutter pub get
```

### 2. Code Generation (Optional)
If you add or update any code-generated files (e.g. assets or custom models requiring build_runner):
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 3. Running the App
Run the project in debug mode on your connected simulator, web browser, or physical device:
```bash
flutter run
```

---

## 🌐 API & Backend Configuration

The application communicates with a secure backend API hosted at:
`https://tesseroapi.runasp.net`

All outgoing HTTP requests are routed through a centralized [DioService](file:///d:/projects/mine/hospital_demo/lib/src/services/dio_service.dart) that automatically handles:
- Connection and receive timeouts (30 seconds).
- Tenant-specific headers (`X-Tenant-Id`).
- Standardized request/response logging to stdout.
- Comprehensive REST exception mapping.
