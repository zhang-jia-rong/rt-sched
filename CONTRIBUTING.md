# Contributing to Frequency-based RR Scheduling Research

We're excited that you're interested in contributing to our research on frequency-based Round-Robin scheduling. This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

## Getting Started

Before diving into development, you'll need to set up your local environment. Start by forking this repository to your GitHub account, then clone it locally to your machine. The README.md contains detailed setup instructions for installing required dependencies and configuring the development tools.

## Development Workflow

We follow a structured workflow to maintain code quality and ensure all changes are properly reviewed. Here's how to contribute effectively:

When starting work on a new feature or fix, create a dedicated branch from our main development branch. We use a standard naming convention where branches are named `pull/NUMBER`, with NUMBER being the related GitHub issue number:

```bash
git checkout -b pull/NUMBER
```

While working on your changes, keep these key guidelines in mind:

- Structure your commits using conventional commits format to maintain clear history
- Follow LaTeX best practices when modifying research documentation
- Add detailed comments explaining complex mathematical formulas
- Keep documentation in sync with code changes

Before submitting your work, verify everything works correctly:

- Use `trunk check` to ensure code quality standards are met
- Build the PDF with `latexmk` to verify document compilation
- Double-check all references and citations are properly linked

When you're ready to submit your contribution, push your changes to your fork and open a Pull Request. Make sure all CI checks pass before requesting review.

## Commit Messages

Your commit messages are an important form of documentation that help others understand the history and purpose of changes. Follow these guidelines to write clear and consistent commit messages:

Use the present tense ("Add feature" not "Added feature") and imperative mood ("Move cursor to..." not "Moves cursor to..."). Keep the first line under 72 characters, followed by a detailed description. Reference related issues and pull requests after the first line. Include [ci skip] in the commit title when only changing documentation.

When committing changes, consider prefixing your message with one of these emoji to indicate the type of change:

🎨 :art: Improve code format/structure<br />
🐎 :racehorse: Improve performance<br />
🚱 :non-potable_water: Fix memory leaks<br />
📝 :memo: Update documentation<br />
🐧 :penguin: Fix Linux-specific issue<br />
🍎 :apple: Fix macOS-specific issue<br />
🏁 :checkered_flag: Fix Windows-specific issue<br />
🐛 :bug: Fix a bug<br />
🔥 :fire: Remove code/files<br />
💚 :green_heart: Fix CI build<br />
✅ :white_check_mark: Add tests<br />
🔒 :lock: Security updates<br />
⬆️ :arrow_up: Upgrade dependencies<br />
⬇️ :arrow_down: Downgrade dependencies<br />
👕 :shirt: Fix linter warnings<br />

## Questions?

Open an issue or contact the maintainers.
