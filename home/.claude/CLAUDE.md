## Task Management
- Before starting any task, I must assess my understanding level (1-5 scale).  If understanding is less than 5/5, I will State my current understanding level, and Ask 3 clarifying questions to reach full comprehension
- Use TodoWrite tool for complex multi-step tasks
- Mark tasks as in_progress before starting
- Complete tasks only when fully finished and tested
- Break down large tasks into smaller, manageable steps
- Apply Clean Code principles to task decomposition

## Clean Code Principles

### Function Design
- **Small Functions**: Functions should be very short, ideally under 10 lines
- **Single Responsibility**: Functions should do one thing, do it well, and do it only
- **Same Level of Abstraction**: All statements in a function should be at the same level of abstraction
- **Stepdown Rule**: Code should read like a narrative, with functions calling others at the next level down

### Function Structure
- **Minimize Arguments**: Prefer 0-1 arguments, 2 is acceptable, avoid 3+
- **No Side Effects**: Functions should not have hidden behaviors that change external state
- **Command-Query Separation**: Functions should either do something OR answer something, not both
- **Extract When Unclear**: If the "what" isn't immediately obvious, extract it into a well-named function

### Naming Conventions
- **Intention-Revealing Names**: Names should clearly express intent
- **Use Verbs for Methods**: Action words for functions that do things
- **Descriptive Over Brief**: Longer, clear names are better than short, cryptic ones
- **Avoid Mental Mapping**: Don't make readers translate names to understand purpose

### Code Organization
- **Pure Functions When Possible**: Prefer functions without side effects
- **Clear Abstractions**: Don't mix high-level policy with low-level implementation details
- **Consistent Patterns**: Follow established patterns within the codebase

## Pragmatic Programming Principles

- **Keep it simple**:  Simple code has fewer bugs than complicated code.
- **Make it Easier to Change**: After completing each change, ask if this code is **easier** to change than it was before.  If not, continue working.
- **Don't repeat yourself**: Abstract and encapsulate duplicate code to keep the codebase DRY.  
- Follow the Single Responsibility Principle for objects.  
- **Only create what is needed right now**:  Do not write code for future use.  Only write code that is actually used by a call path, right now.  Remove code that does not have a current use.
- **Write Shy Code**: modules shouldn't reveal anything unnecessary to other modules.  And don’t rely on other modules’ implementation details.

## Error handling
- **Avoid defensive programming**:  Raising errors to callers when possible.
- **Crash Early**: It is better to crash the application than to leave it in an invalid state.

## Workflow
- moving and renaming files should preserve the git history.

## Resources and Tool usage
### MCP Context7 Integration
- **🔧 MANDATORY**: Always use MCP Context7 for API and framework knowledge
- **Query First**: Verify API patterns and framework best practices through Context7
- **Integration Knowledge**: Use Context7 for troubleshooting integration issues
- **Documentation Reference**: Leverage Context7 for current documentation and examples

### Development Script Discovery
- **📁 MANDATORY**: Check for usable tools within `bin` or `scripts` directory for performing operations.
* Create new tools for frequent use in the assocated `bin` or `script` directory.  This helps both humans and Agents to have scripts for common workflow operations.  Follow the Unix philosophy of creating these tools.  Each one should be small, specific, and do one thing really well.
* **Script Utilization**: Ask user about non-build scripts found in project
* **Existing Tool Usage**: Use existing scripts instead of recreating functionality
* **Documentation**: Document script usage in development guides


## Debugging
* **Understand the error** - Read the error messages carefully.  Do **not** make any code changes until you deeply understand the root cause.
* **Don't assume it, prove it**:  Do not make assumptions of how something is working.  Prove it via documentation, or a test runner that reproduces the specific issue.
* **Fix root causes, not symptoms** 
* **Fix the design** - Often errors indicate flawed type design, and may need refactoring to underlaying architecture.

## Object oriented principles
* **Prefer composition over inheritance** - Use interfaces and unions over complex class hierarchies

## Testing 

### Make it Testable
- Use Inversion of Control to setup objects and methods for testability instead of looking up state within a method call.

### Test-Driven Development (TDD) Standards
- **🧪 MANDATORY**: All code changes MUST follow Red-Green-Refactor TDD cycle
- **Tests First**: Write failing tests before any implementation code
- **No Code Without Tests**: Never write implementation code without corresponding tests
- **Test Quality**: Tests must be clean, focused, and well-named following Clean Code principles

### Framework Detection and Usage
- Identify test framework from README or codebase structure
- Run appropriate test commands (npm test, pytest, etc.)
- Ensure all tests pass before marking tasks complete
- Create comprehensive test plans for new features

## Code Quality Standards
- No Claude Code attribution in commit messages (user preference)
- Follow existing project conventions and patterns
- Run linting and type checking before commits
- Ensure all tests pass before committing
- Refactor mercilessly to maintain Clean Code principles
- Practice Pragmatic Programming Principles
- Apply TypeScript Development Strategy throughout implementation

## Development Practices
- Use existing libraries and frameworks found in the codebase
- Follow established naming conventions
- Maintain security best practices
- Never commit secrets or keys
- Apply Clean Code principles during implementation and refactoring


## Project Structure Best Practices
- **Modular Architecture**: Organize code into logical modules with clear boundaries
- **Dependency Direction**: Dependencies should point inward toward business logic
- **Interface Segregation**: Create small, focused interfaces rather than large ones
- **Configuration Management**: Keep configuration separate from business logic
- **Error Handling**: Use consistent error handling patterns throughout the codebase

## Documentation

### Code comments and documentation
- Don't repeat yourself.  Working code, that follows Clean Code Principles, is the best form of documentation.  
- Code comments should be used sparingly.  Class level documentation describing the object's intended purpose is high value.  Method level documentation can be valuable when it is not a boilerplate method.  Keep other method level documentation minimal.

### Directory Structure
- the `docs` directory of the project has important information and context that should be loaded when performing relevant operations
Projects MUST organize documentation using this structure:
- `docs/features/` - feature requirements and specifications.

### Naming Conventions
- Use kebab-case: `user-authentication-guide.md`
- Prefix by category: `api-authentication.md`, `arch-database-design.md`

### Content Requirements
- Start with clear purpose and audience statement
- Include practical examples and code snippets
- Maintain working links and references
- Update modification date on significant changes
- Include "Related Documents" section for navigation
