import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cast/presentation/bloc/cast_bloc.dart';
import '../../../episodes/presentation/bloc/episode_bloc.dart';
import '../../../locations/presentations/bloc/location_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<EpisodeBloc>().add(const EpisodeEvent.episodeDataLoaded());
    context.read<LocationBloc>().add(const LocationEvent.locationDataLoaded());
    context.read<CastBloc>().add(const CastEvent.castDataLoaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff171c32),
                    Color(0xff171c32),
                    Color(0xff171c32),
                    Color(0xff1b1f33),
                    Color(0xff1b1f33),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/backgraund.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.sp,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xff303040).withOpacity(0.5),
                            const Color(0xff1b1f33).withOpacity(0.6),
                          ],
                        ),
                        border: Border(
                          bottom: BorderSide(
                              width: 0.5.sp,
                              color: Colors.white.withOpacity(0.6)),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 6.sp),
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    Padding(
                      padding: EdgeInsets.only(right: 18.sp, left: 18.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Favourites",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 80.sp,
                            height: 20.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff9DFE00),
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Center(
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    BlocBuilder<CastBloc, CastState>(builder: (context, state) {
                      return Container(
                        height: 150.sp,
                        padding: EdgeInsets.only(right: 18.sp, left: 12.sp),
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 8.sp, left: 8.sp),
                              child: Container(
                                width: 140.sp,
                                height: 135.sp,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/Box.png'),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: 4.sp, left: 12.sp, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      state.castResponseData.results?[index]
                                                  .image ==
                                              null
                                          ? Padding(
                                              padding:
                                                  EdgeInsets.only(top: 58.sp),
                                              child: const Center(
                                                  child:
                                                      CircularProgressIndicator
                                                          .adaptive(
                                                strokeWidth: 4.5,
                                                backgroundColor: Colors.white,
                                              )),
                                            )
                                          : Padding(
                                              padding:
                                                  EdgeInsets.only(top: 6.sp),
                                              child: Image.network(
                                                state
                                                        .castResponseData
                                                        .results?[index]
                                                        .image ??
                                                    "",
                                                cacheWidth: 124,
                                                cacheHeight: 110,
                                              ),
                                            ),
                                      SizedBox(height: 9.sp),
                                      Text(
                                        state.castResponseData.results?[index]
                                                .name ??
                                            "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                    SizedBox(height: 18.sp),
                    Padding(
                      padding: EdgeInsets.only(right: 18.sp, left: 18.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Meet the cast",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 80.sp,
                            height: 20.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff9DFE00),
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Center(
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    BlocBuilder<CastBloc, CastState>(builder: (context, state) {
                      return Container(
                        height: 150.sp,
                        padding: EdgeInsets.only(right: 18.sp, left: 12.sp),
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 8.sp, left: 8.sp),
                              child: Container(
                                width: 140.sp,
                                height: 135.sp,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/Box.png'),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: 4.sp, left: 12.sp, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      state.castResponseData.results?[index]
                                                  .image ==
                                              null
                                          ? Padding(
                                              padding:
                                                  EdgeInsets.only(top: 58.sp),
                                              child: const Center(
                                                  child:
                                                      CircularProgressIndicator
                                                          .adaptive(
                                                strokeWidth: 4.5,
                                                backgroundColor: Colors.white,
                                              )),
                                            )
                                          : Padding(
                                              padding:
                                                  EdgeInsets.only(top: 6.sp),
                                              child: Image.network(
                                                state
                                                        .castResponseData
                                                        .results?[index]
                                                        .image ??
                                                    "",
                                                cacheWidth: 124,
                                                cacheHeight: 110,
                                              ),
                                            ),
                                      SizedBox(height: 9.sp),
                                      Text(
                                        state.castResponseData.results?[index]
                                                .name ??
                                            "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                    SizedBox(height: 18.sp),
                    Padding(
                      padding: EdgeInsets.only(right: 18.sp, left: 18.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Locations",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 80.sp,
                            height: 20.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff9DFE00),
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Center(
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    BlocBuilder<LocationBloc, LocationState>(
                        builder: (context, state) {
                      return Container(
                        height: 50.sp,
                        padding: EdgeInsets.symmetric(horizontal: 12.sp),
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.sp),
                              child: Container(
                                width: 190.sp,
                                height: 50.sp,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/small_box.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 18.sp, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "#${state.locationResponseData.results?[index].id}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10.sp),
                                      Text(
                                        state.locationResponseData
                                                .results?[index].name ??
                                            '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                    SizedBox(height: 18.sp),
                    SizedBox(height: 15.sp),
                    Padding(
                      padding: EdgeInsets.only(right: 18.sp, left: 18.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Episodes",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 80.sp,
                            height: 20.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff9DFE00),
                                borderRadius: BorderRadius.circular(8.sp)),
                            child: Center(
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    BlocBuilder<EpisodeBloc, EpisodeState>(
                        builder: (context, state) {
                      return Container(
                        height: 50.sp,
                        padding: EdgeInsets.symmetric(horizontal: 12.sp),
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.sp),
                              child: Container(
                                width: 190.sp,
                                height: 50.sp,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/small_box.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 18.sp, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "#${state.episodeResponseData.results?[index].episode}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10.sp),
                                      Text(
                                        state.episodeResponseData
                                                .results?[index].name ??
                                            "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                    SizedBox(height: 18.sp),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
