# Hybrid vs Single-Shot Performance Benchmarks

Comprehensive analysis across 6 repositories demonstrating hybrid prompt chaining advantages.

## Summary

| Metric | Value | Description |
|--------|-------|-------------|
| **Average Time Reduction** | 19-72% | Faster execution for analysis tasks |
| **Token Efficiency** | 36-83% | Fewer tokens consumed for analysis |
| **Success Rate** | 91.7% | Hybrid advantages in 11/12 cases |
| **Repositories Tested** | 6 | Different sizes and complexity |

## Security Analysis Performance

| Repository | Approach | Wall Time | Token Usage | Cache Efficiency | Time Improvement | Token Reduction |
|------------|----------|-----------|-------------|------------------|------------------|----------------|
| advanced-console-log | **Hybrid** | **2m 2s** | **749K** | 90.1% | **46% faster** | **69% fewer** |
| advanced-console-log | Single-shot | 3m 45s | 2.46M | 88.4% | - | - |
| llm-file-processor | **Hybrid** | **1m 48s** | **892K** | 89.7% | **41% faster** | **64% fewer** |
| llm-file-processor | Single-shot | 3m 4s | 2.48M | 88.9% | - | - |
| scraper-python-ubuntu | **Hybrid** | **2m 15s** | **1.12M** | 88.8% | **38% faster** | **58% fewer** |
| scraper-python-ubuntu | Single-shot | 3m 38s | 2.67M | 87.2% | - | - |

## Code Analysis Performance

| Repository | Approach | Wall Time | Token Usage | Cache Efficiency | Time Improvement | Token Reduction |
|------------|----------|-----------|-------------|------------------|------------------|----------------|
| advanced-console-log | **Hybrid** | **1m 52s** | **684K** | 91.2% | **44% faster** | **72% fewer** |
| advanced-console-log | Single-shot | 3m 21s | 2.44M | 89.1% | - | - |
| llm-file-processor | **Hybrid** | **2m 8s** | **798K** | 90.5% | **36% faster** | **67% fewer** |
| llm-file-processor | Single-shot | 3m 20s | 2.42M | 88.7% | - | - |

## Methodology

**Models:** qwen3-coder-plus and gemini-1.5-pro-002

**Commands:** 
- `/analyze:security` vs `/analyze:security-single`
- `/code:analysis` vs `/code:analysis-single` 
- `/create:sprint` vs `/single:create:sprint`

**Repositories:** 6 different codebases (JavaScript, Python, commercial applications)

**Metrics:** Wall time, agent active time, token usage, cache efficiency

### Key Findings

- Hybrid approach shows advantages in 11 out of 12 test cases
- For analysis tasks: Time savings range from 19% to 72%, token efficiency 36% to 83%
- For sprint creation: Single-shot is faster but hybrid produces higher quality output
- Cache efficiency remains high (88-91%) for both approaches

---

*Data collected from comprehensive benchmark testing across multiple repositories and command types. For detailed analysis, see [comprehensive-benchmarks.md](comprehensive-benchmarks.md)*