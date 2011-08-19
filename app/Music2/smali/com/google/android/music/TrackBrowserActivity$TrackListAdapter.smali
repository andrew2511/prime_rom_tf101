.class public Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/TrackBrowserActivity;

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mContextClickListener:Landroid/view/View$OnClickListener;

.field mDurationIdx:I

.field mGenreIdx:I

.field mIsLocalIdx:I

.field private mIsStreamingEnabled:Z

.field private mMainArtist:Ljava/lang/String;

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mPrevCount:I

.field private mScrollToPositionCoarse:I

.field private mScrollToPositionFine:I

.field private mStreamabilityListenerRegistered:Z

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field mYearIdx:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1431
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1368
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 1369
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1387
    iput-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1388
    iput-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1389
    iput-boolean v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1390
    iput-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mMainArtist:Ljava/lang/String;

    .line 1392
    iput-boolean v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsStreamingEnabled:Z

    .line 1393
    iput-boolean v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1395
    iput v8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1396
    iput v8, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    .line 1402
    iput v6, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1418
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    .line 1432
    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1433
    invoke-direct {p0, p4}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1434
    const v0, 0x7f0c0068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1435
    const v0, 0x7f0c0069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1436
    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method private getAlbum(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1703
    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, album:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1707
    :cond_0
    return-object v0
.end method

.method private getArtist(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1711
    iget v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1715
    :cond_0
    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1489
    if-eqz p1, :cond_0

    .line 1490
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1491
    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1492
    const-string v1, "year"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    .line 1493
    const-string v1, "Genre"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mGenreIdx:I

    .line 1494
    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    .line 1496
    :try_start_0
    const-string v1, "audio_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :goto_0
    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    .line 1501
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 1502
    const-string v1, "hasLocal"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsLocalIdx:I

    .line 1503
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$3100(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    const v2, 0x7f0c0097

    invoke-virtual {v1, v2}, Lcom/google/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    .line 1510
    :cond_0
    return-void

    .line 1497
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1498
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0
.end method

.method private scrollList(Landroid/widget/ListView;II)V
    .locals 5
    .parameter "lv"
    .parameter "coarse"
    .parameter "fine"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1458
    if-gtz p3, :cond_1

    .line 1459
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1463
    .local v0, first:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1464
    .local v1, last:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 1465
    if-ge p2, v0, :cond_3

    .line 1467
    sub-int v2, v0, p2

    if-le v2, v3, :cond_2

    .line 1468
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1470
    :cond_2
    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 1471
    :cond_3
    if-le p2, v1, :cond_0

    .line 1472
    sub-int v2, p2, v1

    if-le v2, v3, :cond_4

    .line 1473
    sub-int v2, p2, v3

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1475
    :cond_4
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1547
    .local v16, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1549
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1551
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1554
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1700
    :cond_1
    :goto_0
    return-void

    .line 1559
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1560
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Lcom/google/android/music/StatefulShadowTextView;->setText([CII)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    move-object v7, v0

    .line 1564
    .local v7, builder:Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1568
    .local v14, name:Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    .line 1578
    .local v13, len:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->trackId:J

    .line 1581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsStreamingEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsLocalIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_13

    :cond_4
    const/16 v18, 0x1

    move/from16 v11, v18

    .line 1582
    .local v11, isAvailable:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1583
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v12, v0

    .line 1584
    .local v12, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    .local v5, album:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 1586
    .local v6, artist:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v18, v0

    move-object v0, v12

    move-wide/from16 v1, v18

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 1587
    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v18, v0

    :goto_3
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1591
    .end local v5           #album:Ljava/lang/String;
    .end local v6           #artist:Ljava/lang/String;
    .end local v12           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_5
    const-wide/16 v9, -0x1

    .line 1592
    .local v9, id:J
    sget-object v18, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v18, :cond_6

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$3200(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1594
    sget-object v18, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getQueuePosition()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v9, v0

    .line 1607
    :cond_6
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$3200(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1624
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v9

    if-nez v18, :cond_16

    const/16 v18, 0x1

    move/from16 v15, v18

    .line 1634
    .local v15, showPlayIndicator:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$3100(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1637
    const/4 v15, 0x0

    .line 1650
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$3200(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1653
    const/4 v15, 0x0

    .line 1656
    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v18, v0

    if-eqz v15, :cond_19

    const/16 v19, 0x0

    :goto_6
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1659
    .end local v15           #showPlayIndicator:Z
    :cond_9
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1660
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1661
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1663
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1664
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1666
    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 1667
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1669
    :cond_c
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1670
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1672
    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1674
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    move/from16 v18, v0

    if-ltz v18, :cond_e

    .line 1676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mYearIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1677
    .local v17, year:I
    if-lez v17, :cond_1a

    .line 1678
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 1686
    .end local v17           #year:I
    :cond_e
    :goto_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1687
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getAlbum(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1688
    .restart local v5       #album:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    .end local v5           #album:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1691
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getArtist(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 1692
    .restart local v6       #artist:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    .end local v6           #artist:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1696
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move v8, v0

    .line 1697
    .local v8, duration:I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object/from16 v19, v0

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1572
    .end local v8           #duration:I
    .end local v9           #id:J
    .end local v11           #isAvailable:Z
    .end local v13           #len:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mMainArtist:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mMainArtist:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1573
    :cond_12
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1581
    .restart local v13       #len:I
    :cond_13
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_2

    .line 1587
    .restart local v5       #album:Ljava/lang/String;
    .restart local v6       #artist:Ljava/lang/String;
    .restart local v11       #isAvailable:Z
    .restart local v12       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 1596
    .end local v5           #album:Ljava/lang/String;
    .end local v6           #artist:Ljava/lang/String;
    .end local v12           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    .restart local v9       #id:J
    :cond_15
    sget-object v18, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getAudioId()J

    move-result-wide v9

    goto/16 :goto_4

    .line 1624
    :cond_16
    const/16 v18, 0x0

    move/from16 v15, v18

    goto/16 :goto_5

    .line 1627
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    cmp-long v18, v18, v9

    if-nez v18, :cond_18

    const/16 v18, 0x1

    move/from16 v15, v18

    .restart local v15       #showPlayIndicator:Z
    :goto_8
    goto/16 :goto_5

    .end local v15           #showPlayIndicator:Z
    :cond_18
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_8

    .line 1656
    .restart local v15       #showPlayIndicator:Z
    :cond_19
    const/16 v19, 0x8

    goto/16 :goto_6

    .line 1681
    .end local v15           #showPlayIndicator:Z
    .restart local v17       #year:I
    :cond_1a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1720
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1721
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1722
    const/4 p1, 0x0

    .line 1725
    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mStreamabilityListenerRegistered:Z

    if-nez v2, :cond_3

    .line 1726
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1727
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v1

    .line 1728
    .local v1, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 1729
    invoke-virtual {v1}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsStreamingEnabled:Z

    .line 1736
    .end local v1           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    if-eq p1, v2, :cond_2

    .line 1737
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    move-object v0, p1

    check-cast v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object v2, v0

    invoke-static {v3, v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2202(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/MediaList$MediaCursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 1738
    if-eqz p1, :cond_4

    .line 1739
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1743
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1744
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1748
    :cond_2
    return-void

    .line 1730
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mStreamabilityListenerRegistered:Z

    if-eqz v2, :cond_1

    .line 1731
    iput-boolean v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1732
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    goto :goto_0

    .line 1741
    :cond_4
    iput v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    goto :goto_1
.end method

.method public getRepresentativeAlbumId()J
    .locals 8

    .prologue
    .line 1814
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1815
    .local v4, top:I
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 1816
    .local v2, bottom:I
    sub-int v7, v2, v4

    div-int/lit8 v6, v7, 0x2

    .line 1818
    .local v6, viewIndex:I
    const-wide/16 v0, -0x1

    .line 1819
    .local v0, albumId:J
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1820
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1821
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1822
    .local v5, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    if-eqz v5, :cond_0

    .line 1823
    iget-wide v0, v5, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1826
    .end local v5           #vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    :cond_0
    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v5, 0x7f0f003a

    .line 1514
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1515
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1516
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/TrackBrowserActivity;->access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1517
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1520
    :cond_0
    new-instance v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    .line 1521
    .local v2, vh:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const/high16 v3, 0x7f0f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 1522
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v3, :cond_1

    .line 1523
    const v3, 0x7f0f0032

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->title:Lcom/google/android/music/StatefulShadowTextView;

    .line 1525
    :cond_1
    const v3, 0x7f0f0027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 1526
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mContextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 1529
    const v3, 0x7f0f0049

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/PlayingIndicator;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 1530
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->titleBuffer:Landroid/database/CharArrayBuffer;

    .line 1531
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->albumId:J

    .line 1532
    const v3, 0x7f0f009b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/StatefulShadowTextView;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->year:Lcom/google/android/music/StatefulShadowTextView;

    .line 1533
    const v3, 0x7f0f0042

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/StatefulShadowTextView;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Lcom/google/android/music/StatefulShadowTextView;

    .line 1534
    const v3, 0x7f0f0016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/StatefulShadowTextView;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->album:Lcom/google/android/music/StatefulShadowTextView;

    .line 1535
    const v3, 0x7f0f0004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/StatefulShadowTextView;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 1536
    iget-object v3, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    if-nez v3, :cond_2

    .line 1537
    const v3, 0x7f0f0033

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/StatefulShadowTextView;

    iput-object p0, v2, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->artist:Lcom/google/android/music/StatefulShadowTextView;

    .line 1539
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1540
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1767
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 1768
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1772
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1773
    .local v0, count:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1774
    .local v3, lv:Landroid/widget/ListView;
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 1775
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    if-lt v0, v4, :cond_2

    .line 1776
    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    iget v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->scrollList(Landroid/widget/ListView;II)V

    .line 1777
    iput v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1778
    iput v7, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    .line 1782
    :cond_2
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v8

    .line 1784
    .local v2, isTop:Z
    :goto_1
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3300(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v2, :cond_5

    .line 1785
    if-nez v0, :cond_4

    iget v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    if-eqz v4, :cond_4

    .line 1790
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .end local v2           #isTop:Z
    :cond_3
    move v2, v6

    .line 1782
    goto :goto_1

    .line 1793
    .restart local v2       #isTop:Z
    :cond_4
    iput v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mPrevCount:I

    .line 1796
    :cond_5
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1900(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1797
    if-lez v0, :cond_8

    move v1, v8

    .line 1799
    .local v1, hasMusic:Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3400(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1800
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$3400(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 1802
    :cond_6
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1803
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v1, :cond_9

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1804
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1805
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/activitymanagement/AppState;->setMusicFound(Z)V

    .line 1809
    .end local v1           #hasMusic:Z
    :cond_7
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$100(Lcom/google/android/music/TrackBrowserActivity;)V

    goto/16 :goto_0

    :cond_8
    move v1, v6

    .line 1797
    goto :goto_2

    .line 1803
    .restart local v1       #hasMusic:Z
    :cond_9
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public onStreamabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 1831
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mIsStreamingEnabled:Z

    .line 1832
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$2;-><init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1837
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1753
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1757
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1762
    :goto_0
    return-object v2

    .line 1759
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1760
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1761
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 1762
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 2
    .parameter "newactivity"

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    .line 1481
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1482
    return-void
.end method

.method public setMainArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "mainArtist"

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mMainArtist:Ljava/lang/String;

    .line 1486
    return-void
.end method

.method public setScrollToPosition(II)V
    .locals 4
    .parameter "coarse"
    .parameter "fine"

    .prologue
    .line 1439
    const/4 v0, -0x1

    .line 1440
    .local v0, count:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1441
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1443
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1444
    .local v1, lv:Landroid/widget/ListView;
    if-ltz p1, :cond_1

    if-lt v0, p1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1447
    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->scrollList(Landroid/widget/ListView;II)V

    .line 1455
    :goto_0
    return-void

    .line 1452
    :cond_1
    iput p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionCoarse:I

    .line 1453
    iput p2, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mScrollToPositionFine:I

    goto :goto_0
.end method
