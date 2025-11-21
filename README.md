# GameSphere 🎮

A collection of interactive arcade games built with HTML5, Canvas, and Three.js.

## Games Included

### 1. **Clicker Blitz** 🖱️
Fast-paced clicking game. Click as fast as you can to increase your score. Features difficulty settings affecting click requirements.

### 2. **Turbo Rivals** 🏎️
Survival race game where the player car is always moving forward. Control the car with left/right turns and jump mechanics (spacebar). Get out of the circle to lose.

### 3. **Breakout** 🎾
Classic brick-breaking game. Move your paddle and hit the ball to break all bricks. Features multiple difficulty levels.

### 4. **Flappy Pipes** 🐦
Dodge flying pipes in this endless flying game. Click to flap and navigate through the obstacles.

### 5. **Asteroid Blast** 💥
Shoot asteroids in space. Destroy incoming asteroids before they hit you. Higher difficulty spawns more asteroids faster.

### 6. **Dodge Master** 🛡️
Avoid falling enemies while collecting power-ups. Move around the screen to survive.

### 7. **Bouncing Ball** ⚽
Catch bouncing balls in your paddle. Speed increases with difficulty.

### 8. **Circuit Racer** 🏁 (3D Racing)
Full 3D racing game with realistic car models and a detailed circular racetrack. Features:
- **F1-style third-person camera** - Smooth camera following behind the car
- **Lap timing system** - Track your current lap time and personal best
- **Advanced car models** - Detailed cars with windshields, bumpers, and spoilers
- **Realistic racetrack** - Professional circuit with:
  - Dark asphalt racing surface
  - Red barrier walls (inner and outer)
  - Yellow lane markings
  - White/black checkered start/finish line
  - Green pit lane markers
- **Wall collision detection** - Can't drive through barriers
- **Speed penalty system** - Lose 50% speed when hitting walls
- **AI opponents** - 2 computer-controlled race cars
- **On-screen HUD** - Live lap counter and timing display

## How to Play

1. Open `index.html` in a web browser
2. Click on any game from the lobby to start
3. Use difficulty settings to adjust challenge level
4. Return to lobby by pressing the back button

## Controls

- **Arrow Keys/WASD**: Movement (varies by game)
- **Spacebar**: Jump/Flap/Action
- **Mouse**: Click for interaction-based games
- **Difficulty Selector**: Easy, Medium, Hard

## Technical Stack

- **HTML5 Canvas** - 2D game rendering
- **Three.js** - 3D graphics (Circuit Racer)
- **Vanilla JavaScript** - Game logic and physics
- **CSS3** - Styling and animations

## Features

- Responsive game lobby with difficulty settings
- Real-time scoring system
- High score tracking
- Smooth camera controls (3D games)
- Physics simulation (gravity, collision, friction)
- Difficulty multiplier system affecting:
  - Game speed
  - Spawn rates
  - Object sizes
  - Health/Lives

## Circuit Racer Specifications

### Track Dimensions
- **Radius**: 150 units
- **Width**: 28 units
- **Circumference**: ~942 units
- **Barriers**:
  - Inner wall at 136 units
  - Outer wall at 164 units

### Car Specifications
- **Body**: Detailed multi-part construction
  - Engine compartment: 3.5 × 2.5 × 3 units
  - Cabin: 3.2 × 2.3 × 3.5 units
  - Windshield: Blue glass (semi-transparent)
  - Bumpers: Front and rear
  - Spoiler: Aerodynamic roof element
- **Wheels**: 4 wheels with chrome rims
- **Collision Radius**: 2.5 units
- **Speed Penalty**: 50% on wall collision

### Game Mechanics
- **Max Speed**: 3 units/frame
- **Acceleration**: 0.1 units/frame
- **Drag**: 0.95x per frame
- **Collision Detection**: Circular boundary system
- **Lap Detection**: Cross start/finish line to complete lap
- **Scoring**: Based on lap time (lower = better)

## Future Enhancements

- Multiplayer support
- Leaderboard system
- Additional game modes
- Mobile touch controls
- Sound effects and music
- Particle effects
- Advanced graphics (shadows, reflections)

## Installation & Running

```bash
# Navigate to gamesphere directory
cd gamesphere

# Serve locally (Python 3)
python3 -m http.server 8080

# Open browser to http://localhost:8080
```

## Author

Created with Claude Code & Claude Agent SDK

---

**Enjoy GameSphere!** 🎮✨
