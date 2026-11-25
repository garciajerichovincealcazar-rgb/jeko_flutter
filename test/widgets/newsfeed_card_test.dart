import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/widgets/feed_action_button.dart';
import 'package:flutter_application_1/widgets/newsfeed_card.dart';
import 'package:flutter_application_1/widgets/post_image.dart';
import 'package:flutter_application_1/widgets/profile_avatar.dart';

void main() {
  testWidgets('newsfeed uses dedicated image, avatar, and action widgets', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: ListView(children: const [NewsfeedCard()])),
      ),
    );

    expect(find.byType(PostImage), findsOneWidget);
    expect(find.byType(ProfileAvatar), findsNWidgets(2));
    expect(find.byType(FeedActionButton), findsNWidgets(3));
  });

  testWidgets('like button toggles the displayed like count', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: ListView(children: const [NewsfeedCard()])),
      ),
    );

    expect(find.text('177'), findsOneWidget);

    await tester.ensureVisible(find.text('Like'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Like'));
    await tester.pump();

    expect(find.text('178'), findsOneWidget);

    await tester.tap(find.text('Like'));
    await tester.pump();

    expect(find.text('177'), findsOneWidget);
  });

  testWidgets('newsfeed hides the image area when no image is provided', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ListView(children: const [NewsfeedCard(imageUrl: null)]),
        ),
      ),
    );

    expect(find.byType(PostImage), findsNothing);
  });
}
