# Modern tmux Configuration

[Português (Brasil)](./README.pt-BR.md)

A high-performance, aesthetically pleasing `tmux` configuration designed for real-time system monitoring and maximum productivity.

## Key Features

- **Dynamic Status Bar:** Real-time monitoring of:
  - **Memory Usage:** Shows used vs total RAM.
  - **CPU Utilization:** Live percentage calculated via `vmstat`.
  - **Thermal Monitoring:** Core temperature (via `/sys/class/thermal`).
  - **Time & Hostname:** Cleanly integrated into the status-line.
- **Custom Visuals:**
  - Modern Powerline-style separators (``, ``).
  - Optimized color palette for high-contrast readability.
  - Custom status-right layout with segmented background colors.
- **Utility Scripts:**
  - `right.sh`: A 256-color palette tester to verify your terminal's color support.

## Project Structure

- `tmux.conf`: The core configuration file for `tmux`.
- `right.sh`: Helper script to display terminal color capabilities.
- `gemini.md`: Project's Vibe Coding Protocol and session logging rules.

## Installation

### Prerequisites

- `tmux` (v3.0 or higher recommended)
- `bash` (for utility scripts)
- Powerline-compatible fonts (e.g., [Nerd Fonts](https://www.nerdfonts.com/))
- Standard Linux tools: `awk`, `free`, `vmstat`, `cat`

### Setup

1. Backup your existing configuration (optional):
   ```bash
   mv ~/.tmux.conf ~/.tmux.conf.bak
   ```

2. Clone and link the configuration:
   ```bash
   git clone https://github.com/harleysad/tmux.git ~/src/tmux
   ln -s ~/src/tmux/tmux.conf ~/.tmux.conf
   ```

3. Reload `tmux`:
   - If already inside `tmux`: `prefix + :source-file ~/.tmux.conf`
   - From terminal: `tmux source-file ~/.tmux.conf`

## Usage

### Color Test
To ensure your terminal supports the 256-color palette used by this theme:
```bash
./right.sh
```

### Configuration Details
The status bar is divided into several modules:
- **Left:** Hostname and Session name.
- **Right:** Memory Info $\rightarrow$ CPU % $\rightarrow$ Temp $\rightarrow$ Time $\rightarrow$ Machine Name.

## License
MIT
