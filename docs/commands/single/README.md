# Single-Shot Commands

Benchmarking and comparison tools that provide single-shot analysis capabilities for evaluating the effectiveness of hybrid prompt chaining versus direct analysis approaches. These commands help assess performance and quality differences across analysis methodologies.

## Commands Overview

### Single Analysis Commands
Single-shot versions of analysis commands for benchmarking against multi-shot hybrid versions, enabling performance and quality comparisons.

### [analyze/security](analyze/security.md) - Single-Shot Security Analysis
Performs comprehensive security analysis using only direct qwen analysis, without Gemini CLI integration, for benchmarking against the hybrid multi-shot version.

**Common Use Cases:**
- Performance benchmarking against hybrid analysis
- Direct security assessment without external tool integration
- Baseline security analysis for comparison studies
- Simplified security review workflows

### [code/analysis](code/analysis.md) - Single-Shot Code Analysis
Performs comprehensive codebase analysis using only qwen capabilities, providing baseline analysis for comparison with multi-tool hybrid approaches.

**Common Use Cases:**
- Code analysis performance benchmarking
- Direct codebase assessment without tool integration
- Baseline analysis quality comparison
- Simplified code review workflows

## Benchmarking Workflows

### Security Analysis Comparison
```
qwen
```

```qwen
# 1. Run single-shot security analysis
> /single:analyze:security

# 2. Save single-shot results
> /file:save @single-shot-security-analysis.md

# 3. Run hybrid multi-shot analysis for comparison
> /analyze:security

# 4. Save hybrid results
> /file:save @hybrid-security-analysis.md

# 5. Compare results and methodologies
> /compare:files Compare @single-shot-security-analysis.md @hybrid-security-analysis.md, focusing on depth, accuracy, and completeness
```

### Code Analysis Benchmarking
```
qwen
```

```qwen
# 1. Run single-shot code analysis
> /single:code:analysis

# 2. Save single-shot results
> /file:save @single-shot-code-analysis.md

# 3. Run hybrid multi-shot analysis
> /code:analysis

# 4. Save hybrid results
> /file:save @hybrid-code-analysis.md

# 5. Analyze methodology differences
> /compare:files Compare @single-shot-code-analysis.md @hybrid-code-analysis.md, analyzing analysis depth and insight quality
```

### Performance Evaluation
```
qwen
```

```qwen
# 1. Time single-shot analysis execution
> /single:analyze:security

# 2. Record execution metrics and save results
> /file:save @single-shot-performance-metrics.md

# 3. Time hybrid analysis execution
> /analyze:security

# 4. Record hybrid execution metrics
> /file:save @hybrid-performance-metrics.md

# 5. Create performance comparison report
> /file:save @analysis-performance-comparison.md
```

### Quality Assessment Study
```
qwen
```

```qwen
# 1. Run single-shot analysis on test codebase
> /single:code:analysis

# 2. Document findings and limitations
> /file:save @single-shot-quality-assessment.md

# 3. Run comprehensive hybrid analysis
> /code:analysis
> /analyze:security
> /find:patterns Find code quality patterns and anti-patterns

# 4. Save comprehensive analysis
> /file:save @comprehensive-hybrid-analysis.md

# 5. Create quality comparison study
> /compare:files Compare analysis depth and accuracy between approaches
```

## Command Relationships

### Benchmarking Integration
- **Hybrid Comparison**: Compare with full [analyze](../analyze/) commands for methodology assessment
- **Code Quality**: Benchmark against [code](../code/) commands for analysis depth comparison
- **Pattern Detection**: Compare with [find](../find/) commands for pattern identification accuracy

### Performance Analysis
- **Execution Speed**: Measure performance differences between single and multi-shot approaches
- **Resource Usage**: Compare computational resource requirements
- **Output Quality**: Assess the comprehensiveness and accuracy of different methodologies

### Methodology Evaluation
- **Analysis Depth**: Compare the depth of insights between approaches
- **Tool Integration**: Evaluate the value of hybrid tool integration
- **Use Case Optimization**: Identify optimal approaches for different analysis scenarios

## Tips and Best Practices

### Benchmarking Strategy
- Use consistent test cases for fair comparison between methodologies
- Document environmental factors that might affect performance
- Run multiple iterations to account for variability
- Focus on both quantitative and qualitative assessment metrics

### Comparison Methodology
- Define clear criteria for evaluating analysis quality
- Consider different types of codebases for comprehensive benchmarking
- Document the specific strengths and weaknesses of each approach
- Create standardized evaluation frameworks for consistent assessment

### Use Case Selection
- Choose single-shot commands when simplicity and speed are priorities
- Use hybrid commands when comprehensive analysis depth is required
- Consider single-shot for baseline assessments and quick evaluations
- Apply hybrid approaches for critical security and architecture analysis

### Result Interpretation
- Consider the trade-offs between speed and comprehensiveness
- Evaluate the practical utility of different analysis depths
- Assess the learning curve and complexity of different approaches
- Document recommendations for optimal methodology selection

### Quality Metrics
- **Completeness**: How thoroughly does each approach cover the analysis scope
- **Accuracy**: How precise and reliable are the findings
- **Actionability**: How useful are the recommendations for development teams
- **Efficiency**: What is the time and resource cost for the analysis value provided

## Related Resources

- **[Analysis Commands](../analyze/)** - Full hybrid analysis commands for comparison
- **[Code Quality Commands](../code/)** - Comprehensive code analysis for benchmarking
- **[Comparison Commands](../compare/)** - Tools for comparing analysis results
- **[Strategy Commands](../strategy/)** - Strategic planning based on analysis insights

---

**Navigation**: [← Save Commands](../save/) • [Strategy Commands →](../strategy/)