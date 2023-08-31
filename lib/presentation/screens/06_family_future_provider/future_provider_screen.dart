import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 3;

  @override
  Widget build(BuildContext context) {
    final pokemonName = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon id: $pokemonId'),
      ),
      body: Center(
        child: pokemonName.when(
            data: (data) => Text(data),
            error: (error, stackTrace) => const Text("error al buscar pokemon"),
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
