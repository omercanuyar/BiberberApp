import 'package:flutter/material.dart';
import '../../../data/exercise_sets.dart';
import '../../../models/kuafor_tipi.dart';
import 'kuafor_set_widget.dart';

class KuaforlerWidget extends StatefulWidget {
  @override
  _KuaforlerWidgetState createState() => _KuaforlerWidgetState();
}

class _KuaforlerWidgetState extends State<KuaforlerWidget> {
  KuaforTipleri selectedType = KuaforTipleri.erkek;

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 8),
              const Text(
                "Kuaför Listesi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 8),
              buildTipler(),
              const SizedBox(height: 8),
              buildKuaforler(),
            ],
          ),
        ),
      );

  Widget buildKuaforler() => GestureDetector(
        onHorizontalDragEnd: swipeFunction,
        child: Column(
          children: kuaforSets
              .where((element) => element.kuaforTipi == selectedType)
              .map(
                (ded) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: KuaforListesi(kuafor: ded)),
              )
              .toList(),
        ),
      );

  Widget buildTipler() => Row(
        children: KuaforTipleri.values.map(
          (type) {
            final name = getKuaforName(type);
            final fontWeight =
                selectedType == type ? FontWeight.bold : FontWeight.normal;

            return Expanded(
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => selectedType = type),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = KuaforTipleri.values.indexOf(selectedType);
    final hasNext = selectedIndex < KuaforTipleri.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity! < 0 && hasNext) {
        final nextType = KuaforTipleri.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity! > 0 && hasPrevious) {
        final previousType = KuaforTipleri.values[selectedIndex - 1];
        selectedType = previousType;
      }
    });
  }
}
