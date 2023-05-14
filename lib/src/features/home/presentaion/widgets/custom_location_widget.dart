import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/src/features/home/data/models/location_model.dart';
import 'package:medical_app/src/features/home/presentaion/bloc/home_bloc.dart';
import 'package:medical_app/src/features/home/presentaion/bloc/home_event.dart';
import 'package:medical_app/src/features/home/presentaion/bloc/home_state.dart';

import '../../../../core/constants/app_constants.dart';

class CustomLocationWidget extends StatefulWidget {
  final String title;
  final String subTitle;

  const CustomLocationWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  State<CustomLocationWidget> createState() => _CustomLocationWidgetState();
}

class _CustomLocationWidgetState extends State<CustomLocationWidget> {
  bool isFirst = true;
  int checkedNumber = 0;


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
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              const Spacer(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      BlocBuilder<HomeBloc, HomeState>(builder: (context,state){
                        int count = 0;
                        final list = state.painLocationCheckbox.where((element) => element == true);
                        count = list.length;
                        if(count == 0){
                          return Container();
                        }else{
                          return  Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(32)
                            ),
                            child: Center(
                              child: Text(count.toString(), style: TextStyle(color: Colors.white),),
                            ),
                          );
                        }
                      }),
                      sizedBox12Height,
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
                            CupertinoIcons.chevron_down,
                            size: 30.h,
                          )
                      ),
                    ],
                  )
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
                        const Spacer(),
                        BlocBuilder<HomeBloc, HomeState>(builder: (context,state){
                          int count = 0;
                          final list = state.painLocationCheckbox.where((element) => element == true);
                          count = list.length;
                          if(count == 0){
                            return Container();
                          }else{
                            return  Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(32)
                              ),
                              child: Center(
                                child: Text(count.toString(), style: TextStyle(color: Colors.white),),
                              ),
                            );
                          }
                        }),
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
                    BlocBuilder<HomeBloc, HomeState>(builder: (context, state){
                      if(state.locationModelList.isEmpty){
                        return Container(child: Text('Locations is empty'),);
                      }else{
                        return ListView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemCount: state.locationModelList.length,
                            itemBuilder: (context,index){
                          return  Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.4),
                                    width: 2
                                )
                            ),
                            child: CheckboxListTile(
                              secondary: Image.asset(
                                state.locationModelList[index].locationIcon,
                                width: 32,
                                height: 32,
                                color: Colors.blue,
                              ),
                              title: Text(state.locationModelList[index].locationName),
                              value: state.painLocationCheckbox[state.locationModelList.indexOf(state.locationModelList[index])],
                              onChanged: (bool? value) {
                                context.read<HomeBloc>().add(TogglePainLocationEvent(index));},
                            ),
                          );
                        });
                      }
                    },
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
