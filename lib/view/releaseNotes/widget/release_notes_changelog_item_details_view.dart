import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tesla_android/common/ui/constants/ta_dimens.dart';
import 'package:tesla_android/view/releaseNotes/model/changelog_item.dart';

class ReleaseNotesChangelogItemDetailsView extends StatelessWidget {
  final ChangelogItem changelogItem;

  const ReleaseNotesChangelogItemDetailsView({
    Key? key,
    required,
    required this.changelogItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TADimens.basePaddingHorizontal,
      child: Markdown(
        data: changelogItem.descriptionMarkdown,
      ),
    );
  }
}
