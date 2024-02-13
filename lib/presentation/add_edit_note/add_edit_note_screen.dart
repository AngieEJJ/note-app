import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_event.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart';
import 'package:note_app/ui/color.dart';
import 'package:provider/provider.dart';

class AddEditNoteScreen extends StatefulWidget {
  final Note? note;

  const AddEditNoteScreen({super.key, this.note});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _textController = TextEditingController();
  final _contentController = TextEditingController();
  StreamSubscription? _streamSubscription;

  final List<Color> noteColors = [
    roseBud,
    orange,
    purple,
    skyBlue,
    yellow,
  ];

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _textController.text = widget.note!.title;
      _contentController.text = widget.note!.content;
    }

    Future.microtask(() {
      final viewModel = context.read<AddEditNoteViewModel>();
      _streamSubscription = viewModel.eventStream.listen((event) {
        // 화면이 사라져도 리슨을 계속하고 있는건 막아줘야 한다 -> subscription 활용
        event.when(saveNote: () {
          Navigator.pop(context, true);
        }, showSnackBar: (String message) {
          final snackBar = SnackBar(content: Text('제목이나 내용이 비어 있습니다.'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      }); // 감지하기 -> event가 일어나면 화면 닫아버리기 (단, true일 때만 실행_사용자가 저장버튼을 누르면 true)
    });
  }

  @override
  void dispose() {
    _streamSubscription
        ?.cancel(); // _streamSubscription이 있다면 캔슬하고 다시 들어오면 새롭게 리슨하도록
    _textController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AddEditNoteViewModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          viewModel.onEvent(
            SaveNote(
              widget.note == null ? null : widget.note!.id,
              _textController.text,
              _contentController.text,
            ),
          );
        },
      ),
      body: AnimatedContainer(
        color: Color(viewModel.color),
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: noteColors
                    .map(
                      (color) => InkWell(
                        onTap: () {
                          viewModel.onEvent(
                              AddEditNoteEvent.changeColor(color.value));
                        },
                        child: _buildBackgroundColor(
                            color: color,
                            selected: viewModel.color ==
                                color.value), // 비교연산자. 같으면 true, 다르면 false
                      ),
                    )
                    .toList(),
              ),
              TextField(
                controller: _textController,
                maxLines: 1,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: darkGrey,
                    ),
                decoration: const InputDecoration(
                  hintText: '제목을 입력하세요',
                  border: InputBorder.none,
                ),
              ),
              TextField(
                controller: _contentController,
                maxLines: null,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: darkGrey,
                    ),
                decoration: const InputDecoration(
                  hintText: '내용을 입력하세요',
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundColor({required Color color, required bool selected}) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4.0,
            spreadRadius: 1.0,
          )
        ],
        border: selected ? Border.all(color: Colors.black, width: 3.0) : null,
      ),
    );
  }
}
