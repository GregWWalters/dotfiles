# Sway Migration Notes

## Files Created
1. `config` - Main Sway configuration
2. `waybar-config.json` - Waybar configuration
3. `waybar-style.css` - Waybar styling

## Installation Locations
- Sway config: `~/.config/sway/config`
- Waybar config: `~/.config/waybar/config`
- Waybar style: `~/.config/waybar/style.css`

## Key Changes from i3

### Removed X11-specific items:
- `dex-autostart` (X11 autostart)
- `xss-lock` (replaced with swayidle + swaylock)
- `xsetroot` (background now set with Sway's output command)
- `nitrogen` (replaced with swaybg/output background)
- `picom` (Sway has built-in compositor)
- `xscreensaver` (replaced with swaylock)
- `i3status` (replaced with waybar)

### Updated/Replaced:
- `redshift` → `gammastep` (Wayland-compatible)
- `i3lock` → `swaylock`
- Idle/lock behavior now uses `swayidle`
- Background set with `output * bg` command
- Added XDG Desktop Portal initialization for screen sharing

### Important Notes:

1. **Output names**: The config uses `DP-2` and `HDMI-A-1` as guesses. 
   Check your actual output names with:
   ```
   swaymsg -t get_outputs
   ```
   Then update lines 126-145 in the config.

2. **Redshift/Gammastep**: If you're using redshift, install `gammastep` for Wayland:
   ```
   # Arch/Manjaro
   sudo pacman -S gammastep
   
   # Ubuntu/Debian
   sudo apt install gammastep
   ```

3. **Window rules**: Wayland apps use `app_id` instead of `class`. 
   Check app_id with:
   ```
   swaymsg -t get_tree
   ```
   
4. **Waybar**: Install waybar:
   ```
   # Arch/Manjaro
   sudo pacman -S waybar
   
   # Ubuntu/Debian
   sudo apt install waybar
   ```

5. **Swaylock**: Install swaylock and swayidle:
   ```
   # Arch/Manjaro
   sudo pacman -S swaylock swayidle
   
   # Ubuntu/Debian
   sudo apt install swaylock swayidle
   ```

6. **Wallpaper**: To use an actual wallpaper instead of solid color, change:
   ```
   output * bg #332A00 solid_color
   ```
   to:
   ```
   output * bg /path/to/your/wallpaper.jpg fill
   ```

7. **Floating modifier**: Changed from `floating_modifier $mod` to `floating_modifier $mod normal`

8. **Exit command**: Changed from `i3-msg exit` to `swaymsg exit`

## Testing the Config
Before replacing your current config:
1. Copy the files to their proper locations
2. Test with: `sway --validate`
3. If validation passes, log out and select Sway from your login manager

## Troubleshooting
- If waybar doesn't start, check the config with: `waybar --log-level debug`
- For application-specific issues, check app_id/class with `swaymsg -t get_tree`
- Some X11-only apps may not work properly - look for Wayland alternatives
