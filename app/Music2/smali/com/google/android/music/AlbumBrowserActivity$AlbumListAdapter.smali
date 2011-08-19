.class Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/AlbumBrowserActivity;

.field private mAlbumIdIdx:I

.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private mArtistx:I

.field private final mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mHasLocalIdx:I

.field private mHasRemoteIdx:I

.field private mIsStreamingEnabled:Z

.field private mKeepOnIdx:I

.field private final mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

.field private mStreamabilityListenerRegistered:Z

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 8
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 731
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 706
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIsStreamingEnabled:Z

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 714
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 715
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    .line 733
    iput-object p3, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    .line 735
    const v0, 0x7f0c0069

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 736
    const v0, 0x7f0c0068

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 738
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 739
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f020195

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 741
    const v0, 0x7f020010

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 742
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 744
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 745
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 746
    invoke-direct {p0, p5}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 747
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 748
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)Lcom/google/android/music/AlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 751
    if-eqz p1, :cond_0

    .line 752
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdIdx:I

    .line 753
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 754
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistx:I

    .line 755
    const-string v0, "artist_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 756
    const-string v0, "KeepOnId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mKeepOnIdx:I

    .line 758
    const-string v0, "hasLocal"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasLocalIdx:I

    .line 759
    const-string v0, "hasRemote"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasRemoteIdx:I

    .line 761
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 795
    .local v18, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 797
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 881
    :goto_0
    return-void

    .line 804
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 805
    .local v14, name:Ljava/lang/String;
    move-object v5, v14

    .line 806
    .local v5, albumDisplayname:Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v16

    .line 807
    .local v16, unknownAlbum:Z
    if-eqz v16, :cond_1

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object v5, v0

    .line 810
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 813
    move-object v6, v14

    .line 814
    .local v6, artistDisplayname:Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v17

    .line 815
    .local v17, unknownArtist:Z
    if-eqz v17, :cond_2

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object v6, v0

    .line 818
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v11, v0

    .line 821
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->artistId:J

    .line 823
    if-nez v16, :cond_3

    if-eqz v17, :cond_5

    .line 824
    :cond_3
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v11

    move-wide/from16 v1, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIsStreamingEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasLocalIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_6

    :cond_4
    const/16 v19, 0x1

    move/from16 v10, v19

    .line 829
    .local v10, isAvailable:Z
    :goto_2
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v19, v0

    :goto_3
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v7

    .line 833
    .local v7, currentalbumid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/music/AlbumBrowserActivity;->access$100(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v19, v0

    cmp-long v19, v7, v19

    if-nez v19, :cond_8

    .line 834
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 838
    :goto_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 840
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 841
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/music/AlbumBrowserActivity;->access$100(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mHasRemoteIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v9, v19

    .line 846
    .local v9, hasRemote:Z
    :goto_5
    if-eqz v9, :cond_d

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/music/AlbumBrowserActivity;->access$100(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v13

    .line 848
    .local v13, manager:Lcom/google/android/music/OfflineMusicManager;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v21, v0

    move-object v0, v13

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v15

    .line 851
    .local v15, selected:Ljava/lang/Boolean;
    if-eqz v15, :cond_a

    .line 852
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 857
    .local v12, keepOn:Z
    :goto_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 858
    if-nez v12, :cond_c

    invoke-virtual {v13}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 859
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 869
    .end local v12           #keepOn:Z
    .end local v13           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v15           #selected:Ljava/lang/Boolean;
    :goto_7
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 870
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 826
    .end local v7           #currentalbumid:J
    .end local v9           #hasRemote:Z
    .end local v10           #isAvailable:Z
    :cond_5
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v19, v0

    move-object v0, v11

    move-wide/from16 v1, v19

    move-object v3, v5

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 828
    :cond_6
    const/16 v19, 0x0

    move/from16 v10, v19

    goto/16 :goto_2

    .line 829
    .restart local v10       #isAvailable:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mNotAvailableImageOverlay:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 836
    .restart local v7       #currentalbumid:J
    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_4

    .line 844
    :cond_9
    const/16 v19, 0x0

    move/from16 v9, v19

    goto/16 :goto_5

    .line 854
    .restart local v9       #hasRemote:Z
    .restart local v13       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v15       #selected:Ljava/lang/Boolean;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mKeepOnIdx:I

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_b

    const/16 v19, 0x1

    move/from16 v12, v19

    .restart local v12       #keepOn:Z
    :goto_8
    goto :goto_6

    .end local v12           #keepOn:Z
    :cond_b
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_8

    .line 861
    .restart local v12       #keepOn:Z
    :cond_c
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_7

    .line 866
    .end local v12           #keepOn:Z
    .end local v13           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v15           #selected:Ljava/lang/Boolean;
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 867
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_7

    .line 878
    .end local v9           #hasRemote:Z
    :cond_e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 879
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 885
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/AlbumBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 886
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 887
    const/4 p1, 0x0

    .line 890
    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStreamabilityListenerRegistered:Z

    if-nez v1, :cond_3

    .line 891
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 892
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    .line 893
    .local v0, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 894
    invoke-virtual {v0}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIsStreamingEnabled:Z

    .line 901
    .end local v0           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$600(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 902
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/AlbumBrowserActivity;->access$602(Lcom/google/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 903
    invoke-direct {p0, p1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 904
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 906
    :cond_2
    return-void

    .line 895
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStreamabilityListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 896
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 897
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    goto :goto_0
.end method

.method public getRepresentativeAlbumId()J
    .locals 8

    .prologue
    .line 935
    const-wide/16 v0, -0x1

    .line 937
    .local v0, albumId:J
    iget-object v7, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 938
    .local v4, top:I
    iget-object v7, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 939
    .local v2, bottom:I
    sub-int v7, v2, v4

    div-int/lit8 v6, v7, 0x2

    .line 941
    .local v6, viewIndex:I
    iget-object v7, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v7}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 942
    .local v3, childView:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 943
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 944
    .local v5, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    if-eqz v5, :cond_0

    .line 946
    iget-wide v0, v5, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    .line 949
    .end local v5           #vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    :cond_0
    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 769
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V

    .line 771
    .local v1, vh:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 772
    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 773
    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 774
    iget-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 775
    iget-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$1;-><init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    const v2, 0x7f0f0049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayingIndicator;

    iput-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 781
    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 782
    new-instance v2, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    iget-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v2, v3}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    .line 783
    iget-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v3, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    const v2, 0x7f0f003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 785
    iget-object v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 786
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->albumId:J

    .line 787
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 788
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 911
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 912
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$600(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$600(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 914
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v1

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 918
    .end local v0           #count:I
    :cond_0
    return-void

    .line 915
    .restart local v0       #count:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStreamabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 953
    iput-boolean p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mIsStreamingEnabled:Z

    .line 954
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$2;-><init>(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/AlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 959
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 931
    :goto_0
    return-object v2

    .line 928
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$800(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 929
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 930
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 931
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/google/android/music/AlbumBrowserActivity;

    .line 765
    return-void
.end method
