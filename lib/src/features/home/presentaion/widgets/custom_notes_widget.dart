import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/core/constants/app_constants.dart';

class CustomNotesWidget extends StatefulWidget {
  final String title;
  const CustomNotesWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CustomNotesWidget> createState() => _CustomNotesWidgetState();
}

class _CustomNotesWidgetState extends State<CustomNotesWidget> {
  bool isFirst = true;

  final notesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                blurRadius: 4.r,
                offset: const Offset(0, 4),
              )
            ],
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.black12,
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold,),
                            ),
                          ],
                        ),
                        Spacer(),
                        MaterialButton(
                            minWidth: 72.h,
                            visualDensity: const VisualDensity(
                              horizontal: -4,
                            ),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.r)),
                            onPressed: () {
                              setState(() {
                                isFirst = !isFirst;
                              });
                            },
                            child: Icon(
                              CupertinoIcons.chevron_up,
                              size: 30.h,
                            )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        secondChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 4.r,
                  offset: const Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.black12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 8,),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold,),
                            ),
                          ],
                        ),
                        Spacer(),
                        MaterialButton(
                            minWidth: 72.h,
                            visualDensity: const VisualDensity(
                              horizontal: -4,
                            ),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.r)),
                            onPressed: () {
                              setState(() {
                                isFirst = !isFirst;
                              });
                            },
                            child: Icon(
                              CupertinoIcons.chevron_up,
                              size: 30.h,
                            )
                        )
                      ],
                    ),
                    sizedBox24Height,
                    TextFormField(
                      controller: notesController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        enabledBorder: enabledBorder,
                        focusedBorder: focusedBorder,
                        label: Text('Ixtiyoriy firkrlaingizni yozing')
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
        crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300)
    );
  }
}
