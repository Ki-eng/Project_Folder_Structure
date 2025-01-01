# folder_structure

lib/
├── main.dart                 # Entry point of the application <br>
├── route.dart                # Route management for navigation<br>
├── constants/                # App-wide constants<br>
│   ├── strings.dart          # Strings used throughout the app<br>
├── core/                     # Core application logic and data<br>
│   ├── data/<br>
│   │   ├── countries.dart    # Country and capital data<br>
│   ├── models/<br>
│       ├── quiz.dart         # Logic for quiz functionality<br>
├── ui/                       # All UI-related components<br>
│   ├── screens/<br>
│   │   ├── aboutScreen.dart  # About Us screen implementation<br>
│   │   ├── guessCountry.dart # Main screen for quiz functionality<br>
│   ├── widgets/<br>
│       ├── customButton.dart # Reusable button widget<br>
│       ├── customCard.dart   # Reusable card widget<br>
│       ├── scoreCard.dart    # Widget for score and attempts<br>
├── utils/                    # Utility functions and theming<br>
│   ├── theme.dart            # App-wide theming<br>
│   ├── utils.dart            # Helper functions (e.g., alerts)<br>



# Benefits of Folder Structure

Scalability: Easier to add new features or components without cluttering the project.
Maintainability: Improved readability and ease of debugging with a modular structure.
Reusability: Centralized components in the widgets/ folder reduce redundant code.
