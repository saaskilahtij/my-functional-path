# Takeaways

- An internal state, like in OOP, can be anarchy in the I.T, or wild animal arithmetic! It is hard to keep track.
- Keep the function naming precise. Not by the objects, but by the operations.
- Function for raiding flocks, should be modularized better - keeping it to keep track of the progress.
- Using mathematical properties for cleaning code!
- Use pen and paper.

The operations I wrote on the example programs can be expressed also in mathematical terms. For example the JS code:
```js
const result = raidFlock(breed(flockX, conjoin(flockX, flockY)), breed(flockX, flockY));
```

Here we can state that:
```math
breed(flockX, conjoin(flockX, flockY)) => x(x + y)
```
And:
```math
breed(flockX, flockY) => xy
```
Only that the raidFlock is more difficult function to model as a mathematical operation. This underlines the modularization in functional programming.
Nevertheless, when modeling the function in mathematical terms, we get:
```math
f(x, y) = [(x + y - 1), 0]
```
When combined:
```math
f(x, y) = [(x(x + y) - 1), 0]
```
So:
```
breed(4, conjoin(4, 2)) => f(4,2) = 4(4 + 2) = 24
and
breed(4, 2) => f(4,2) = 4 * 2 = 8
finally
TODO: SOLVE THIS!
```