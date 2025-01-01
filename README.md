# folder_structure

lib/
├── main.dart                 # The main entry point of the app <br>
├── screens/<br>
│   ├── aboutScreen.dart      # About Us screen implementation<br>
│   ├── guessCountry.dart     # Main screen with quiz functionality<br>
├── widgets/<br>
│   ├── customButton.dart     # Reusable button widget<br>
│   ├── customCard.dart       # Reusable card widget<br>
│   ├── scoreCard.dart        # Widget to display score and attempts<br>
├── models/<br>
│   ├── quiz.dart             # Logic for quiz functionality (e.g., score management)<br>
├── data/
│   ├── countries.dart        # List of countries and their capitals<br>
├── utils/
│   ├── utils.dart            # Helper methods (e.g., alerts for end of list)<br>

# Benefits of Folder Structure

Scalability: Easier to add new features or components without cluttering the project.
Maintainability: Improved readability and ease of debugging with a modular structure.
Reusability: Centralized components in the widgets/ folder reduce redundant code.
