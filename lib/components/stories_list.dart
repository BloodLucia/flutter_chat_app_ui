import 'package:cached_network_image/cached_network_image.dart';
import 'package:chateo_app/common/data.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: AppData.stories.length,
          itemBuilder: (context, index) => Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: 65,
                  height: 65,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CachedNetworkImage(
                    imageUrl: AppData.stories[index].avatar,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
              Text(AppData.stories[index].name),
            ],
          ),
          separatorBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.all(8),
            );
          },
        ),
      ),
    );
  }
}
