# folder_structure

lib/
├── main.dart                 # The main entry point of the app
├── screens/
│   ├── aboutScreen.dart      # About Us screen implementation
│   ├── guessCountry.dart     # Main screen with quiz functionality
├── widgets/
│   ├── customButton.dart     # Reusable button widget
│   ├── customCard.dart       # Reusable card widget
│   ├── scoreCard.dart        # Widget to display score and attempts
├── models/
│   ├── quiz.dart             # Logic for quiz functionality (e.g., score management)
├── data/
│   ├── countries.dart        # List of countries and their capitals
├── utils/
│   ├── utils.dart            # Helper methods (e.g., alerts for end of list)

# Benefits of Folder Structure

Scalability: Easier to add new features or components without cluttering the project.
Maintainability: Improved readability and ease of debugging with a modular structure.
Reusability: Centralized components in the widgets/ folder reduce redundant code.
