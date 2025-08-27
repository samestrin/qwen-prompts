# Security Policy

## ⚠️ CRITICAL SECURITY WARNING

**ALWAYS REVIEW SLASH PROMPTS BEFORE INSTALLATION**

These prompts have **shell execution capabilities** and can run arbitrary commands on your system. Malicious prompts could potentially:

- Execute harmful shell commands
- Access sensitive files and directories
- Modify or delete system files
- Exfiltrate data from your system
- Install malware or backdoors

## Security Review Checklist

Before installing any slash prompt, **manually review each `.toml` file** for:

### Shell Command Execution
- [ ] Look for backtick commands: `` `command` ``
- [ ] Verify all shell commands are legitimate and safe
- [ ] Check for suspicious file operations (`rm`, `chmod`, `curl`, `wget`, etc.)
- [ ] Ensure no commands access sensitive directories (`/etc`, `/home`, `/root`)

### Gemini CLI Calls
- [ ] Review all `gemini -p` prompts for malicious instructions
- [ ] Verify prompts don't request sensitive information
- [ ] Check for attempts to bypass safety measures
- [ ] Ensure no prompts try to execute code without user consent

### File System Access
- [ ] Verify file paths are reasonable and expected
- [ ] Check for attempts to access system files
- [ ] Ensure no unauthorized directory traversal (`../../../`)
- [ ] Verify write operations are limited to project directories

### Network Operations
- [ ] Look for network requests (`curl`, `wget`, `nc`)
- [ ] Verify any URLs are legitimate and safe
- [ ] Check for data exfiltration attempts
- [ ] Ensure no unauthorized API calls

## Safe Installation Practices

### 1. Source Verification
- Only install prompts from trusted sources
- Verify the repository and author reputation
- Check for community reviews and feedback
- Look for official endorsements or certifications

### 2. Isolated Testing
- Test new prompts in isolated environments first
- Use virtual machines or containers for testing
- Never test on production systems
- Monitor system behavior during testing

### 3. Gradual Deployment
- Install prompts one at a time
- Test each prompt thoroughly before adding more
- Keep backups of your system before installation
- Document any changes made by prompts

### 4. Regular Audits
- Periodically review installed prompts
- Check for unauthorized modifications
- Update prompts from trusted sources only
- Remove unused or suspicious prompts

## Red Flags to Watch For

### Immediate Rejection Criteria
- Commands that require `sudo` or root privileges
- File operations outside project directories
- Network requests to unknown domains
- Obfuscated or encoded commands
- Prompts that disable security features
- Commands that modify system configurations

### Suspicious Patterns
```bash
# DANGEROUS - Never install prompts with these patterns:
`rm -rf /`                    # System deletion
`chmod 777 /`                # Permission changes
`curl http://malicious.com`   # Unknown network requests
`eval $(base64 -d ...)`       # Obfuscated execution
`sudo ...`                    # Privilege escalation
`/etc/passwd`                 # System file access
```

## Gemini CLI Security Considerations

### API Key Protection
- Never share prompts that could expose API keys
- Ensure prompts don't log sensitive information
- Use environment variables for credentials
- Regularly rotate API keys

### Context Window Risks
- Large context windows can include sensitive data
- Review what files are being analyzed
- Ensure no credentials are in analyzed files
- Be cautious with private repositories

### Model Behavior
- Understand your Gemini safety settings
- Know that prompts can influence model behavior
- Be aware of prompt injection techniques
- Monitor for unexpected model responses

## Verification Process for This Repository

All prompts in this repository have been:

- [ ] Manually reviewed for security issues
- [ ] Tested in isolated environments
- [ ] Verified to contain only legitimate operations
- [ ] Documented with clear usage instructions
- [ ] Limited to read-only operations where possible

### Shell Commands Used
This repository's prompts use these shell commands:
- `find` - File discovery (read-only)
- `sed` - Text processing (read-only)
- `grep` - Pattern matching (read-only)
- `sort` - Data sorting (read-only)
- `tail` - Output limiting (read-only)
- `tree` - Directory listing (read-only)

**No destructive or system-modifying commands are used.**

## Incident Response

### If You Suspect a Malicious Prompt
1. **Immediately stop** using the prompt
2. **Disconnect** from the internet if possible
3. **Review** system logs for suspicious activity
4. **Scan** your system for malware
5. **Report** the incident to the repository maintainer
6. **Change** any potentially compromised credentials

### Reporting Security Issues
To report security vulnerabilities:

- **Email**: [security contact needed]
- **Subject**: "SECURITY: Qwen-Prompts Vulnerability"
- **Include**: Detailed description and proof of concept
- **Response**: We aim to respond within 24 hours

## Security Updates

- Security patches will be released immediately
- Critical vulnerabilities will be disclosed responsibly
- Users will be notified through GitHub releases
- Affected prompts will be clearly marked

## Additional Resources

- [OWASP Command Injection Prevention](https://owasp.org/www-community/attacks/Command_Injection)
- [Shell Script Security Best Practices](https://github.com/anordal/shellharden/blob/master/how_to_do_things_safely_in_bash.md)
- [Qwen-Code Security Documentation](https://github.com/QwenLM/qwen-code/blob/main/SECURITY.md)

---

**Remember: Your security is your responsibility. When in doubt, don't install.**