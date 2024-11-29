# Frequency-based Priority Round-Robin Scheduling Research

A research project investigating an improved Round-Robin scheduling algorithm with frequency-based priority mechanism for real-time systems.

## Abstract

This research proposes an enhanced Round-Robin scheduling algorithm that introduces a dynamic priority mechanism based on execution frequency. Rather than adjusting time quantum lengths, the approach controls task execution frequency in the scheduling queue to reflect priority differences. This method maintains the fairness characteristics of RR scheduling while providing better support for real-time priority requirements.

## Key Features

This scheduling algorithm introduces several innovative features that enhance traditional Round-Robin scheduling while maintaining its fundamental benefits:

At its core, the algorithm implements a frequency-based priority mechanism within the RR framework, allowing for dynamic task prioritization without compromising the basic scheduling structure. By maintaining constant time quantum lengths, the system ensures predictable context switching overhead and stable operation characteristics.

The key innovation lies in its dynamic priority support through execution frequency control - instead of modifying time slices, the algorithm adjusts how often tasks enter the scheduling queue. This approach achieves:

- Efficient O(1) scheduling complexity, ensuring scalability with increased task counts
- Fair resource allocation that balances priority requirements with basic scheduling fairness
- Predictable behavior through theoretical analysis and experimental validation

The design particularly excels in real-time environments where both deterministic scheduling and priority handling are critical requirements. Through extensive testing and validation, the algorithm demonstrates consistent performance across various workload scenarios while maintaining the simplicity that makes RR scheduling attractive in practice.

## Building

This project uses [XeLaTeX](https://tug.org/xetex/) (also known as XeTeX) for document compilation. The build process is configured through `.latexmkrc` for automated compilation.

### Prerequisites

Before building this research paper, you'll need several TeX-related tools installed on your system. The project uses XeLaTeX for its superior Unicode and CJK text support, which requires either a [TeX Live](https://www.tug.org/texlive/) or [MiKTeX](https://miktex.org/) distribution.

For automated builds and compilation, the project relies on [latexmk](https://www.cantab.net/users/johncollins/latexmk/index.html) - a Perl script that automates the LaTeX document generation process by determining the correct sequence and number of runs needed. Additionally, [BibTeX](https://www.bibtex.org/) is required to process the bibliography references from [references.bib](references.bib) into the final document format.

Make sure you have:

- A complete TeX distribution (TeX Live or MiKTeX) with XeLaTeX support
- The latexmk build utility configured in your environment
- BibTeX for processing bibliography references

These tools work together to generate the final PDF output with proper formatting, citations, and cross-references.

### Build Commands

The project uses `latexmk` to automate the LaTeX compilation process. This tool handles all the necessary compilation steps, including running XeLaTeX multiple times for cross-references and bibliography generation.

Common build commands:

```bash
# Generate PDF with XeLaTeX
latexmk -xelatex main.tex

# Clean auxiliary files
latexmk -c

# Force rebuild all
latexmk -xelatex -g main.tex

# Watch mode for development
latexmk -xelatex -pvc main.tex
```

The watch mode (`-pvc`) is particularly useful during development as it automatically recompiles the document whenever changes are detected.

### Output Files

The build process generates several files that serve different purposes in the document compilation:

- `main.pdf` is the final output document containing your research paper with all formatting, figures, and references properly rendered
- `main.bbl` contains the processed bibliography entries from your BibTeX database, formatted according to the GB/T 7714 citation style
- `main.aux` stores cross-referencing information, keeping track of section numbers, figure labels, and citation keys

These files work together to produce a properly formatted academic document with working cross-references and citations.

## Development

This research project uses modern development tools and workflows to maintain code quality and enable collaborative research. Here's how to get started and make the most of the available tools.

### Setup

Before you begin contributing, you'll need to set up your development environment. Run these commands in your terminal:

```bash
# Install dependencies
npm install

# Setup git hooks
npx husky install

# Configure git-secret (first time only)
git secret init
git secret tell your@email.com
```

### Development Tools and Workflow

Our development workflow integrates several key tools that work together to ensure code quality and maintain consistent standards:

Git-secret provides encryption for sensitive research data and configurations, protecting intellectual property while enabling collaboration. This works alongside Husky, which enforces quality checks through Git hooks before commits and pushes.

For version control and releases, we use release-it with conventional commits to maintain a clear history and automate versioning. The commit messages follow a standardized format that makes changes easy to track and understand.

Code quality is maintained through Trunk's comprehensive checking system, which runs automated linting and formatting on your code to ensure consistency across all contributions.

#### Tool Documentation

To learn more about specific tools, consult these resources:

- [Git-secret Documentation](https://sobolevn.me/git-secret/) - For managing sensitive files
- [Husky Guide](https://typicode.github.io/husky/) - For Git hooks setup
- [release-it Documentation](https://github.com/release-it/release-it) - For release management
- [Trunk Docs](https://docs.trunk.io/) - For code quality tools
- [Conventional Commits](https://www.conventionalcommits.org/) - For commit message formatting

#### Local Configuration

Key configuration files that control these tools:

- [.gitsecret](.gitsecret) - Manages encrypted files and keys
- [.trunk/configs](.trunk/configs) - Defines code quality rules and checks
- [.commitlintrc.json](.commitlintrc.json) - Sets commit message standards

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for detailed contribution guidelines.

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

![CC BY-NC-SA 4.0](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)

You are free to:

- **Share** — copy and redistribute the material in any medium or format
- **Adapt** — remix, transform, and build upon the material

Under the following terms:

- **Attribution** — You must give appropriate credit, provide a link to the license, and indicate if changes were made
- **NonCommercial** — You may not use the material for commercial purposes
- **ShareAlike** — If you remix, transform, or build upon the material, you must distribute your contributions under the same license

<p
  xmlns:cc="http://creativecommons.org/ns#"
  xmlns:dct="http://purl.org/dc/terms/"
>
  <a
    property="dct:title"
    rel="cc:attributionURL"
    href="https://github.com/zhang-jia-rong/rt-sched"
    >Frequency-based Priority Round-Robin Scheduling Research</a
  >
  by
  <a
    rel="cc:attributionURL dct:creator"
    property="cc:attributionName"
    href="https://github.com/zhang-jia-rong"
    >Zhang Jia Rong</a
  >
  is licensed under
  <a
    href="https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1"
    target="_blank"
    rel="license noopener noreferrer"
    style="display:inline-block;"
    >Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International<img
      style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"
      src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"
      alt="" /><img
      style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"
      src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"
      alt="" /><img
      style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"
      src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"
      alt="" /><img
      style="height:22px!important;margin-left:3px;vertical-align:text-bottom;"
      src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"
      alt=""
  /></a>
</p>

For full license terms, see:

- [LICENSE.txt](LICENSE.txt) in this repository
- [Creative Commons BY-NC-SA 4.0 License Legal Code](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode)

## Contact

For questions about the research, implementation details, or collaboration opportunities, please don't hesitate to reach out. I'm particularly interested in discussing real-time scheduling algorithms, embedded systems optimization, and industrial automation applications.

### Primary Contact

**Zhang Jia Rong**<br />
DMT Intelligent Equipment Technology Co., Ltd.<br />
Foshan, China<br />

You can reach me through:

- Email: zhang-jia-rong@outlook.com
- GitHub: [@zhang-jia-rong](https://github.com/zhang-jia-rong)

### Research Interests & Collaboration

I welcome discussions and potential collaborations in:

- Implementation experiences with frequency-based scheduling
- Real-time systems optimization techniques
- Industrial automation use cases
- Performance analysis and benchmarking
- Integration with existing RTOS platforms

Whether you're interested in implementing the algorithm, contributing to the research, or exploring potential applications in your field, I'm happy to engage in technical discussions and explore opportunities for collaboration.
