# folder_structure

## Explanation of Folders<br>

### constants/: <br>
Contains app-wide constants like strings (strings.dart) for centralized management of text and other static data.<br>
**core/:** Includes essential application logic and data, grouped into:<br>
**data/:** Stores country and capital data (countries.dart).<br>
**models/:** Houses logic and state management (e.g., quiz.dart).<br>
### ui/: <br>
Consolidates all UI-related files:<br>
**screens/:** App pages such as aboutScreen.dart and guessCountry.dart.<br>
**widgets/:** Reusable UI components like custom buttons and cards.<br>
### utils/: Provides helper methods (utils.dart) and theming (theme.dart) for consistent styling across the app.<br>
route.dart: Manages navigation logic, ensuring clean routing between app screens.<br>



# Benefits of Folder Structure

Scalability: Easier to add new features or components without cluttering the project.<br>
Maintainability: Improved readability and ease of debugging with a modular structure.<br>
Reusability: Centralized components in the widgets/ folder reduce redundant code.
