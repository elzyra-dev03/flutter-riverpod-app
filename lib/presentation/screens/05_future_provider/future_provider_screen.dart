import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        child: pokemonName.when(
            data: (data) => Text(data),
            error: ((error, stackTrace) => Text('$error')),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.skip_previous_outlined),
            onPressed: () => ref.read(pokemonIdProvider.notifier).prevPokemon(),
          ),
          const SizedBox(
            width: 12,
          ),
          FloatingActionButton(
            child: const Icon(Icons.skip_next_outlined),
            onPressed: () => ref.read(pokemonIdProvider.notifier).nextPokemon(),
          ),
        ],
      ),
    );
  }
}
