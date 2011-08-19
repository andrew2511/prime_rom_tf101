.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mChildCursorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;",
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

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
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
    .line 927
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 928
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 890
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 891
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 900
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 901
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 905
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIsStreamingEnabled:Z

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 929
    iput-object p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    .line 931
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 932
    .local v9, r:Landroid/content/res/Resources;
    const v0, 0x7f020195

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 934
    iput-object p2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 935
    invoke-direct {p0, p4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 936
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 937
    const v0, 0x7f0c00fc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 938
    const v0, 0x7f0c0069

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 939
    const v0, 0x7f0c0068

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 940
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/google/android/music/ArtistAlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 944
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
    .line 1077
    move-object/from16 v0, p3

    check-cast v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    move-object v9, v0

    .line 1078
    .local v9, childCursor:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1080
    .local v20, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1081
    .local v17, name:Ljava/lang/String;
    move-object/from16 v5, v17

    .line 1082
    .local v5, albumDisplayname:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v19

    .line 1083
    .local v19, unknown:Z
    if-eqz v19, :cond_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    move-object v5, v0

    .line 1086
    :cond_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    const/16 v21, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1090
    .local v8, artistDisplayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIsStreamingEnabled:Z

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

    .line 1091
    .local v13, isAvailable:Z
    :goto_0
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1092
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1094
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1095
    .local v6, albumId:J
    const/16 v21, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 1096
    .local v12, hasRemote:Z
    :goto_1
    move-wide v0, v6

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 1097
    move-object v0, v9

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 1098
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    move-object v14, v0

    .line 1100
    .local v14, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const-wide/16 v21, -0x1

    cmp-long v21, v6, v21

    if-nez v21, :cond_4

    .line 1101
    invoke-virtual {v14, v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAllSongsOfArtistAlbumArt(Ljava/lang/String;)V

    .line 1102
    const/16 v21, 0x0

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1103
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 1111
    :goto_2
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v10

    .line 1113
    .local v10, currentalbumid:J
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide v1, v6

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v21

    if-nez v21, :cond_6

    const-wide/16 v21, -0x1

    cmp-long v21, v6, v21

    if-eqz v21, :cond_6

    cmp-long v21, v10, v6

    if-nez v21, :cond_6

    .line 1117
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1122
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1123
    const-wide/16 v21, -0x1

    cmp-long v21, v6, v21

    if-nez v21, :cond_7

    .line 1124
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1152
    :goto_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    :goto_5
    return-void

    .line 1090
    .end local v6           #albumId:J
    .end local v10           #currentalbumid:J
    .end local v12           #hasRemote:Z
    .end local v13           #isAvailable:Z
    .end local v14           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_2
    const/16 v21, 0x0

    move/from16 v13, v21

    goto/16 :goto_0

    .line 1095
    .restart local v6       #albumId:J
    .restart local v13       #isAvailable:Z
    :cond_3
    const/16 v21, 0x0

    move/from16 v12, v21

    goto/16 :goto_1

    .line 1105
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

    .line 1106
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v21, v0

    :goto_6
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 1108
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1106
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v21, v0

    goto :goto_6

    .line 1119
    .restart local v10       #currentalbumid:J
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_3

    .line 1126
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1127
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 1128
    if-eqz v12, :cond_b

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v16

    .line 1130
    .local v16, manager:Lcom/google/android/music/OfflineMusicManager;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v23, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v18

    .line 1133
    .local v18, selected:Ljava/lang/Boolean;
    if-eqz v18, :cond_8

    .line 1134
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 1139
    .local v15, keepOn:Z
    :goto_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 1140
    if-nez v15, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1141
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_4

    .line 1136
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

    .line 1143
    .restart local v15       #keepOn:Z
    :cond_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_4

    .line 1148
    .end local v15           #keepOn:Z
    .end local v16           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v18           #selected:Ljava/lang/Boolean;
    :cond_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 1149
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_4

    .line 1154
    :cond_c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1155
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1009
    .local v15, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1011
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1073
    :goto_0
    return-void

    .line 1017
    :cond_0
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, artist:Ljava/lang/String;
    move-object v8, v3

    .line 1019
    .local v8, displayartist:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v14

    .line 1020
    .local v14, unknown:Z
    if-eqz v14, :cond_1

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object v8, v0

    .line 1023
    :cond_1
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentArtistId()J

    move-result-wide v6

    .line 1026
    .local v6, currentartistid:J
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1027
    .local v4, artistid:J
    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    move/from16 v9, v16

    .line 1028
    .local v9, hasRemote:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v16

    if-nez v16, :cond_4

    cmp-long v16, v6, v4

    if-nez v16, :cond_4

    if-nez p4, :cond_4

    .line 1030
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 1035
    :goto_2
    iput-wide v4, v15, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 1036
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object v2, v15

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 1037
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->setArtistId(J)V

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIsStreamingEnabled:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    const/16 v16, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_5

    :cond_2
    const/16 v16, 0x1

    move/from16 v10, v16

    .line 1040
    .local v10, isAvailable:Z
    :goto_3
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1043
    if-eqz v9, :cond_9

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v12

    .line 1045
    .local v12, manager:Lcom/google/android/music/OfflineMusicManager;
    move-object v0, v15

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v16, v0

    move-object v0, v12

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v13

    .line 1048
    .local v13, selected:Ljava/lang/Boolean;
    if-eqz v13, :cond_6

    .line 1049
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1054
    .local v11, keepOn:Z
    :goto_4
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 1055
    if-nez v11, :cond_8

    invoke-virtual {v12}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1056
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 1067
    .end local v11           #keepOn:Z
    .end local v12           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v13           #selected:Ljava/lang/Boolean;
    :goto_5
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1068
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1027
    .end local v9           #hasRemote:Z
    .end local v10           #isAvailable:Z
    :cond_3
    const/16 v16, 0x0

    move/from16 v9, v16

    goto/16 :goto_1

    .line 1032
    .restart local v9       #hasRemote:Z
    :cond_4
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto/16 :goto_2

    .line 1039
    :cond_5
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_3

    .line 1051
    .restart local v10       #isAvailable:Z
    .restart local v12       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v13       #selected:Ljava/lang/Boolean;
    :cond_6
    const/16 v16, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x1

    move/from16 v11, v16

    .restart local v11       #keepOn:Z
    :goto_6
    goto :goto_4

    .end local v11           #keepOn:Z
    :cond_7
    const/16 v16, 0x0

    move/from16 v11, v16

    goto :goto_6

    .line 1058
    .restart local v11       #keepOn:Z
    :cond_8
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_5

    .line 1063
    .end local v11           #keepOn:Z
    .end local v12           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v13           #selected:Ljava/lang/Boolean;
    :cond_9
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 1064
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_5

    .line 1070
    :cond_a
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 1071
    move-object v0, v15

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1268
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 1269
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1270
    const/4 p1, 0x0

    .line 1273
    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    if-nez v5, :cond_3

    .line 1274
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1275
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v4

    .line 1276
    .local v4, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v4, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 1277
    invoke-virtual {v4}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIsStreamingEnabled:Z

    .line 1284
    .end local v4           #networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eq p1, v5, :cond_2

    .line 1285
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v5, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$202(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1286
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1287
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1289
    :cond_2
    if-nez p1, :cond_5

    .line 1291
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1292
    .local v1, children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
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

    .line 1293
    .local v0, child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1294
    .local v2, foo:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    goto :goto_1

    .line 1278
    .end local v0           #child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;"
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v2           #foo:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    if-eqz v5, :cond_1

    .line 1279
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mStreamabilityListenerRegistered:Z

    .line 1280
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v5}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    goto :goto_0

    .line 1296
    .restart local v1       #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1298
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 20
    .parameter "groupCursor"

    .prologue
    .line 1190
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1192
    .local v9, artistId:J
    const/4 v2, 0x2

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v11, v2

    .line 1194
    .local v11, artistIsKeptOn:Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 1195
    .local v4, groupPosition:I
    invoke-static {v9, v10}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v13

    .line 1196
    .local v13, uri:Landroid/net/Uri;
    const/4 v2, 0x3

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1197
    .local v5, groupHasLocal:J
    const/4 v2, 0x4

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1198
    .local v7, groupHasRemote:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object v12, v0

    sget-object v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;IJJJZ)V

    move-object/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    move-object v2, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/Cursor;

    .line 1254
    .local v19, c:Landroid/database/Cursor;
    return-object v19

    .line 1192
    .end local v4           #groupPosition:I
    .end local v5           #groupHasLocal:J
    .end local v7           #groupHasRemote:J
    .end local v11           #artistIsKeptOn:Z
    .end local v13           #uri:Landroid/net/Uri;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_0
    const/4 v2, 0x0

    move v11, v2

    goto :goto_0
.end method

.method public getRepresentativeAlbumId()J
    .locals 30

    .prologue
    .line 1315
    const-wide/16 v12, -0x1

    .line 1316
    .local v12, albumId:J
    const-wide/16 v14, -0x1

    .line 1318
    .local v14, artistId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v23

    .line 1319
    .local v23, listView:Landroid/widget/ExpandableListView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v27

    .line 1320
    .local v27, top:I
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v16

    .line 1321
    .local v16, bottom:I
    sub-int v5, v16, v27

    div-int/lit8 v5, v5, 0x2

    add-int v29, v5, v27

    .line 1323
    .local v29, viewIndex:I
    const/16 v28, 0x0

    .line 1324
    .local v28, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    .line 1325
    .local v24, packed:J
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v26

    .line 1327
    .local v26, ppType:I
    if-nez v26, :cond_5

    .line 1328
    invoke-static/range {v24 .. v25}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v21

    .line 1330
    .local v21, groupId:I
    const/4 v5, -0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v11

    check-cast v11, Landroid/widget/CursorTreeAdapter;

    .line 1332
    .local v11, adapter:Landroid/widget/CursorTreeAdapter;
    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1333
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move v2, v5

    move-object v3, v6

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/CursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 1334
    .local v22, groupView:Landroid/view/View;
    if-eqz v22, :cond_0

    .line 1335
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v28, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1354
    .end local v11           #adapter:Landroid/widget/CursorTreeAdapter;
    .end local v21           #groupId:I
    .end local v22           #groupView:Landroid/view/View;
    .restart local v28       #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_0
    :goto_0
    if-eqz v28, :cond_1

    .line 1355
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    move-wide v12, v0

    .line 1356
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    move-wide v14, v0

    .line 1358
    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v5, v12, v8

    if-nez v5, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v5, v14, v8

    if-ltz v5, :cond_4

    .line 1359
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    .line 1362
    .local v7, cols:[Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v6

    .line 1363
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object v5, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1366
    .local v17, c:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1367
    .local v19, childPos:I
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 1368
    .local v18, childCount:I
    if-lez v18, :cond_3

    .line 1370
    const/4 v5, 0x1

    move/from16 v0, v18

    move v1, v5

    if-le v0, v1, :cond_2

    .line 1371
    const/16 v19, 0x1

    .line 1373
    :cond_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1374
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 1377
    :cond_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1379
    if-eqz v28, :cond_4

    .line 1380
    move-wide v0, v12

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 1383
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #cols:[Ljava/lang/String;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v18           #childCount:I
    .end local v19           #childPos:I
    :cond_4
    return-wide v12

    .line 1340
    :cond_5
    sub-int v29, v29, v27

    .line 1341
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1342
    .local v20, childView:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 1343
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v28, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1344
    .restart local v28       #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    move-wide v8, v0

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_0

    .line 1347
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1348
    if-eqz v20, :cond_0

    .line 1349
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v28, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .restart local v28       #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 1377
    .end local v20           #childView:Landroid/view/View;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #cols:[Ljava/lang/String;
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v19       #childPos:I
    :catchall_0
    move-exception v5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

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

    .line 983
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 984
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 985
    .local v1, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 986
    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 987
    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 988
    iget-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$2;

    invoke-direct {v3, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$2;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    const v2, 0x7f0f0049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PlayingIndicator;

    iput-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 994
    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 995
    new-instance v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v2, v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 996
    iget-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v3, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    const v2, 0x7f0f003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 998
    iget-object v2, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 999
    iput-wide v5, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 1000
    iput-wide v5, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 1001
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1002
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

    .line 952
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 953
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 954
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 955
    .local v1, p:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 956
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 957
    new-instance v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 958
    .local v3, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v4, 0x7f0f0032

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 959
    const v4, 0x7f0f0033

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 960
    iget-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v4, v6}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 961
    const v4, 0x7f0f0027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 962
    iget-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 967
    const v4, 0x7f0f0049

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/PlayingIndicator;

    iput-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 968
    const v4, 0x7f0f000f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 969
    new-instance v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v4, v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 970
    iget-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v5, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v4, v5}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 972
    iget-object v4, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v4, v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 973
    iput-wide v8, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 974
    iput-wide v8, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 975
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 976
    return-object v2
.end method

.method public onGroupCollapsed(I)V
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 1260
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1261
    .local v0, cursor:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1264
    :cond_0
    return-void
.end method

.method public onStreamabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 1387
    iput-boolean p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mIsStreamingEnabled:Z

    .line 1388
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    new-instance v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$4;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 1302
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1306
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1311
    :goto_0
    return-object v2

    .line 1308
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$600(Lcom/google/android/music/ArtistAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1309
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 1311
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 947
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    .line 948
    return-void
.end method
