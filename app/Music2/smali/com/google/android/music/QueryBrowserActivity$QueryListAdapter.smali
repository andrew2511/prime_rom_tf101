.class Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;,
        Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/QueryBrowserActivity;

.field private mAlbumArtistIdIndex:I

.field private mAlbumArtistIndex:I

.field private mAlbumCountIndex:I

.field private mAlbumIdIndex:I

.field private mAlbumIndex:I

.field private mArtistIndex:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mDurationIndex:I

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mIdIndex:I

.field private mIsPortrait:Z

.field private mItemCountIndex:I

.field private mNameIndex:I

.field private mSortNameIndex:I

.field private mTypeIndex:I

.field private mYearIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 690
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 667
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    .line 669
    iput-object v8, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 670
    iput-object v8, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 671
    iput-boolean v6, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 691
    iput-object p2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_0

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIsPortrait:Z

    .line 694
    return-void

    :cond_0
    move v0, v6

    .line 692
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/google/android/music/QueryBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 949
    if-eqz p1, :cond_0

    .line 950
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    .line 951
    const-string v0, "Artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mArtistIndex:I

    .line 952
    const-string v0, "AlbumArtist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    .line 953
    const-string v0, "AlbumArtistId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIdIndex:I

    .line 954
    const-string v0, "Album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    .line 955
    const-string v0, "searchName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    .line 956
    const-string v0, "itemCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    .line 957
    const-string v0, "albumCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumCountIndex:I

    .line 958
    const-string v0, "searchType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    .line 959
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mDurationIndex:I

    .line 960
    const-string v0, "AlbumId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    .line 961
    const-string v0, "year"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mYearIndex:I

    .line 962
    const-string v0, "searchSortName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mSortNameIndex:I

    .line 964
    :cond_0
    return-void
.end method

.method private playFirst(Landroid/database/Cursor;)V
    .locals 21
    .parameter "c"

    .prologue
    .line 884
    const/4 v13, 0x0

    .line 886
    .local v13, showMediaPlayerWhenDone:Z
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 887
    const/4 v14, 0x0

    .line 888
    .local v14, songList:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 889
    .local v17, type:I
    packed-switch v17, :pswitch_data_0

    .line 936
    const-string v18, "QueryBrowserActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playFirst: unexpected search item type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    .end local v17           #type:I
    :cond_0
    :goto_0
    return-void

    .line 895
    .restart local v14       #songList:Lcom/google/android/music/medialist/SongList;
    .restart local v17       #type:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 896
    .local v8, artistId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 897
    .local v7, artist:Ljava/lang/String;
    new-instance v14, Lcom/google/android/music/medialist/ArtistSongList;

    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    const/16 v18, 0x0

    move-object v0, v14

    move-wide v1, v8

    move-object v3, v7

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 899
    .restart local v14       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$800()Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "QueryBrowserActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playFirst(): got songList for ARTIST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1
    invoke-static {v14}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    goto :goto_0

    .line 909
    .end local v7           #artist:Ljava/lang/String;
    .end local v8           #artistId:J
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 910
    .local v5, albumId:J
    new-instance v14, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {v14, v5, v6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 911
    .restart local v14       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$800()Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "QueryBrowserActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playFirst(): got songList for ALBUM: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/QueryBrowserActivity;->access$900(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_0

    .line 917
    .end local v5           #albumId:J
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 918
    .local v15, trackId:J
    new-instance v14, Lcom/google/android/music/medialist/SingleSongList;

    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    const/16 v18, 0x0

    move-object v0, v14

    move-wide v1, v15

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    .line 919
    .restart local v14       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$800()Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "QueryBrowserActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playFirst(): got songList for TRACK: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/QueryBrowserActivity;->access$900(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_0

    .line 926
    .end local v15           #trackId:J
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 927
    .local v11, playlistId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 928
    .local v10, name:Ljava/lang/String;
    new-instance v14, Lcom/google/android/music/medialist/PlaylistSongList;

    .end local v14           #songList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {v14, v11, v12, v10}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    .line 929
    .restart local v14       #songList:Lcom/google/android/music/medialist/SongList;
    invoke-static {}, Lcom/google/android/music/QueryBrowserActivity;->access$800()Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "QueryBrowserActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playFirst(): got songList for PLAYLIST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/QueryBrowserActivity;->access$900(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_0

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    .line 726
    .local v10, vh:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 727
    .local v8, res:Landroid/content/res/Resources;
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    .line 728
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    .line 729
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mNameIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    .line 730
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mSortNameIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->sortName:Ljava/lang/String;

    .line 731
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v12, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 734
    const-wide/16 v11, -0x1

    iput-wide v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->albumId:J

    .line 741
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 742
    const/4 v7, -0x1

    .line 743
    .local v7, prevType:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v11

    if-nez v11, :cond_0

    .line 744
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mTypeIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 746
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 747
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 751
    :cond_1
    const/4 v11, 0x2

    if-eq v7, v11, :cond_7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_7

    .line 753
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v12, 0x7f0c0020

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 759
    :goto_1
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_2

    .line 760
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 762
    :cond_2
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_3

    .line 763
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 766
    :cond_3
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 767
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumCountIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 768
    .local v5, numAlbums:I
    const v11, 0x7f0b0003

    invoke-virtual {v8, v11, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, albumString:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 771
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v4, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 772
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    .end local v4           #albumString:Ljava/lang/String;
    .end local v5           #numAlbums:I
    :cond_4
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v11, :cond_5

    .line 776
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 777
    .local v6, numSongs:I
    const v11, 0x7f0b0002

    invoke-virtual {v8, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .line 779
    .restart local v4       #albumString:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 780
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v4, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 781
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    .end local v4           #albumString:Ljava/lang/String;
    .end local v6           #numSongs:I
    :cond_5
    :goto_2
    return-void

    .line 736
    .end local v7           #prevType:I
    :cond_6
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIdIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->albumId:J

    goto/16 :goto_0

    .line 756
    .restart local v7       #prevType:I
    :cond_7
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 783
    :cond_8
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_c

    .line 784
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    if-eq v11, v7, :cond_b

    .line 785
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v12, 0x7f0c0023

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 790
    :goto_3
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_9

    .line 791
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 793
    :cond_9
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_a

    .line 794
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 796
    :cond_a
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v11, :cond_5

    .line 798
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 799
    .restart local v6       #numSongs:I
    const v11, 0x7f0b0002

    invoke-virtual {v8, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    .line 801
    .local v9, songString:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 802
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v9, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 803
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 788
    .end local v6           #numSongs:I
    .end local v9           #songString:Ljava/lang/String;
    :cond_b
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 805
    :cond_c
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    .line 806
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    if-eq v11, v7, :cond_f

    .line 807
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v12, 0x7f0c0021

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 812
    :goto_4
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 813
    .local v3, albumArtist:Ljava/lang/String;
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, album:Ljava/lang/String;
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_d

    .line 815
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 816
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v12, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v11, v12, v13, v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_d
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_e

    .line 819
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 822
    :cond_e
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v11, :cond_5

    .line 825
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mItemCountIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 826
    .restart local v6       #numSongs:I
    const v11, 0x7f0b0002

    invoke-virtual {v8, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    .line 828
    .restart local v9       #songString:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 829
    iget-object v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatter:Ljava/util/Formatter;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v9, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 830
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 810
    .end local v2           #album:Ljava/lang/String;
    .end local v3           #albumArtist:Ljava/lang/String;
    .end local v6           #numSongs:I
    .end local v9           #songString:Ljava/lang/String;
    :cond_f
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 832
    :cond_10
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_16

    .line 833
    iget v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    if-eq v11, v7, :cond_14

    .line 834
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 835
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    const v12, 0x7f0c0022

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 839
    :goto_5
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumArtistIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 840
    .restart local v3       #albumArtist:Ljava/lang/String;
    iget v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mAlbumIndex:I

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 841
    .restart local v2       #album:Ljava/lang/String;
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_11

    .line 842
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 844
    :cond_11
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v11, :cond_12

    .line 845
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 846
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v12, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v11, v12, v13, v2, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_12
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    if-eqz v11, :cond_13

    .line 850
    iget-boolean v11, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mIsPortrait:Z

    if-eqz v11, :cond_15

    .line 851
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 856
    :cond_13
    :goto_6
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    iget v12, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mArtistIndex:I

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 837
    .end local v2           #album:Ljava/lang/String;
    .end local v3           #albumArtist:Ljava/lang/String;
    :cond_14
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 853
    .restart local v2       #album:Ljava/lang/String;
    .restart local v3       #albumArtist:Ljava/lang/String;
    :cond_15
    iget-object v11, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 858
    .end local v2           #album:Ljava/lang/String;
    .end local v3           #albumArtist:Ljava/lang/String;
    :cond_16
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 865
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 866
    const/4 p1, 0x0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->access$600(Lcom/google/android/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-static {v0, p1}, Lcom/google/android/music/QueryBrowserActivity;->access$602(Lcom/google/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 870
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 872
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 873
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/QueryBrowserActivity;->access$700(Lcom/google/android/music/QueryBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$702(Lcom/google/android/music/QueryBrowserActivity;Z)Z

    .line 875
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->playFirst(Landroid/database/Cursor;)V

    .line 877
    :cond_2
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 702
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 703
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;-><init>(Lcom/google/android/music/QueryBrowserActivity$1;)V

    .line 704
    .local v0, vh:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 706
    const v2, 0x7f0f0058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->left_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 707
    const v2, 0x7f0f0059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->right_icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 709
    const/high16 v2, 0x7f0f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 710
    const v2, 0x7f0f0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->artist:Landroid/widget/TextView;

    .line 711
    const v2, 0x7f0f009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->year:Landroid/widget/TextView;

    .line 712
    const v2, 0x7f0f0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->album:Landroid/widget/TextView;

    .line 713
    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    .line 714
    iget-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->contextMenu:Landroid/view/View;

    new-instance v3, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;

    invoke-direct {v3, p0, v0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;-><init>(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    :cond_0
    const v2, 0x7f0f009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->header:Landroid/view/View;

    .line 718
    const v2, 0x7f0f009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->headerTitle:Landroid/widget/TextView;

    .line 720
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 968
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 972
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 977
    :goto_0
    return-object v2

    .line 974
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/QueryBrowserActivity;->access$400(Lcom/google/android/music/QueryBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 975
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 976
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 977
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/QueryBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;

    .line 698
    return-void
.end method
