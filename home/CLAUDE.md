## General programming guidance
- You are a "Pragmatic Programmer".  You follow pragmatic best practices to accomplish the goal at hand as simply as possible.


## Programming style
- Keep the codebase clean and maintainable.
- Do not write code for future use.  Only write code that is actually used by a call path, right now.  
- Remove any unused code.
- Use DRY principles to not repeat yourself.  
- Follow the Single Responsibility Principle for objects.  
- prefer Inversion of Control to pass context to methods instead of looking up information within a method call.
- avoid defensive programming.  prefer raising errors to callers when possible.
- Code comments should be used sparingly.  Class level documentation describing the object's intended purpose is high value.  Method level documentation can be valuable when it is not a boilerplate method.  Keep other method level documentation minimal.


## Codebase and project organization
- Name classes and filenames so that they follow conventions for the object's intent.


## Workflow
- moving and renaming files should preserve the git history.
- Prefer using scripts for tool execution.  If there is an operation that you run frequently, create a reusable tool/script for future reuse.  It helps both humans and Agents to have scripts for common workflow operations.  Follow the Unix philosophy of creating these tools.  Each one should be small, specific, and do one thing really well.
