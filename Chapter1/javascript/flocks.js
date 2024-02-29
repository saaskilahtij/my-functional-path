const conjoin = (flock_x, flock_y) => flock_x + flock_y;
const breed = (flock_x, flock_y) => flock_x * flock_y;
/*
  * Case where the other flock raids the first one, kills the leader
  * and takes others as prisoners.
*/
const raidFlock = (flock_x, flock_y) => {
  const newFlockY = Math.max(0, flock_y - 1);
  const newFlockX = flock_x + newFlockY;
  return [newFlockX, 0]
}

/*
  * Case where the first flock raids the other one, kills the leader
*/
const flock_a = 4;
const flock_b = 2;

const result = raidFlock(flock_a, flock_b);
console.logl(`Result: {$result}`);