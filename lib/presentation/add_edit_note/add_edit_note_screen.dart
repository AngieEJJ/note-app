import 'package:flutter/material.dart';
import 'package:note_app/ui/color.dart';

class AddEditNoteScreen extends StatefulWidget {
  const AddEditNoteScreen({super.key});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final List<Color> noteColors = [
    roseBud,
    orange,
    purple,
    skyBlue,
    yellow,
  ];

  Color _color = skyBlue; // 앱 처음 실행시 초기값으로 선택됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
        },
      ),
      body: AnimatedContainer(
        color: _color,
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding:
              const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  top: 40
              ),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: noteColors
                    .map(
                      (color) => InkWell(
                        onTap: () {
                          setState(() {
                            _color = color; // 컨테이너 클릭 할때마다 _color 변수가 noteColors 리스트 순서로 업데이트
                          });
                        },
                        child: _buildBackgroundColor(color: color, selected: _color == color), // 비교연산자. 같으면 true, 다르면 false
                      ),
                    )
                    .toList(),
              ),
              TextField(
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

  Widget _buildBackgroundColor({
    required Color color,
    required bool selected
  }) {
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
