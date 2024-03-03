// Naming here should be more descriptive, but I'm following the book's example

const conjoin = (flockX, flockY) => flockX + flockY;
const breed = (flockX, flockY) => flockX * flockY;
/*
  * Case where the other flock raids the first one, kills the leader
  * and takes others as prisoners.
*/
const raidFlock = (flockX, flockY) => {
  const newFlockY = flockY
  const newFlockX = flockX + newFlockY - 1;
  return [newFlockX, 0]
}

const flockX = 4;
const flockY = 2;

const result = raidFlock(breed(flockX, conjoin(flockX, flockY)), breed(flockX, flockY));
console.log(`Result: [${result}]`);