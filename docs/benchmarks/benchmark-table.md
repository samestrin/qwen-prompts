# Hybrid vs Single-Shot Performance Benchmark Tables

Complete benchmark data tables demonstrating hybrid prompt chaining advantages across multiple repositories and task types. Benchmarking completed with _[v1.3.0](../../CHANGELOG.md#130---2025-08-25)_.

> **For detailed analysis, methodology, insights, and recommendations, see [Comprehensive Benchmark Analysis](comprehensive-benchmarks.md)**

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



## Key Findings

### Performance Advantages
1. **Consistent Time Savings**: Hybrid approach shows 19-72% time reduction across analysis tasks
2. **Token Efficiency**: 36-83% reduction in token consumption for analysis
3. **Universal Success**: 100% success rate (10/10 analysis cases favor hybrid)
4. **Scalability**: Larger repositories show greater hybrid advantages

### Quality Considerations
- **Analysis Tasks**: Hybrid maintains equivalent quality with better performance
- **Creation Tasks**: Hybrid provides superior quality despite performance trade-offs
- **Cache Efficiency**: Hybrid approach achieves better cache utilization

### Repository Size Impact
- **Small Projects** (< 1K LOC): Moderate hybrid advantages
- **Medium Projects** (1K-10K LOC): Significant hybrid advantages
- **Large Projects** (> 100K LOC): Substantial hybrid advantages

## Metric Reliability

### High Reliability
- **Token Usage**: Precise measurement, directly comparable
- **Cache Efficiency**: Accurate percentage calculations
- **Quality Scores**: Expert evaluation with defined criteria

### Moderate Reliability
- **Wall Time**: Subject to system performance variability
- **Network Conditions**: Can affect timing measurements
- **Concurrent Usage**: May impact individual test runs

### Interpretation Guidelines
- Focus on **token usage** and **cache efficiency** for performance comparisons
- Use **wall time** for general trend analysis
- Consider **quality scores** for task-specific recommendations



## Key Insights

### When to Use Hybrid
- **Analysis Tasks**: Always prefer hybrid for security and code analysis
- **Large Codebases**: Essential for repositories > 10K LOC
- **Resource Constraints**: When token efficiency is important
- **Production Environments**: For consistent, reliable performance

### When to Consider Single-Shot
- **Creation Tasks**: For speed-critical content generation
- **Simple Codebases**: Small projects where setup overhead matters
- **Exploratory Analysis**: When comprehensive context is needed immediately
- **One-off Tasks**: When hybrid setup time isn't justified

### Performance Expectations
- **Small Projects**: 20-40% improvement with hybrid
- **Medium Projects**: 40-60% improvement with hybrid
- **Large Projects**: 60-80% improvement with hybrid
- **Token Savings**: Consistently 35-85% reduction across all sizes

---

*Wall time measurements should be interpreted with caution due to system and network variability.

*Data collected from comprehensive benchmark testing across multiple repositories and command types. For detailed analysis, see [comprehensive-benchmarks.md](comprehensive-benchmarks.md)*