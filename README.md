# folder_structure

lib/
├── main.dart                 # Entry point of the application
├── route.dart                # Route management for navigation
├── constants/                # App-wide constants
│   ├── strings.dart          # Strings used throughout the app
├── core/                     # Core application logic and data
│   ├── data/
│   │   ├── countries.dart    # Country and capital data
│   ├── models/
│       ├── quiz.dart         # Logic for quiz functionality
├── ui/                       # All UI-related components
│   ├── screens/
│   │   ├── aboutScreen.dart  # About Us screen implementation
│   │   ├── guessCountry.dart # Main screen for quiz functionality
│   ├── widgets/
│       ├── customButton.dart # Reusable button widget
│       ├── customCard.dart   # Reusable card widget
│       ├── scoreCard.dart    # Widget for score and attempts
├── utils/                    # Utility functions and theming
│   ├── theme.dart            # App-wide theming
│   ├── utils.dart            # Helper functions (e.g., alerts)


# Benefits of Folder Structure

Scalability: Easier to add new features or components without cluttering the project.
Maintainability: Improved readability and ease of debugging with a modular structure.
Reusability: Centralized components in the widgets/ folder reduce redundant code.
