.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/MusicUtils$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

.field final synthetic val$genreId:J

.field final synthetic val$groupHasLocal:J

.field final synthetic val$groupHasRemote:J

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;IJJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iput p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasLocal:J

    iput-wide p5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasRemote:J

    iput-wide p7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Landroid/database/Cursor;)V
    .locals 12
    .parameter "c"

    .prologue
    const/4 v11, 0x1

    .line 1067
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget-object v9, v9, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v5

    .line 1069
    .local v5, lv:Landroid/widget/ExpandableListView;
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v9, v10}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1081
    const-string v9, "GenreAlbumBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Group was invalid on callback:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 1086
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v9, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1087
    .local v1, allSongsCursor:Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    sget-object v9, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    array-length v9, v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1089
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$400(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-result-object v9

    const v10, 0x7f0c000d

    invoke-virtual {v9, v10}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-wide v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasLocal:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-wide v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupHasRemote:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1096
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/database/Cursor;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    aput-object p1, v9, v11

    invoke-direct {v2, v9}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p1
    .local v2, c:Landroid/database/Cursor;
    move-object p1, v2

    .line 1099
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1           #allSongsCursor:Landroid/database/MatrixCursor;
    .end local v2           #c:Landroid/database/Cursor;
    .restart local p1
    :cond_3
    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget-wide v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-direct {v3, v9, p1, v10, v11}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;Landroid/database/Cursor;J)V

    .line 1100
    .local v3, child:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    iget-wide v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1101
    .local v6, old:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-static {v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    iget-wide v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$genreId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    iget v10, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v9, v10, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 1103
    if-eqz v6, :cond_4

    .line 1104
    invoke-virtual {v6}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1107
    :cond_4
    iget v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;->val$groupPosition:I

    invoke-static {v9}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    .line 1108
    .local v7, pgp:J
    invoke-virtual {v5, v7, v8}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    .line 1109
    .local v4, fgp:I
    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    if-lt v4, v9, :cond_0

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v9

    if-gt v4, v9, :cond_0

    .line 1111
    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->getCount()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v5, v9, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto/16 :goto_0
.end method
