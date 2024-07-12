import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rick_and_morty/features/episodes/presentation/bloc/episode_bloc.dart';

class EpisodesPage extends StatefulWidget {
  const EpisodesPage({super.key});

  @override
  State<EpisodesPage> createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  @override
  void initState() {
    context.read<EpisodeBloc>().add(const EpisodeEvent.episodeDataLoaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EpisodeBloc, EpisodeState>(builder: (context, state) {
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
                      padding: EdgeInsets.only(left: 18.sp, right: 18.sp),
                      child: SizedBox(
                        height: 40.sp,
                        child: TextFormField(
                          //controller: _searchController,

                          decoration: InputDecoration(
                            prefixIcon: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff14D9E5),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(23.sp),
                                    bottomLeft: Radius.circular(23.sp),
                                  )),
                              width: 80.sp,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.sp),
                                child: Row(
                                  children: [
                                    Text(
                                      "Status",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            contentPadding: const EdgeInsets.only(top: 5),
                            hintText: "    Search ...",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                            fillColor: Colors.transparent,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: const BorderSide(
                                color: Color(0xff9DFE00),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              borderSide: BorderSide(
                                width: 0.4.sp,
                                color: const Color(0xff9DFE00),
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    Padding(
                      padding: EdgeInsets.only(right: 18.sp, left: 18.sp),
                      child: Text(
                        "All episodes",
                        style: TextStyle(
                            color: const Color(0xff13D9E5),
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 18.sp),
                    state.episodeResponseData.results == null
                        ? const Center(
                            child: CircularProgressIndicator.adaptive(
                            strokeWidth: 4.5,
                            backgroundColor: Colors.white,
                          ))
                        : Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                  right: 10.sp,
                                  left: 10.sp), // Adjusted padding
                              child: GridView.builder(
                                itemCount:
                                    state.episodeResponseData.results?.length,
                                padding: EdgeInsets.zero,
                                physics: const BouncingScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10.0.sp,
                                  mainAxisSpacing: 10.0.sp,
                                  childAspectRatio: 160.sp / 45.sp,
                                ),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.sp),
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
                                        padding: EdgeInsets.only(
                                            left: 18.sp, top: 10),
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
                                            SizedBox(height: 5.sp),
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
                            ),
                          ),
                    SizedBox(height: 18.sp),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
