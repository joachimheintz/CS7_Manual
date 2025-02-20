<!--
id:lessthan
category:Instrument Control:Conditional Values
-->
# &lt;
Determines if one value is less than another.

## Syntax
``` csound-orc
(a <  b ? v1 : v2)
```

where _a_, _b_, _v1_ and _v2_ may be expressions, but _a_, _b_ not audio-rate.

### Performance

In the above conditional, _a_ and _b_ are first compared. If the indicated relation is true (_a_ less than _b_), then the conditional expression has the value of _v1_; if the relation is false, the expression has the value of _v2_.

NB.: If _v1_ or _v2_ are expressions, these will be evaluated before the conditional is determined.

In terms of binding strength, all conditional operators (i.e. the relational operators (_&lt;_, etc.), and _?_, and _:_ ) are weaker than the arithmetic and logical operators (_+_, _-_, _*_, _/_, _&amp;&amp;_ and _||_).

These are _operators_ not _opcodes_. Therefore, they can be used within orchestra statements, but do not form complete statements themselves.

## Examples

Here is an example of the &lt; operator. It uses the file [lessthan.csd](../../examples/lessthan.csd).

``` csound-csd title="Example of the &lt; operator." linenums="1"
--8<-- "examples/lessthan.csd"
```

Its output should include lines like this:

```
ipitch = 261.626
ipitch = 800.00
```

## See also

[Conditional Values](../../control/conditional)
