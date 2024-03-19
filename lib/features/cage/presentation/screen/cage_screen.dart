import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/widget/rest_cage_content.dart';
import 'package:mustika_farm/features/cage/presentation/widget/search_text_field.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../widget/active_cage_content.dart';

class CageScreen extends StatefulWidget {
  const CageScreen({
    super.key,
  });

  @override
  State<CageScreen> createState() => _CageScreenState();
}

class _CageScreenState extends State<CageScreen> {
  late TextEditingController _controller;

  int index = 0;

  @override
  void initState() {
    super.initState();
    context.read<ActiveCageCubit>().fetchActiveCage();
    context.read<RestCageCubit>().fetchRestCage();

    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF1B6858),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            20.0.spaceY,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Kandang',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            10.0.spaceY,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: SearchTextField(controller: _controller),
                    ),
                  ),
                  8.0.spaceX,
                  Container(
                    width: 128,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(96),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => setState(() => index = 0),
                            child: Container(
                              height: 35,
                              alignment: Alignment.center,
                              decoration: index == 0
                                  ? BoxDecoration(
                                      color: const Color(0xFF1B6858),
                                      borderRadius: BorderRadius.circular(96),
                                    )
                                  : null,
                              child: Text(
                                'Aktif',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: index == 0 ? Colors.white : null,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => setState(() => index = 1),
                            child: Container(
                              height: 35,
                              alignment: Alignment.center,
                              decoration: index == 1
                                  ? BoxDecoration(
                                      color: const Color(0xFF1B6858),
                                      borderRadius: BorderRadius.circular(96),
                                    )
                                  : null,
                              child: Text(
                                'Rehat',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: index == 1 ? Colors.white : null,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            23.0.spaceY,
            index == 0 ? const ActiveCageContent() : const RestCageContent(),
          ],
        ),
      ),
    );
  }
}
