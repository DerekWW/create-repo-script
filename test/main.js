const chai = require('chai')
const assert = chai.assert
const main = require('../src/main')

describe('main', () => {
  it('squares the entered number', () => {
    const actual = main.square(10)
    const expected = 100

    assert.equal(actual, expected)
  })

  it('throws an error if the first argument is not a number', () => {
    const actual = () => main.square('hello world')

    assert.throws(actual, Error)
  })
})
