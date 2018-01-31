# Thraxis vs. Madison's

A performance review of two common methods used to codebreak the Core Business Unit mini-game offered in The Sims Online/FreeSO.

Refer to "Thraxis optimized by Madison" and "Madison's CBU Chart" which can be found through the following links:

- [Thraxis optimized by Madison](https://www.dropbox.com/s/afk24ze29wdfolv/cbuthraxisopt.gif?dl=0)

- [Madison's CBU Chart](https://www.dropbox.com/s/ds29xb1r7n9piyy/cbuchart.gif?dl=0)

Go to the bottom of this document for the [TL;DR](#tldr).

## Breaking it down

A method's speed is determined by its chances of using a greater or smaller number of steps to arrive at the correct code. The following is a breakdown of the number of steps involved in each method and the method's chances of using that number of steps.

### Chances after `AAA -> 0 -> BBB -> 1-2` / `AAA -> 0 -> BBB -> 1-2`

#### Thraxis:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 1 step     |   33.33% |                     33.33 |
| 2 steps    |   33.33% |                     66.66 |
| 3 steps    |   33.33% |                     99.99 |

Average number of steps for correct outcome: 2.00

#### Madison's:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 2 steps    |     100% |                       200 |

Average number of steps for correct outcome: 2.00

Speed difference: 0%

### Chances after `AAA -> 1 -> BBB` / `AAA -> 1 -> ABC`

#### Thraxis:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 1 step     |   24.99% |                     24.99 |
| 2 steps    |   33.33% |                     66.66 |
| 3 steps    |   33.33% |                     99.99 |
| 4 steps    |    8.33% |                     33.33 |

Average number of steps for correct outcome: 2.25

#### Madison's:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 1 step     |   27.27% |                     27.27 |
| 2 steps    |   63.64% |                    127.27 |
| 3 steps    |    9.09% |                     27.27 |

Average number of steps for correct outcome: 1.82

Speed difference: 19.19%

### Chances after `AAA -> 2 -> AAB` / `AAA -> 2 -> ABC`

#### Thraxis:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 1 step     |      40% |                        40 |
| 2 steps    |      40% |                        80 |
| 3 steps    |      20% |                        60 |

Average number of steps for correct outcome: 1.80

#### Madison's:

| # of steps | % chance | avg. steps for 100 rounds |
|------------|---------:|--------------------------:|
| 1 step     |      50% |                        50 |
| 2 steps    |      50% |                       100 |

Average number of steps for correct outcome: 1.50

Speed difference: 16.67%

### Conclusion

These calculations would make Madison's about

0% faster 31% of the time,

19.19% faster 46% of the time, and

16.67% faster 23% of the time,

for a total speed increase of about 12.70% over Thraxis after the first two steps.

## The whole picture

We can also account for the first two steps in overall speed. This can give us a better picture of just how much faster or slower one method is over another.

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

---

Thanks for reading, and play nice.

This document was written by notonetotalk.

Discord: notonetotalk#4849

FreeSO sim names: Nell, Ishmael, Eshel

You can download this document as a [markdown text file](https://raw.githubusercontent.com/notonetotalk/thraxisvsmadisons/master/thraxisvsmadisons.md).
