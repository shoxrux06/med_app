import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCharacteristicWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  final List<String> characteristicList;
  final List<bool> isChecked;

  const CustomCharacteristicWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.characteristicList,
    required this.isChecked,
  }) : super(key: key);

  @override
  State<CustomCharacteristicWidget> createState() => _CustomCharacteristicWidgetState();
}

class _CustomCharacteristicWidgetState extends State<CustomCharacteristicWidget> {
  bool isFirst = true;

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ScreenUtil().setHorizontalSpacing(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.subTitle,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                    minWidth: 72.h,
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
                    onPressed: () {
                      setState(() {
                        isFirst = !isFirst;
                      });
                    },
                    child: Icon(
                      CupertinoIcons.chevron_down,
                      size: 30.h,
                    )),
              )
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
                            Text(
                              widget.subTitle,
                              style: TextStyle(color: Colors.black54),
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
                            ))
                      ],
                    ),
                    ...widget.characteristicList.map((e) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black.withOpacity(0.4),
                              width: 2
                          )
                      ),
                      child: CheckboxListTile(
                        title: Text(e),
                        value: widget.isChecked[widget.characteristicList.indexOf(e)],
                        onChanged: (bool? value) {
                          setState(() {
                            widget.isChecked[
                            widget.characteristicList.indexOf(e)] = value!;
                          });
                        },
                      ),
                    )
                    ),
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
