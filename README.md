# 🎰 Lottery App

A simple Flutter app that simulates a lottery draw. The user presses a button to generate a random number, and if it matches the winning number, they win the lottery!

## 🚀 Features

- Beautiful, colorful UI using Material Design
- Random number generation using Dart's `Random` class
- Conditional UI rendering based on result (win or lose)
- Uses `StatefulWidget` and `setState` for UI updates
- Designed to demonstrate basic Flutter interactivity

## 🎮 How It Works

- The app has a pre-defined winning number (`y = 14`).
- Each time the user taps the refresh button, a random number (`x`) is generated.
- If `x == y`, a success message with a green check icon is shown.
- If `x != y`, a failure message with a red error icon is shown.

## 📦 Dependencies

- Flutter SDK (any stable version)
- No external packages required

## 🧠 Concepts Used

- `StatefulWidget` and `setState`
- `Random().nextInt()`
- Conditional rendering with ternary operator
- UI components: `Scaffold`, `AppBar`, `Column`, `Text`, `Icon`, `FloatingActionButton`

## 🛠️ Getting Started

1. Clone the repository or copy the code into a new Flutter project.
2. Run the project using:
   ```bash
   flutter run
3. Press the refresh button to try your luck!

👨‍💻 Author
Hassan Ali 
Student of Computer Science at UMT
