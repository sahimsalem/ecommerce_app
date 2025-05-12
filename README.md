

# 🚀 Flutter E-Commerce App with Retrofit, Dio & Riverpod

## 📌 Overview
This repository focuses on **Clean Layered Architecture** while mastering **Retrofit, Dio, and Build Runner** for structured REST API integration in Flutter. It uses **Riverpod for state management**, ensuring a scalable and well-organized codebase.

---

## 🎯 Goals
- Implement **Clean Layered Architecture** for maintainability.
- Learn **Retrofit, Dio & Build Runner** for structured API calls.
- Integrate **Riverpod** for efficient state management.
- Build an **E-Commerce Flutter App** with dynamic API-driven data.

---

## 🏗️ Clean Layered Architecture Overview
This project follows a **multi-layered approach** to ensure **separation of concerns** and modularity.

### **✅ Layers in the Project**
| Layer           | Purpose |
|----------------|----------------------------------|
| **Core**       | Defines essential utilities, constants, and dependency injection. |
| **Data**       | Manages API calls, DTOs, and repositories for data handling. |
| **Domain**     | Contains business logic and use cases to separate concerns. |
| **Presentation** | Handles UI components and Riverpod state management. |

---

## 🔗 Tech Stack
| Tool         | Purpose |
|-------------|-----------------------------------|
| **Flutter**  | Cross-platform mobile development |
| **Dio**      | Advanced HTTP client for networking |
| **Retrofit** | Type-safe API calls with automated generation |
| **Build Runner** | Code generation utility for clean architecture |
| **Riverpod** | Efficient state management without relying on `BuildContext` |

---

## 📚 Learning Path
### ✅ **Step 1: Clean Layered Architecture Implementation**
- Organize files based on **core, data, domain, and presentation** layers.
- Separate concerns for **scalability and maintainability**.

### ✅ **Step 2: Riverpod for State Management**
- Implement **StateNotifierProvider** for managing app state.
- Utilize **Riverpod’s provider architecture** to maintain a reactive UI.

### ✅ **Step 3: Retrofit & Dio API Integration**
- Implement **type-safe API calls** using Retrofit.
- Use **Dio interceptors** for efficient request handling.

### ✅ **Step 4: Build Runner & Code Generation**
- Use **Build Runner** for automatic model generation.
- Implement **DTOs** to handle API responses cleanly.

### ✅ **Step 5: E-Commerce App Development**
- Design **product listing, details, and authentication** screens.
- Fetch **real-time product data** using REST APIs.
- Implement **state management using Riverpod** for better performance.

---

## 📁 Project Structure
```
lib/
│── src/
│   ├── core/            # Essential utilities & dependency injection
│   ├── data/            # API service, DTOs, repositories
│   ├── domain/          # Business logic, use cases
│   ├── presentation/    # UI components & Riverpod state management
│   ├── providers/       # Riverpod state management logic
```

---

## 🔥 Running the Project
1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-repo/flutter-ecommerce.git
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run build runner (if applicable):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. **Start the application:**
   ```bash
   flutter run
   ```

---

## 🌟 Contributions
Feel free to **fork, improve, and submit PRs** to enhance the project. Suggestions and ideas are always welcome!

---

## 📜 License
This project is licensed under the **MIT License**. See `LICENSE` for details.

---

### 💬 Questions?
Have any questions or suggestions? Open an issue or reach out! 🚀
