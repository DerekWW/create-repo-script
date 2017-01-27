function square (arg1) {
  if (typeof arg1 !== 'number') throw new Error('arg1 is not a number')

  return arg1 * arg1
}

module.exports = { square }
