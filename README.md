# 🌐 Hellonode

![CI Status](https://github.com/zpz5HAU-tgc3fgw2xwr/helloworld/actions/workflows/ci.yml/badge.svg?branch=hellonode)
![CD Status](https://github.com/zpz5HAU-tgc3fgw2xwr/helloworld/actions/workflows/cd.yml/badge.svg?branch=hellonode)

## 🖍 Project Overview

**Hellonode** is a Node.js-based project template built on the Helloworld framework. It provides a minimalist yet robust starting point with tools like TypeScript, ESLint, Vitest, and Vite pre-configured for efficient development. The structure emphasizes scalability and clarity, ensuring seamless branching and expansion.

---

## 🚀 Quick Start

### Run with Docker

1. Build the Docker image:
   ```bash
   docker build -t hellonode .
   ```
2. Run the Docker container:
   ```bash
   docker run hellonode
   ```

### Run Locally

1. Ensure Node.js and `npm` are installed on your system.
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm run dev
   ```

---

## 🌟 Features

- **Node.js Template**: Includes TypeScript for type safety and Vite for fast builds.
- **Cross-Platform Support**: Works seamlessly in Docker or local environments.
- **Scalable Structure**: Organized directories for assets and components.
- **CI/CD Ready**: Includes [GitHub Actions](https://github.com/features/actions) for automated testing and validation.
- **Testing with Vitest**: Pre-configured for unit and integration testing.
- **Code Linting**: ESLint ensures consistent code quality.

---

## 🗂️ Directory Structure

```
hellonode/
├── src/                     # Source files
│   ├── assets/              # Static assets
│   │   ├── styles/          # Stylesheets
│   │   ├── svg/             # SVG assets
│   ├── components/          # Reusable components
├── .github/                 # CI/CD configurations
│   └── workflows/
│       ├── ci.yml           # GitHub Actions CI workflow
│       └── cd.yml           # GitHub Actions CD workflow
├── Dockerfile               # Builds and runs the container
├── README.md                # Project documentation
├── package.json             # Node.js package configuration
├── vite.config.ts           # Vite configuration file
```

---

## ⚙️ CI/CD Workflow

This repository includes separate [GitHub Actions](https://github.com/features/actions) pipelines for CI and CD:

1. **Continuous Integration (CI)**: Validates changes through testing and linting.
   - Configuration: [`ci.yml`](./.github/workflows/ci.yml)
2. **Continuous Deployment (CD)**: Automates deployment tasks.
   - Configuration: [`cd.yml`](./.github/workflows/cd.yml)

---

## 🧡 Contributing

We welcome contributions! If you want to expand this template or add additional features:

1. Fork the repository.
2. Create a new branch with your changes.
3. Submit a pull request with detailed information about your additions.

---

## 🛠️ Future Plans

- Additional branches for specific frameworks and tools:
  - [Vue.js](https://vuejs.org/), [React](https://reactjs.org/), [Angular](https://angular.io/), and more.
- Enhanced support for advanced configurations and optimizations.

---

## 📜 License

This project is licensed under the MIT License. See the [`LICENSE`](./LICENSE) file for details.
