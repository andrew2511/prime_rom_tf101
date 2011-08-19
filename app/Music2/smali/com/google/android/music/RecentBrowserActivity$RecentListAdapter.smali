.class Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "RecentBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/RecentBrowserActivity;

.field private final mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIsStreamingEnabled:Z

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

.field private mStreamabilityListenerRegistered:Z

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;Landroid/content/Context;Lcom/google/android/music/RecentBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 353
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mIsStreamingEnabled:Z

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mStreamabilityListenerRegistered:Z

    .line 334
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 335
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 354
    iput-object p3, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    .line 355
    const v0, 0x7f0c0069

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 356
    const v0, 0x7f0c0068

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 358
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 359
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f020195

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 361
    const v0, 0x7f020010

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 362
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 364
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 365
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 366
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mResources:Landroid/content/res/Resources;

    .line 367
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)Lcom/google/android/music/RecentBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 403
    .local v15, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_5

    .line 404
    const/16 v16, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, albumName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 406
    .local v13, unknownAlbum:Z
    if-eqz v13, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object v5, v0

    .line 409
    :cond_0
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, artistName:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v14

    .line 413
    .local v14, unknownArtist:Z
    if-eqz v14, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object v6, v0

    .line 416
    :cond_1
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v11, v15, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 419
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 420
    const/16 v16, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 421
    if-nez v13, :cond_2

    if-eqz v14, :cond_3

    .line 422
    :cond_2
    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v11

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    move-object/from16 v16, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v17, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v16 .. v20}, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 428
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 430
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v7

    .line 435
    .local v7, currentalbumid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v16

    if-nez v16, :cond_4

    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v16, v0

    cmp-long v16, v7, v16

    if-nez v16, :cond_4

    .line 436
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 476
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v7           #currentalbumid:J
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v13           #unknownAlbum:Z
    .end local v14           #unknownArtist:Z
    :goto_1
    return-void

    .line 424
    .restart local v5       #albumName:Ljava/lang/String;
    .restart local v6       #artistName:Ljava/lang/String;
    .restart local v11       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v13       #unknownAlbum:Z
    .restart local v14       #unknownArtist:Z
    :cond_3
    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v16, v0

    move-object v0, v11

    move-wide/from16 v1, v16

    move-object v3, v5

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .restart local v7       #currentalbumid:J
    :cond_4
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_1

    .line 441
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v7           #currentalbumid:J
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .end local v13           #unknownAlbum:Z
    .end local v14           #unknownArtist:Z
    :cond_5
    const/16 v16, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 442
    const/16 v16, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 443
    .local v12, name:Ljava/lang/String;
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const/16 v16, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 447
    .local v9, id:J
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide v1, v9

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPlaylistAlbumArt(JLjava/lang/String;)V

    .line 449
    iput-wide v9, v15, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 450
    const/16 v16, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    .line 451
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 452
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    move-object/from16 v16, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->setPlaylistId(J)V

    .line 453
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 455
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_1

    .line 462
    .end local v9           #id:J
    .end local v12           #name:Ljava/lang/String;
    :cond_6
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 463
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 464
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 465
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/RecentBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 480
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 481
    const/4 p1, 0x0

    .line 484
    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mStreamabilityListenerRegistered:Z

    if-nez v1, :cond_3

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mStreamabilityListenerRegistered:Z

    .line 486
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    .line 487
    .local v0, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 488
    invoke-virtual {v0}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mIsStreamingEnabled:Z

    .line 495
    .end local v0           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/RecentBrowserActivity;->access$402(Lcom/google/android/music/RecentBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 497
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 499
    :cond_2
    return-void

    .line 489
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mStreamabilityListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mStreamabilityListenerRegistered:Z

    .line 491
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    goto :goto_0
.end method

.method public getRepresentativeAlbumId()J
    .locals 15

    .prologue
    .line 528
    const-wide/16 v7, -0x1

    .line 530
    .local v7, albumId:J
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    .line 531
    .local v12, top:I
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v9

    .line 532
    .local v9, bottom:I
    sub-int v0, v9, v12

    div-int/lit8 v14, v0, 0x2

    .line 534
    .local v14, viewIndex:I
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 535
    .local v10, childView:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 536
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 537
    .local v13, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    if-eqz v13, :cond_0

    .line 539
    iget-wide v3, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 540
    iget-wide v7, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 568
    .end local v13           #vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    :cond_0
    :goto_0
    return-wide v7

    .line 542
    .restart local v13       #vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 543
    const/4 v11, 0x0

    .line 544
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v6, 0x1

    .line 545
    .local v6, PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 549
    .local v2, PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    iget-wide v3, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 550
    iget-wide v3, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 552
    .local v1, uriPlaylistMembers:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 555
    .end local v1           #uriPlaylistMembers:Landroid/net/Uri;
    :cond_2
    if-eqz v11, :cond_0

    .line 557
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 559
    iget-wide v7, v13, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 375
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;-><init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    .line 377
    .local v1, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 378
    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 379
    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 380
    iget-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 381
    iget-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;-><init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v2, 0x7f0f0049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayingIndicator;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 387
    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 388
    new-instance v2, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    iget-object v3, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {v2, v3}, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    .line 389
    iget-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v3, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v2, 0x7f0f003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 391
    iget-object v2, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 392
    iput-wide v5, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    .line 393
    iput-wide v5, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->artistId:J

    .line 394
    iput-wide v5, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    .line 395
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 504
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 505
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 507
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v1

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 511
    .end local v0           #count:I
    :cond_0
    return-void

    .line 508
    .restart local v0       #count:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStreamabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mIsStreamingEnabled:Z

    .line 573
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    new-instance v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$2;-><init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/RecentBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 524
    :goto_0
    return-object v2

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/RecentBrowserActivity;->access$600(Lcom/google/android/music/RecentBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 522
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraint:Ljava/lang/String;

    .line 523
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 524
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/RecentBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->mActivity:Lcom/google/android/music/RecentBrowserActivity;

    .line 371
    return-void
.end method
