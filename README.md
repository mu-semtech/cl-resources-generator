# Resources generator

Generates `edi ember g mu-resource ...` calls from a domain.lisp file by introspecting the resulting model.

## Example usage

```
    dr run -v `pwd`/config/resources:/config resources-generator
```

The last line of output contains the generate calls.  Run it and enjoy the new interface.