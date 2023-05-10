import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterventionItem extends StatefulWidget {
  final String title;
  final String subTitle;
  final List<String> painLocations;
  final List<bool> isChecked;

  const InterventionItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.painLocations,
    required this.isChecked,
  }) : super(key: key);

  @override
  State<InterventionItem> createState() => _InterventionItemState();
}

class _InterventionItemState extends State<InterventionItem> {
  bool isFirst = true;
  bool isGreen = false;
  bool isYellow = false;
  // bool isOrange = false;

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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.r)),
                    onPressed: () {
                      setState(() {
                        isFirst = !isFirst;
                      });
                    },
                    child: Icon(
                      CupertinoIcons.chevron_down,
                      size: 30.h,
                    )
                ),
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
                  offset: const Offset(0, 4)
              )
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
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
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
                    ...widget.painLocations.map((e) => AnimatedCrossFade(
                        firstChild: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.4),
                                  width: 2
                              )
                          ),
                          child: CheckboxListTile(
                            title: Text(e),
                            value: widget.isChecked[widget.painLocations.indexOf(e)],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.isChecked[widget.painLocations.indexOf(e)] = value??false;
                              });
                            },
                          ),
                        ),
                        secondChild: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.4),
                                  width: 2
                              )
                          ),
                          child: Column(
                            children:  [
                              CheckboxListTile(
                                title: Text(e),
                                value: widget.isChecked[widget.painLocations.indexOf(e)],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.isChecked[widget.painLocations.indexOf(e)] = value??false;
                                  });
                                },
                              ),
                              const SizedBox(height: 16,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          isGreen = true;
                                          isYellow = false;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width/4,
                                        height: 54,
                                        color: isGreen?Colors.green: Colors.grey,
                                        child: const Center(child: Text('Better'),),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          isYellow = true;
                                          isGreen = false;
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width/4,
                                        height: 54,
                                        color: isYellow?Colors.yellow: Colors.grey,
                                        child: const Center(child: Text('No chance'),),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        crossFadeState: !widget.isChecked[widget.painLocations.indexOf(e)] ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 300)
                    )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        crossFadeState:
        isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300));
  }
}
