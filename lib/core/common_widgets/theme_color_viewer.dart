import 'package:flutter/material.dart';

class ThemeColorViewer extends StatelessWidget {
  const ThemeColorViewer({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing the color scheme
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // Manually listing all color properties
    final Map<String, Color> colors = {
      'Primary': colorScheme.primary,
      'On Primary': colorScheme.onPrimary,
      'Primary Container': colorScheme.primaryContainer,
      'On Primary Container': colorScheme.onPrimaryContainer,
      'Secondary': colorScheme.secondary,
      'On Secondary': colorScheme.onSecondary,
      'Secondary Container': colorScheme.secondaryContainer,
      'On Secondary Container': colorScheme.onSecondaryContainer,
      'Tertiary': colorScheme.tertiary,
      'On Tertiary': colorScheme.onTertiary,
      'Tertiary Container': colorScheme.tertiaryContainer,
      'On Tertiary Container': colorScheme.onTertiaryContainer,
      'Error': colorScheme.error,
      'On Error': colorScheme.onError,
      'Error Container': colorScheme.errorContainer,
      'On Error Container': colorScheme.onErrorContainer,
      'Background': colorScheme.background,
      'On Background': colorScheme.onBackground,
      'Surface': colorScheme.surface,
      'On Surface': colorScheme.onSurface,
      'Surface Variant': colorScheme.surfaceVariant,
      'On Surface Variant': colorScheme.onSurfaceVariant,
      'Outline': colorScheme.outline,
      'Shadow': colorScheme.shadow,
      'Inverse Surface': colorScheme.inverseSurface,
      'On Inverse Surface': colorScheme.onInverseSurface,
      'Inverse Primary': colorScheme.inversePrimary,
      // Add any other colors from the ColorScheme that you want to display
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material 3 Theme Colors'),
      ),
      body: ListView(
        children: colors.entries.map((entry) {
          return ListTile(
            leading: Icon(Icons.palette, color: entry.value),
            title: Text(entry.key),
            trailing: Container(
              width: 20,
              height: 20,
              color: entry.value,
            ),
          );
        }).toList(),
      ),
    );
  }
}
