# folder_structure

lib/<br><br>
├── main.dart                 # Entry point of the application <br><br>
├── route.dart                # Route management for navigation<br><br>
├── constants/                # App-wide constants<br><br>
│   ├── strings.dart          # Strings used throughout the app<br><br>
├── core/                     # Core application logic and data<br><br>
│   ├── data/<br><br>
│   │   ├── countries.dart    # Country and capital data<br><br>
│   ├── models/<br><br>
│       ├── quiz.dart         # Logic for quiz functionality<br><br>
├── ui/                       # All UI-related components<br><br>
│   ├── screens/<br><br>
│   │   ├── aboutScreen.dart  # About Us screen implementation<br><br>
│   │   ├── guessCountry.dart # Main screen for quiz functionality<br><br>
│   ├── widgets/<br><br>
│       ├── customButton.dart # Reusable button widget<br><br>
│       ├── customCard.dart   # Reusable card widget<br><br>
│       ├── scoreCard.dart    # Widget for score and attempts<br><br>
├── utils/                    # Utility functions and theming<br><br>
│   ├── theme.dart            # App-wide theming<br><br>
│   ├── utils.dart            # Helper functions (e.g., alerts)<br><br>



# Benefits of Folder Structure

Scalability: Easier to add new features or components without cluttering the project.
Maintainability: Improved readability and ease of debugging with a modular structure.
Reusability: Centralized components in the widgets/ folder reduce redundant code.
