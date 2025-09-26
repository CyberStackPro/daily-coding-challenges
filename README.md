# Daily Coding Challenges

Welcome to my personal "code gym"—a space for practicing programming challenges and honing problem-solving skills. This repository includes solutions to a variety of coding problems from sources like **Advent of Code** and **Project Euler**, implemented in multiple programming languages.

---

## 📁 Repository Structure

```bash
daily-coding-challenges/
│
├── advent-of-code/
│   ├── <year>/
│   │   ├── <language>/
│   │   │   └── <problem-files>
│
└── math-problems/
    ├── <language>/
    │   └── <problem-files>
```

- **`advent-of-code/`**  
  Solutions for yearly Advent of Code challenges.  
  - Organized by year (e.g., `2024/`)  
  - Contains subfolders for different programming languages (e.g., `python/`, `rust/`)

- **`math-problems/`**  
  Solutions for Project Euler and other mathematical challenges.  
  - Organized by language folders (e.g., `python/`, `cpp/`)

---

## 🚀 Getting Started

To streamline problem setup, use the provided bash scripts:

### Advent of Code

Create a new problem folder with:

```sh
./advent-of-code.sh <PROBLEM_NUMBER> <PROBLEM_TITLE> [YEAR]
```

**Example:**
```sh
./advent-of-code.sh 001 historian_hysteria 2024
```

---

### Project Euler (Math Problems)

Set up a new math problem with:

```sh
./new-math.sh <PROBLEM_NUMBER> <PROBLEM_TITLE>
```

**Example:**
```sh
./new-math.sh 001 multiples-of-3-or-5
```

---

## 🤝 Contributing

This repository is primarily for personal practice, but you're welcome to explore the solutions or use the setup scripts for your own coding journey!
