# ⚡ Blinkit Money Animation

A high-fidelity recreation of the premium **Blinkit Money** onboarding animation sequence in **Flutter**.

[![Flutter Version](https://img.shields.io/badge/Flutter-%3E%3D%203.0.0-02569B?logo=flutter&style=flat-square)](https://flutter.dev)
[![Developer](https://img.shields.io/badge/Developer-daksh1205-F8CB45?style=flat-square)](https://github.com/daksh1205)

---

## ✨ Features

*   **Choreographed Sequence:** A single 6-second `AnimationController` driving wallet scaling, text transitions, and list cascades using `TweenSequence` and custom `Interval` offsets.
*   **Custom Canvas Mesh:** High-performance background rendered using custom mathematics (`DiamondMeshPainter`) that draws 45° rotated diamonds shrinking dynamically based on screen depth.
*   **Glowing Shaders:** Integrates a radial gradient shader mask with custom painting to create a premium glowing background.
*   **Zero Dependencies:** Built entirely using core Flutter primitives, custom paint, and native animation controllers.

---

## 📂 Architecture

*   `lib/app/pages/` - Contains the main screen (`BlinkitMoneyScreen`) orchestrating all timelines.
*   `lib/app/widgets/` - Modular UI blocks (`BlinkitHeroCard`, `DiamondMeshPainter`, `BlinkitFeatureCard`, etc.).
*   `lib/app/core/` - Reusable Gilroy typography style constants and asset locations.

---

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/daksh1205/blinkit-money-animation.git
```

### 2. Run the App
```bash
cd blinkit-money-animation
flutter pub get
flutter run
```

---

## 📱 Preview

| Onboarding Screenshot | Live Animation Walkthrough |
| :---: | :---: |
| <img src="https://github.com/user-attachments/assets/afc2feec-bf59-4632-8418-56da312a4341" width="300" alt="Screenshot" /> | <video src="https://github.com/user-attachments/assets/a4bf3fb7-b5c2-40a8-9690-354822ecaa94" width="300" controls muted autoplay loop></video> |
