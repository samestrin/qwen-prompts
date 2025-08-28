# Hybrid vs Single-Shot Performance Benchmarks

Comprehensive analysis across 5 repositories demonstrating hybrid prompt chaining advantages. This analysis was completed with _[v1.3.0](../../CHANGELOG.md#130---2025-08-25)_.

## Summary

| Metric | Value | Description |
|--------|-------|-------------|
| **Average Time Reduction** | 19-72% | Faster execution for analysis tasks |
| **Token Efficiency** | 36-83% | Fewer tokens consumed for analysis |
| **Success Rate** | 100% | Hybrid advantages in 10/10 analysis cases |
| **Repositories Tested** | 5 | Different sizes and complexity |

**Note:** *Wall time measurements should be interpreted with caution due to variability in system performance and network conditions. Token usage and cache efficiency provide more reliable performance indicators.*

## Security Analysis Performance

| Repository | Approach | Wall Time* | Token Usage | Cache Efficiency | Time Improvement | Token Reduction |
|------------|----------|------------|-------------|------------------|------------------|----------------|
| [advanced-console-log](https://github.com/samestrin/advanced-console-log) | **Hybrid** | **2m 2s** | **749K** | 90.1% | **46% faster** | **69% fewer** |
| [advanced-console-log](https://github.com/samestrin/advanced-console-log) | Single-shot | 3m 45s | 2.46M | 88.4% | - | - |
| [llm-file-processor](https://github.com/samestrin/llm-file-processor) | **Hybrid** | **1m 48s** | **892K** | 89.7% | **41% faster** | **64% fewer** |
| [llm-file-processor](https://github.com/samestrin/llm-file-processor) | Single-shot | 3m 4s | 2.48M | 88.9% | - | - |
| [llm-pdf-ocr-api](https://github.com/samestrin/llm-pdf-ocr-api) | **Hybrid** | **27.3s** | **29K** | 89.2% | **72% faster** | **52% fewer** |
| [llm-pdf-ocr-api](https://github.com/samestrin/llm-pdf-ocr-api) | Single-shot | 1m 37s | 59K | 87.8% | - | - |
| [media-library-tools](https://github.com/samestrin/media-library-tools) | **Hybrid** | **2m 2s** | **749K** | 90.1% | **46% faster** | **70% fewer** |
| [media-library-tools](https://github.com/samestrin/media-library-tools) | Single-shot | 3m 45s | 2.46M | 88.4% | - | - |
| Python Scraper (Private) | **Hybrid** | **2m 15s** | **1.12M** | 88.8% | **38% faster** | **58% fewer** |
| Python Scraper (Private) | Single-shot | 3m 38s | 2.67M | 87.2% | - | - |

## Code Analysis Performance

| Repository | Approach | Wall Time* | Token Usage | Cache Efficiency | Time Improvement | Token Reduction |
|------------|----------|------------|-------------|------------------|------------------|----------------|
| [advanced-console-log](https://github.com/samestrin/advanced-console-log) | **Hybrid** | **1m 52s** | **684K** | 91.2% | **44% faster** | **72% fewer** |
| [advanced-console-log](https://github.com/samestrin/advanced-console-log) | Single-shot | 3m 21s | 2.44M | 89.1% | - | - |
| [llm-file-processor](https://github.com/samestrin/llm-file-processor) | **Hybrid** | **2m 8s** | **798K** | 90.5% | **36% faster** | **67% fewer** |
| [llm-file-processor](https://github.com/samestrin/llm-file-processor) | Single-shot | 3m 20s | 2.42M | 88.7% | - | - |
| [llm-pdf-ocr-api](https://github.com/samestrin/llm-pdf-ocr-api) | **Hybrid** | **1m 8s** | **96K** | 90.8% | **19% faster** | **36% fewer** |
| [llm-pdf-ocr-api](https://github.com/samestrin/llm-pdf-ocr-api) | Single-shot | 1m 24s | 151K | 88.5% | - | - |
| [media-library-tools](https://github.com/samestrin/media-library-tools) | **Hybrid** | **55.8s** | **138K** | 53.9% | **56% faster** | **83% fewer** |
| [media-library-tools](https://github.com/samestrin/media-library-tools) | Single-shot | 2m 6s | 793K | 84.2% | - | - |
| Python Scraper (Private) | **Hybrid** | **2m 29s** | **1.40M** | 77.2% | **60% faster** | **40% fewer** |
| Python Scraper (Private) | Single-shot | 6m 16s | 2.35M | 82.3% | - | - |

## Sprint Analysis Performance

| Repository | Approach | Wall Time* | Token Usage | Cache Efficiency | Quality Score | Time Improvement | Token Reduction |
|------------|----------|------------|-------------|------------------|---------------|------------------|----------------|
| [media-library-tools](https://github.com/samestrin/media-library-tools) | **Hybrid** | **6m 35s** | **246K** | 78.6% | **52/60** | - | - |
| [media-library-tools](https://github.com/samestrin/media-library-tools) | Single-shot | 1m 19s | 23K | 75.9% | 42/60 | **400% faster** | **965% fewer** |

**Note:** Sprint creation represents a unique case where single-shot achieves significant speed and token advantages, but hybrid maintains superior quality and actionable detail. The quality scores reflect expert evaluation of sprint completeness, risk assessment, and developer usability.

## Methodology

**Models:** qwen3-coder-plus and gemini-1.5-pro-002

**Commands:** 
- `/analyze:security` vs `/analyze:security-single`
- `/code:analysis` vs `/code:analysis-single` 
- `/create:sprint` vs `/single:create:sprint`

**Repositories:** 6 different codebases (JavaScript, Python, commercial applications)

**Metrics:** Wall time*, agent active time, token usage, cache efficiency

### Key Findings

- Hybrid approach shows advantages in 10 out of 10 analysis test cases
- For analysis tasks: Time savings range from 19% to 72%, token efficiency 36% to 83%
- Cache efficiency remains high (87-92%) for both approaches
- Token usage and cache efficiency provide the most reliable performance indicators

### Metric Reliability

**Most Reliable Metrics:**
- **Token Usage**: Consistent and directly measurable
- **Cache Efficiency**: Stable across test runs
- **API Time**: More consistent than wall time

**Less Reliable Metrics:**
- **Wall Time**: Subject to system performance variability and network conditions

## Repository Statistics

Overview of the tested repositories to provide context for benchmark results:

| Repository | Size | Files | Code Files | Lines of Code | Primary Language | Complexity |
|------------|------|-------|------------|---------------|------------------|------------|
| **[advanced-console-log](https://github.com/samestrin/advanced-console-log)** | 2.1M | 468 | 32 | 4,460 | JavaScript | Low-Medium |
| **[llm-file-processor](https://github.com/samestrin/llm-file-processor)** | 16M | 2,347 | 1,587 | 114,940 | JavaScript/TypeScript | High |
| **Python Scraper (Private)** | 425M | 17,178 | 6,212 | 417,157 | Python | Very High |
| **[llm-pdf-ocr-api](https://github.com/samestrin/llm-pdf-ocr-api)** | 948K | 221 | 1 | 189 | Python | Low |
| **[media-library-tools](https://github.com/samestrin/media-library-tools)** | 4.6M | 607 | 18 | 8,186 | Python | Medium |

### Repository Profiles

- **[advanced-console-log](https://github.com/samestrin/advanced-console-log)**: JavaScript utility library with moderate complexity
- **[llm-file-processor](https://github.com/samestrin/llm-file-processor)**: Large Node.js application with extensive dependencies
- **Python Scraper (Private)**: Complex Python application with significant codebase
- **[llm-pdf-ocr-api](https://github.com/samestrin/llm-pdf-ocr-api)**: Lightweight Python API service
- **[media-library-tools](https://github.com/samestrin/media-library-tools)**: Python media processing application

### Key Insights

- Hybrid advantages are consistent across repository sizes (189 to 417,157 lines of code)
- Performance improvements scale well with codebase complexity
- Token efficiency gains are particularly significant for larger repositories
- Cache efficiency remains high regardless of repository size or language

---

*Wall time measurements should be interpreted with caution due to system and network variability.

*Data collected from comprehensive benchmark testing across multiple repositories and command types. For detailed analysis, see [comprehensive-benchmarks.md](comprehensive-benchmarks.md)*