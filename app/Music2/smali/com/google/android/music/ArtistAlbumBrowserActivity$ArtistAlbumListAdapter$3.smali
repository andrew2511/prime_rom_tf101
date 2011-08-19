.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/MusicUtils$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field final synthetic val$artistId:J

.field final synthetic val$artistIsKeptOn:Z

.field final synthetic val$groupHasLocal:J

.field final synthetic val$groupHasRemote:J

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;IJJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iput p2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupPosition:I

    iput-wide p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupHasLocal:J

    iput-wide p5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupHasRemote:J

    iput-wide p7, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$artistId:J

    iput-boolean p9, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$artistIsKeptOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Landroid/database/Cursor;)V
    .locals 14
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 1202
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iget-object v1, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v10

    .line 1204
    .local v10, lv:Landroid/widget/ExpandableListView;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iget v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1216
    const-string v1, "ArtistAlbumBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group was invalid on callback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 1221
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1222
    .local v7, allSongsCursor:Landroid/database/MatrixCursor;
    new-instance v6, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1224
    .local v6, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    iget-wide v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupHasLocal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-wide v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupHasRemote:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {v7, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1231
    new-instance v8, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    aput-object p1, v1, v3

    invoke-direct {v8, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p1
    .local v8, c:Landroid/database/Cursor;
    move-object p1, v8

    .line 1234
    .end local v6           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7           #allSongsCursor:Landroid/database/MatrixCursor;
    .end local v8           #c:Landroid/database/Cursor;
    .restart local p1
    :cond_3
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$artistId:J

    iget-boolean v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$artistIsKeptOn:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;JZ)V

    .line 1236
    .local v0, child:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$artistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1237
    .local v11, old:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$artistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iget v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 1239
    if-eqz v11, :cond_4

    .line 1240
    invoke-virtual {v11}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1243
    :cond_4
    iget v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;->val$groupPosition:I

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    .line 1244
    .local v12, pgp:J
    invoke-virtual {v10, v12, v13}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v9

    .line 1245
    .local v9, fgp:I
    invoke-virtual {v10}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v9, v1, :cond_0

    invoke-virtual {v10}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v9, v1, :cond_0

    .line 1247
    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->getCount()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v10, v1, v9}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto/16 :goto_0
.end method
