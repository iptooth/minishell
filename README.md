# Minishell

Welcome to **Minishell**, a simple shell implementation written in C as part of the 42 School curriculum. This project aims to mimic the behavior of a Unix shell, handling basic commands, signals, pipes, redirections, and environment variables.

## Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Built-ins](#built-ins)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## About the Project

The **Minishell** project is a fundamental part of the 42 curriculum, which teaches us the inner workings of a Unix shell by building one from scratch in C. The goal is to replicate the behavior of popular shells like `bash` or `zsh` while adhering to strict memory management and C programming practices.

### Key Objectives:
- Handle user input and execute commands like a real shell.
- Implement pipes (`|`), redirections (`<`, `>`), and basic shell features.
- Manage environment variables.
- Execute built-in commands.
- Properly handle signal interrupts (e.g., `Ctrl+C`, `Ctrl+D`).

## Features

- **Execute Commands**: Run executables located in system paths (`/bin`, `/usr/bin`, etc.).
- **Environment Variables**: Access and modify environment variables using `export`, `unset`, etc.
- **Redirections**: Handle input (`<`), output (`>`), and append (`>>`) redirections.
- **Pipes**: Chain commands together using pipes (`|`).
- **Signal Handling**: Handle `SIGINT` (`Ctrl+C`), `SIGQUIT`, and `EOF` (`Ctrl+D`) signals.
- **Error Handling**: Mimic error messages from real shells for invalid commands or operations.
- **Built-in Commands**: Implement basic shell commands like `cd`, `echo`, `env`, `export`, `unset`, and `exit`.

## Installation

To install and run **Minishell**, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/minishell.git
    cd minishell
    ```

2. **Compile the project**:
    ```bash
    make
    ```

3. **Run the shell**:
    ```bash
    ./minishell
    ```

## Usage

Once you run `./minishell`, you can start typing commands just like in a regular shell. Some examples include:

```bash
# Run basic system commands
ls -la
pwd
cat file.txt

# Use pipes and redirections
ls | grep .c > output.txt
cat < input.txt | wc -l

# Use built-in commands
cd ..
echo "Hello, World!"
export VAR=value
env
unset VAR
exit
```
