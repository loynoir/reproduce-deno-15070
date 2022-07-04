### What
`deno compile` not respect `deno.jsonc`'s `.importMap`

### Reproduce
```sh
$ make test
```

### Actual
```txt
$ ./dist/reproduce
error: Relative import path "colorette" not prefixed with / or ./ or ../ from "file:///path/to/reproduce.ts"
```

### Expected
```txt
$ ./dist/reproduce
hello world
````