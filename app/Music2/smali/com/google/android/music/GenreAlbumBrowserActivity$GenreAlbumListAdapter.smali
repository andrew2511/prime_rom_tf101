.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GenreAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mChildCursorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private final mFormatArgs3:[Ljava/lang/Object;

.field private mIsStreamingEnabled:Z

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

.field private mStreamabilityListenerRegistered:Z

.field private final mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

.field private final mUnknownAlbum:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "cursor"
    .parameter "glayout"
    .parameter "gfrom"
    .parameter "gto"
    .parameter "clayout"
    .parameter "cfrom"
    .parameter "cto"

    .prologue
    .line 835
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 836
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 799
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 800
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 808
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 809
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    .line 813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mIsStreamingEnabled:Z

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 837
    iput-object p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    .line 839
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 840
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f020195

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 842
    iput-object p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 843
    invoke-direct {p0, p4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 844
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 845
    const v0, 0x7f0c00fc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 846
    const v0, 0x7f0c0069

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 847
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Lcom/google/android/music/GenreAlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 851
    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "islast"

    .prologue
    .line 945
    move-object/from16 v0, p3

    check-cast v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    move-object v9, v0

    .line 946
    .local v9, childCursor:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 948
    .local v20, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 949
    .local v17, name:Ljava/lang/String;
    move-object/from16 v5, v17

    .line 950
    .local v5, albumDisplayname:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v19

    .line 951
    .local v19, unknown:Z
    if-eqz v19, :cond_0

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object v5, v0

    .line 954
    :cond_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    const/16 v21, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 958
    .local v8, artistDisplayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mIsStreamingEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    const/16 v21, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_2

    :cond_1
    const/16 v21, 0x1

    move/from16 v13, v21

    .line 959
    .local v13, isAvailable:Z
    :goto_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 960
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 962
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 963
    .local v6, albumId:J
    const/16 v21, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 964
    .local v12, hasRemote:Z
    :goto_1
    move-wide v0, v6

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 965
    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->mGenreId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 966
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v14, v0

    .line 968
    .local v14, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const-wide/16 v21, -0x1

    cmp-long v21, v6, v21

    if-nez v21, :cond_4

    .line 971
    const/16 v21, 0x0

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 972
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 980
    :goto_2
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v10

    .line 982
    .local v10, currentalbumid:J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide v1, v6

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v21

    if-nez v21, :cond_6

    const-wide/16 v21, -0x1

    cmp-long v21, v6, v21

    if-eqz v21, :cond_6

    cmp-long v21, v10, v6

    if-nez v21, :cond_6

    .line 986
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 991
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 992
    const-wide/16 v21, -0x1

    cmp-long v21, v6, v21

    if-nez v21, :cond_7

    .line 993
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1021
    :goto_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    :goto_5
    return-void

    .line 958
    .end local v6           #albumId:J
    .end local v10           #currentalbumid:J
    .end local v12           #hasRemote:Z
    .end local v13           #isAvailable:Z
    .end local v14           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_2
    const/16 v21, 0x0

    move/from16 v13, v21

    goto/16 :goto_0

    .line 963
    .restart local v6       #albumId:J
    .restart local v13       #isAvailable:Z
    :cond_3
    const/16 v21, 0x0

    move/from16 v12, v21

    goto/16 :goto_1

    .line 974
    .restart local v12       #hasRemote:Z
    .restart local v14       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v14

    move-wide v1, v6

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 975
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v21, v0

    :goto_6
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 977
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 975
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v21, v0

    goto :goto_6

    .line 988
    .restart local v10       #currentalbumid:J
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_3

    .line 995
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 996
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 997
    if-eqz v12, :cond_b

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v16

    .line 999
    .local v16, manager:Lcom/google/android/music/OfflineMusicManager;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    move-wide/from16 v23, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v18

    .line 1002
    .local v18, selected:Ljava/lang/Boolean;
    if-eqz v18, :cond_8

    .line 1003
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 1008
    .local v15, keepOn:Z
    :goto_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 1009
    if-nez v15, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1010
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_4

    .line 1005
    .end local v15           #keepOn:Z
    :cond_8
    const/16 v21, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x1

    move/from16 v15, v21

    .restart local v15       #keepOn:Z
    :goto_8
    goto :goto_7

    .end local v15           #keepOn:Z
    :cond_9
    const/16 v21, 0x0

    move/from16 v15, v21

    goto :goto_8

    .line 1012
    .restart local v15       #keepOn:Z
    :cond_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_4

    .line 1017
    .end local v15           #keepOn:Z
    .end local v16           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v18           #selected:Ljava/lang/Boolean;
    :cond_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 1018
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_4

    .line 1023
    :cond_c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1024
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 915
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 916
    .local v6, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 918
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 941
    :goto_0
    return-void

    .line 924
    :cond_0
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, genre:Ljava/lang/String;
    move-object v0, v1

    .line 926
    .local v0, displayGenre:Ljava/lang/String;
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v7, v0}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 929
    .local v2, genreId:J
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    move v4, v7

    .line 930
    .local v4, hasRemote:Z
    :goto_1
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 932
    iput-wide v2, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 933
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 934
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->setGenreId(J)V

    .line 936
    iget-boolean v7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mIsStreamingEnabled:Z

    if-nez v7, :cond_1

    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const/4 v7, 0x1

    move v5, v7

    .line 937
    .local v5, isAvailable:Z
    :goto_2
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 939
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 940
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 929
    .end local v4           #hasRemote:Z
    .end local v5           #isAvailable:Z
    :cond_2
    const/4 v7, 0x0

    move v4, v7

    goto :goto_1

    .line 936
    .restart local v4       #hasRemote:Z
    :cond_3
    const/4 v7, 0x0

    move v5, v7

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1132
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 1133
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1134
    const/4 p1, 0x0

    .line 1137
    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    if-nez v5, :cond_3

    .line 1138
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1139
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v4

    .line 1140
    .local v4, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v4, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 1141
    invoke-virtual {v4}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mIsStreamingEnabled:Z

    .line 1148
    .end local v4           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$200(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eq p1, v5, :cond_2

    .line 1149
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v5, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$202(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1151
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1153
    :cond_2
    if-nez p1, :cond_5

    .line 1155
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1156
    .local v1, children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1157
    .local v0, child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1158
    .local v2, foo:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    goto :goto_1

    .line 1142
    .end local v0           #child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;"
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v2           #foo:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    if-eqz v5, :cond_1

    .line 1143
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1144
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    goto :goto_0

    .line 1160
    .restart local v1       #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1162
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 19
    .parameter "groupCursor"

    .prologue
    .line 1057
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1059
    .local v9, genreId:J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 1060
    .local v4, groupPosition:I
    invoke-static {v9, v10}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v12

    .line 1061
    .local v12, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1062
    .local v5, groupHasLocal:J
    const/4 v2, 0x3

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1063
    .local v7, groupHasRemote:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object v11, v0

    sget-object v13, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;IJJJ)V

    move-object/from16 v17, v2

    invoke-static/range {v11 .. v17}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    move-object v2, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/Cursor;

    .line 1118
    .local v18, c:Landroid/database/Cursor;
    return-object v18
.end method

.method public getRepresentativeAlbumId()J
    .locals 30

    .prologue
    .line 1179
    const-wide/16 v12, -0x1

    .line 1180
    .local v12, albumId:J
    const-wide/16 v19, -0x1

    .line 1182
    .local v19, genreId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v23

    .line 1183
    .local v23, listView:Landroid/widget/ExpandableListView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v27

    .line 1184
    .local v27, top:I
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v14

    .line 1185
    .local v14, bottom:I
    sub-int v5, v14, v27

    div-int/lit8 v5, v5, 0x2

    add-int v29, v5, v27

    .line 1187
    .local v29, viewIndex:I
    const/16 v28, 0x0

    .line 1188
    .local v28, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    .line 1189
    .local v24, packed:J
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v26

    .line 1191
    .local v26, ppType:I
    if-nez v26, :cond_5

    .line 1192
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v21

    .line 1194
    .local v21, groupId:I
    const/4 v5, -0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v11

    check-cast v11, Landroid/widget/CursorTreeAdapter;

    .line 1196
    .local v11, adapter:Landroid/widget/CursorTreeAdapter;
    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1197
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move v2, v5

    move-object v3, v6

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 1198
    .local v22, groupView:Landroid/view/View;
    if-eqz v22, :cond_0

    .line 1199
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    check-cast v28, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 1218
    .end local v11           #adapter:Landroid/widget/CursorTreeAdapter;
    .end local v21           #groupId:I
    .end local v22           #groupView:Landroid/view/View;
    .restart local v28       #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    :cond_0
    :goto_0
    if-eqz v28, :cond_1

    .line 1219
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    move-wide v12, v0

    .line 1220
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    move-wide/from16 v19, v0

    .line 1222
    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v5, v12, v8

    if-nez v5, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v5, v19, v8

    if-ltz v5, :cond_4

    .line 1223
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    .line 1226
    .local v7, cols:[Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 1227
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object v5, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1230
    .local v15, c:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 1231
    .local v17, childPos:I
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 1232
    .local v16, childCount:I
    if-lez v16, :cond_3

    .line 1234
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-le v0, v1, :cond_2

    .line 1235
    const/16 v17, 0x1

    .line 1237
    :cond_2
    move-object v0, v15

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1238
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 1241
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1243
    if-eqz v28, :cond_4

    .line 1244
    move-wide v0, v12

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 1247
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #cols:[Ljava/lang/String;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v16           #childCount:I
    .end local v17           #childPos:I
    :cond_4
    return-wide v12

    .line 1204
    :cond_5
    sub-int v29, v29, v27

    .line 1205
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1206
    .local v18, childView:Landroid/view/View;
    if-eqz v18, :cond_0

    .line 1207
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    check-cast v28, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 1208
    .restart local v28       #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    move-wide v8, v0

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_0

    .line 1211
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1212
    if-eqz v18, :cond_0

    .line 1213
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    check-cast v28, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .restart local v28       #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 1241
    .end local v18           #childView:Landroid/view/View;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #cols:[Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #childPos:I
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 890
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 891
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 892
    .local v1, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 893
    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 894
    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 895
    iget-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$2;

    invoke-direct {v3, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$2;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    const v2, 0x7f0f0049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayingIndicator;

    iput-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 901
    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 902
    new-instance v2, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v2, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 903
    iget-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v3, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    const v2, 0x7f0f003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 905
    iget-object v2, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 906
    iput-wide v5, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 907
    iput-wide v5, v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 908
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 909
    return-object v0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const-wide/16 v8, -0x1

    const v7, 0x7f0f003a

    const/16 v6, 0x8

    const/4 v4, -0x2

    .line 859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 860
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 861
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 862
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 863
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 864
    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 865
    .local v3, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const v4, 0x7f0f0032

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 866
    const v4, 0x7f0f0033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 867
    iget-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v4, v6}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 868
    const v4, 0x7f0f0027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 869
    iget-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    const v4, 0x7f0f0049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/PlayingIndicator;

    iput-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 875
    const v4, 0x7f0f000f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 876
    new-instance v4, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v4, v5}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 877
    iget-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v5, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v4, v5}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 879
    iget-object v4, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v4, v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 880
    iput-wide v8, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 881
    iput-wide v8, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 882
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 883
    return-object v2
.end method

.method public onGroupCollapsed(I)V
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 1123
    invoke-virtual {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 1124
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1125
    .local v0, cursor:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1128
    :cond_0
    return-void
.end method

.method public onStreamabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 1251
    iput-boolean p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mIsStreamingEnabled:Z

    .line 1252
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    new-instance v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$4;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1257
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1170
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1175
    :goto_0
    return-object v2

    .line 1172
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$600(Lcom/google/android/music/GenreAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1173
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 1175
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    .line 855
    return-void
.end method
