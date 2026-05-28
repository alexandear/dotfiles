---
paths:
    - "**/*.go"
    - "go.mod"
---

- When scanning code, ignore testdata directory and any file or directory starting with and underscore (_)
- Interfaces should not have more than 4 methods
- Avoid using pointers as much as possible
- Use `go run` to check that the code compiles (*not* build and then run)
- Default to latest Go version when starting a project
