.class Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaylistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field mHasRemoteIdx:I

.field mIdIdx:I

.field mKeepOnIdx:I

.field mTitleIdx:I

.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/content/Context;Lcom/google/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 681
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 682
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 665
    iput-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 666
    iput-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    .line 683
    iput-object p2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mContext:Landroid/content/Context;

    .line 684
    iput-object p3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 685
    invoke-direct {p0, p5}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 686
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/google/android/music/PlaylistBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 688
    if-eqz p1, :cond_0

    .line 689
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    .line 690
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    .line 691
    const-string v0, "KeepOnId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mKeepOnIdx:I

    .line 692
    const-string v0, "hasRemote"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mHasRemoteIdx:I

    .line 694
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    .line 729
    .local v11, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    move v12, v0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 730
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mTitleIdx:I

    move v12, v0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 735
    .local v9, name:Ljava/lang/String;
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mIdIdx:I

    move v12, v0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 739
    .local v3, id:J
    const-wide/16 v12, -0x1

    cmp-long v12, v3, v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    move v5, v12

    .line 740
    .local v5, isRecentlyAdded:Z
    :goto_1
    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f0c0064

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 742
    .local v7, mainLabel:Ljava/lang/String;
    :goto_2
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v12, v3, v4, v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPlaylistAlbumArt(JLjava/lang/String;)V

    .line 744
    iput-wide v3, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    .line 745
    const-wide/16 v12, -0x1

    iput-wide v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 746
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    iget-wide v13, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v12, v13, v14}, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->setPlaylistId(J)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/google/android/music/PlaylistBrowserActivity;->access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 748
    if-eqz v5, :cond_3

    .line 749
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 779
    :goto_3
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 739
    .end local v5           #isRecentlyAdded:Z
    .end local v7           #mainLabel:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    move v5, v12

    goto :goto_1

    .restart local v5       #isRecentlyAdded:Z
    :cond_2
    move-object v7, v9

    .line 740
    goto :goto_2

    .line 751
    .restart local v7       #mainLabel:Ljava/lang/String;
    :cond_3
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mHasRemoteIdx:I

    move v12, v0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    move v2, v12

    .line 753
    .local v2, hasRemote:Z
    :goto_4
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v12, v2}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 754
    if-eqz v2, :cond_8

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/google/android/music/PlaylistBrowserActivity;->access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v8

    .line 756
    .local v8, manager:Lcom/google/android/music/OfflineMusicManager;
    iget-wide v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v8, v12, v13}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v10

    .line 759
    .local v10, selected:Ljava/lang/Boolean;
    if-eqz v10, :cond_5

    .line 760
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 765
    .local v6, keepOn:Z
    :goto_5
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v12, v6}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 766
    if-nez v6, :cond_7

    invoke-virtual {v8}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 767
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_3

    .line 752
    .end local v2           #hasRemote:Z
    .end local v6           #keepOn:Z
    .end local v8           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v10           #selected:Ljava/lang/Boolean;
    :cond_4
    const/4 v12, 0x0

    move v2, v12

    goto :goto_4

    .line 762
    .restart local v2       #hasRemote:Z
    .restart local v8       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v10       #selected:Ljava/lang/Boolean;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mKeepOnIdx:I

    move v12, v0

    move-object/from16 v0, p3

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    move v6, v12

    .restart local v6       #keepOn:Z
    :goto_6
    goto :goto_5

    .end local v6           #keepOn:Z
    :cond_6
    const/4 v12, 0x0

    move v6, v12

    goto :goto_6

    .line 769
    .restart local v6       #keepOn:Z
    :cond_7
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_3

    .line 774
    .end local v6           #keepOn:Z
    .end local v8           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v10           #selected:Ljava/lang/Boolean;
    :cond_8
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 775
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto/16 :goto_3

    .line 781
    .end local v2           #hasRemote:Z
    :cond_9
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 782
    iget-object v12, v11, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 789
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 790
    const/4 p1, 0x0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$502(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 794
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 795
    invoke-direct {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 797
    :cond_1
    return-void
.end method

.method public getRepresentativeAlbumId()J
    .locals 19

    .prologue
    .line 825
    const-wide/16 v10, -0x1

    .line 827
    .local v10, albumId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v15

    .line 828
    .local v15, listView:Landroid/widget/ListView;
    invoke-virtual {v15}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v16

    .line 829
    .local v16, top:I
    invoke-virtual {v15}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v12

    .line 830
    .local v12, bottom:I
    sub-int v3, v12, v16

    div-int/lit8 v18, v3, 0x2

    .line 832
    .local v18, viewIndex:I
    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 833
    .local v13, childView:Landroid/view/View;
    if-eqz v13, :cond_2

    .line 834
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    .line 835
    .local v17, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 836
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 837
    const/4 v14, 0x0

    .line 838
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v9, 0x1

    .line 839
    .local v9, PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "album_id"

    aput-object v4, v5, v3

    .line 843
    .local v5, PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_3

    .line 844
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    move-wide v6, v0

    invoke-static {v6, v7}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 846
    .local v4, uriPlaylistMembers:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 851
    .end local v4           #uriPlaylistMembers:Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v14, :cond_2

    .line 853
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 854
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 855
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    move-wide v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 863
    .end local v5           #PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    .end local v9           #PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v17           #vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    :cond_2
    return-wide v10

    .line 848
    .restart local v5       #PROJECTION_PLAYLIST_MEMBERS:[Ljava/lang/String;
    .restart local v9       #PLAYLIST_MEMBERS_ALBUM_ID_INDEX:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v17       #vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    :cond_3
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    move-wide v6, v0

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v3, v0

    invoke-static {v3, v5}, Lcom/google/android/music/PlaylistBrowserActivity;->access$800(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    .line 702
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V

    .line 704
    .local v1, vh:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;
    iput-wide v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->playlistId:J

    .line 705
    iput-wide v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->albumId:J

    .line 706
    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 707
    iget-object v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 715
    const v2, 0x7f0f0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 716
    const v2, 0x7f0f0049

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 717
    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 718
    new-instance v2, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v2, v3}, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    .line 719
    iget-object v2, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v3, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    const v2, 0x7f0f0032

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 721
    const v2, 0x7f0f003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object p0, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 722
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 801
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->onContentChanged()V

    .line 802
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 804
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$600(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$600(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/NoContentListener;

    move-result-object v1

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/music/NoContentListener;->setPlaylistsFound(Z)V

    .line 808
    .end local v0           #count:I
    :cond_0
    return-void

    .line 805
    .restart local v0       #count:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 812
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 821
    :goto_0
    return-object v2

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v2, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$700(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 819
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraint:Ljava/lang/String;

    .line 820
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 821
    goto :goto_0
.end method

.method public setActivity(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;

    .line 698
    return-void
.end method
