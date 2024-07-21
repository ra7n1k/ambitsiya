# AMBITSIYA
## Displaying Vehicle Information on a Monitor in Stormworks
---
# About It
*Ambitsiya* is a project to display vehicle information on a monitor in Stormworks.
It can display information of speed, gears, engine RPS, fuel left, battery left, control a winch, and more.

# How to Use
You can build this project using [Visual Studio Code](https://code.visualstudio.com/download) with its [extension](https://marketplace.visualstudio.com/items?itemName=NameousChangey.lifeboatapi) or download from [releases](https://github.com/ra7n1k/ambitsiya/releases).
And you can use the codes in your game to refer to below:

## `CarmsMain.lua`
This is the main system for cars. The following table is the list of I/O.
| In/Out | Type | Number | Use | Name in Code |
| - | - | - | - | - |
| In | Bool | 1 | Is screen touched | `touched` |
| In | Bool | 2 | State of parking brake | `parking` |
| In | Num | 1 | Touched point of X | `inputX` |
| In | Num | 2 | Touched point of Y | `inputY` |
| In | Num | 3 | Speed (m/s) | `speed` |
| In | Num | 4 | Gear (R/N/D) | `gear` |
| In | Num | 5 | Engine RPS | `rps` |
| In | Num | 6 | Fuel Left | `fuel` |
| In | Num | 7 | Battery Left | `battery` |
| Out | Bool | 1 | Winch Up | `winchUp` |
| Out | Bool | 2 | Winch Down | `winchDown` |

## `Start.lua`
This is an image of *Eskadron Group* (our fictitious company) logo.

## `Keyboard.lua`
This is a keyboard input system for your project. There is a QWERTY array keyboard and outputs with number. The following table is the list of I/O.
| In/Out | Type | Number | Use | Name in Code |
| - | - | - | - | - |
| In | Composite | 1 | Is screen touched | `touched` |
| In | Num | 1, 3 | Touched points of X | `inputW`, `inputX` |
| In | Num | 2, 4 | Touched points of Y | `inputH`, `inputY` |
| Out | Num | 1 | Value of key | `signal` |

### `KbdToText.lua`
This is an example code to display the input text on a monitor.

## To Build
Press [F6] to simulate the microcontroller, and press [F7] to build the project.
