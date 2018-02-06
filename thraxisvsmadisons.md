# Thraxis vs. Madison's

A performance review of two common methods used to codebreak the Core Business Unit mini-game offered in The Sims Online/FreeSO.

Refer to "Thraxis optimized by Madison" and "Madison's CBU Chart" which can be found through the following links:

- [Thraxis optimized by Madison](https://www.dropbox.com/s/afk24ze29wdfolv/cbuthraxisopt.gif?dl=0)

- [Madison's CBU Chart](https://www.dropbox.com/s/ds29xb1r7n9piyy/cbuchart.gif?dl=0)

Go to the bottom of this document for the [TL;DR](#tldr).

## Breaking it down

A method's speed is determined by its chances of using a greater or smaller number of steps to arrive at the correct code. The following is a breakdown of the number of steps involved in each method and the method's chances of using that number of steps.

### Chances after `AAA -> 0`

#### Thraxis:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 2 steps    |    12.5% |                        25 |
| 3 steps    |    37.5% |                     112.5 |
| 4 steps    |      25% |                       100 |
| 5 steps    |      25% |                       125 |

Average number of steps for correct outcome: 3.625

#### Madison's:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 2 steps    |    12.5% |                        25 |
| 3 steps    |    12.5% |                      37.5 |
| 4 steps    |      75% |                       300 |

Average number of steps for correct outcome: 3.625

Speed difference: 0%

### Chances after `AAA -> 1`

#### Thraxis:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 3 steps    |      25% |                        75 |
| 4 steps    |   33.33% |                    133.33 |
| 5 steps    |   33.33% |                    166.67 |
| 6 steps    |    8.33% |                       500 |

Average number of steps for correct outcome: 4.25

#### Madison's:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 2 steps    |    8.33% |                     16.67 |
| 3 steps    |      25% |                        75 |
| 4 steps    |   58.33% |                    233.33 |
| 5 steps    |    8.33% |                     41.67 |

Average number of steps for correct outcome: 3.67

Speed difference: 13.73%

### Chances after `AAA -> 2`

#### Thraxis:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 2 steps    |   16.67% |                     33.33 |
| 3 steps    |   33.33% |                       100 |
| 4 steps    |   33.33% |                    133.33 |
| 5 steps    |   16.67% |                     83.33 |

Average number of steps for correct outcome: 3.5

#### Madison's:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 3 steps    |      50% |                       150 |
| 4 steps    |      50% |                       200 |

Average number of steps for correct outcome: 3.5

Speed difference: 0%

### Conclusion

These calculations would make Madison's about 0% faster 54% of the time, and 13.73% faster 46% of the time.

## The whole picture

Accounting for all steps at once can give us a better picture of just how much faster or slower one method is over another overall.

#### Thraxis:

| # of guesses | # of steps | % chance | avg. steps for 100 rounds |
|--------------|------------|---------:|--------------------------:|
| 1 total at   | 1 step     |    3.70% |                      3.70 |
| 2 total at   | 2 steps    |    7.41% |                     14.81 |
| 8 total at   | 3 steps    |   29.63% |                     88.89 |
| 8 total at   | 4 steps    |   29.63% |                    118.52 |
| 7 total at   | 5 steps    |   25.93% |                    129.63 |
| 1 total at   | 6 steps    |    3.70% |                     22.23 |

Average number of steps for correct outcome: 3.78

#### Madison's:

| # of guesses | # of steps | % chance | avg. steps for 100 rounds |
|--------------|------------|---------:|--------------------------:|
| 1 total at   | 1 step     |    3.70% |                      3.70 |
| 2 total at   | 2 steps    |    7.41% |                     14.81 |
| 7 total at   | 3 steps    |   25.93% |                     77.78 |
| 16 total at  | 4 steps    |   59.26% |                    237.04 |
| 1 total at   | 5 steps    |    3.70% |                     18.52 |

Average number of steps for correct outcome: 3.52

Speed difference: 6.86%

## TL;DR

- Average number of steps for correct outcome for Thraxis: 3.78

- Average number of steps for correct outcome for Madison's: 3.52

- Madison's is 6.86% faster overall compared to the Thraxis method.

## Try it out for yourself

If you'd like to see these numbers in action, you can run a simulation of the methods using [this web application](https://notonetotalk.github.io/thraxisvsmadisons/tvmsim). It runs through a user-specified number of rounds, generating random codes. The application tallies the amount of steps it takes for each method to arrive at the correct outcome, and calculates the averages. You can try simulating 10 rounds a few times, or maybe a 1,000. The web application's source code can be viewed [here](https://github.com/notonetotalk/thraxisvsmadisons/blob/master/tvmsim.dart).

## Credits

Thanks for reading, and play nice.

The web application and this document was written by notonetotalk.

Discord: notonetotalk#4849

FreeSO sim names: Nell, Ishmael, Eshel

Also check out the [CBU AutoLeader](https://git.io/CBUAL).

You can download this document as a [markdown text file](https://raw.githubusercontent.com/notonetotalk/thraxisvsmadisons/master/thraxisvsmadisons.md).
