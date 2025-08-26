# Documentation

This directory contains comprehensive documentation for the qwen-prompts project, including performance benchmarks, evaluation studies, sample outputs, and supporting assets.

## Directory Structure

### 📊 `/benchmarks/`
Performance analysis and comparison data between hybrid prompt chaining and single-shot approaches.

- **`comprehensive-benchmarks.md`** - Complete benchmark analysis across 6 repositories showing hybrid prompt chaining performance advantages (11/12 test cases with 19-72% time reduction and 36-83% token efficiency gains)
- **`benchmark-table.html`** - Interactive HTML visualization of performance comparison data

### 📋 `/evaluations/`
Qualitative assessments and expert evaluations of AI-generated outputs.

- **`sprint-plan-evaluation.md`** - Professional evaluation comparing hybrid vs single-shot sprint planning outputs, scored by an Agile Program Manager (52/60 vs 42/60, demonstrating superior actionability and delivery confidence)

### 🖼️ `/images/`
Visual assets and diagrams used in documentation and articles.

- **`performance-comparison-chart.png`** - Performance comparison visualization showing hybrid prompt chaining advantages across key metrics (execution time, token usage, success rate)

### 📝 `/sample-responses/`
Real-world examples of command outputs demonstrating practical applications.

#### `/sample-responses/create/`
- **`sprint.md`** - Example hybrid prompt chaining sprint plan output showing comprehensive project analysis, detailed task breakdown, and actionable implementation steps

#### `/sample-responses/single/create/`
- Contains single-shot command outputs for comparison with hybrid approaches

## Key Findings Summary

The documentation in this directory supports the core research findings:

- **Performance**: Hybrid prompt chaining achieves 19-72% faster execution through intelligent targeting
- **Efficiency**: 36-83% token reduction compared to brute-force single-prompt approaches  
- **Quality**: 90% vs 75% delivery confidence with more actionable, project-specific outputs
- **Consistency**: 91.7% success rate across 12 comparison points

## Usage

These documents serve multiple purposes:

1. **Research Validation** - Reproducible benchmark data supporting hybrid workflow claims
2. **Quality Assessment** - Expert evaluations demonstrating output superiority
3. **Implementation Examples** - Real command outputs showing practical applications
4. **Visual Communication** - Charts and diagrams for presentations and articles

## Contributing

When adding new documentation:

- Place benchmark data in `/benchmarks/`
- Add evaluation studies to `/evaluations/`
- Store visual assets in `/images/` (prefer SVG format when possible)
- Include sample outputs in appropriate `/sample-responses/` subdirectories
- Update this README when adding new categories or significant content

## Related Resources

- [Main Repository](https://github.com/samestrin/qwen-prompts) - Complete qwen-prompts collection
- [Commands](../commands/) - TOML configuration files for all available commands
- [Security Policy](../SECURITY.md) - Important security guidelines for shell-integrated workflows

For questions about the documentation or to report issues, please refer to the main repository's issue tracker.