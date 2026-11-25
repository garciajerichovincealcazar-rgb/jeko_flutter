# Garcia Flutter Newsfeed

## Lab Activity 1: Discussion

For this activity, I updated the newsfeed so a post can show an image when one is provided, or display normally without one.

### Laboratory Discussion

I made `imageUrl` an optional value in `NewsfeedCard`. When it contains a URL, the card displays the reusable `PostImage` widget. If it is `null` or blank, the image widget is skipped, so there is no empty space in the post.

`PostImage` loads the picture from the internet and shows a loading indicator while it comes in. If the image cannot be loaded, it displays a fallback icon instead. This lets the same newsfeed card handle posts with or without a picture.

I also used separate `ProfileAvatar` and `FeedActionButton` widgets for the profile pictures and the Like, Comment, and Share buttons. Keeping these pieces reusable makes the card easier to update and keeps its layout consistent.

### Run the application

```bash
flutter pub get
flutter run
```
