.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorParser"
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;",
            ">;"
        }
    .end annotation
.end field

.field private final localIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final localVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    .line 971
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    .line 972
    return-void
.end method

.method private emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 1015
    if-nez p1, :cond_0

    .line 1016
    const-string v0, ""

    .line 1018
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private parse()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_FOLDER:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_0

    const/16 v25, 0x1

    move/from16 v13, v25

    .line 1025
    .local v13, isFolder:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_TITLE:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1026
    .local v23, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_URL:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1027
    .local v24, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_FAVICON:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 1028
    .local v10, favicon:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1029
    .local v14, localId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_PARENT_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v25, 0x0

    move-object/from16 v16, v25

    .line 1033
    .local v16, localParentId:Ljava/lang/Long;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_INSERT_AFTER:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x0

    move-object/from16 v15, v25

    .line 1037
    .local v15, localInsertAfter:Ljava/lang/Long;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_3

    const/16 v25, 0x0

    move-object/from16 v17, v25

    .line 1041
    .local v17, localVersion:Ljava/lang/Long;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_IS_DELETED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    move/from16 v12, v25

    .line 1043
    .local v12, isDeleted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1045
    .local v18, remoteId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_PARENT_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1047
    .local v19, remoteParentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x0

    move-object/from16 v20, v25

    .line 1051
    .local v20, remoteVersion:Ljava/lang/Long;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_SERVER_UNIQUE_TAG:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1053
    .local v21, serverUniqueTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_CLIENT_UNIQUE_TAG:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1055
    .local v4, clientUniqueTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_CREATED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_6

    const/16 v25, 0x0

    move-object/from16 v7, v25

    .line 1059
    .local v7, dateCreated:Ljava/lang/Long;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_MODIFIED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x0

    move-object/from16 v8, v25

    .line 1064
    .local v8, dateModified:Ljava/lang/Long;
    :goto_7
    if-eqz v21, :cond_8

    .line 1065
    const-string v25, "BookmarksSync"

    const-string v26, "The client is trying to modify a root folder.  Ignoring, but this should not happen."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/16 v25, 0x0

    .line 1236
    .end local v4           #clientUniqueTag:Ljava/lang/String;
    .end local p0
    :goto_8
    return-object v25

    .line 1023
    .end local v7           #dateCreated:Ljava/lang/Long;
    .end local v8           #dateModified:Ljava/lang/Long;
    .end local v10           #favicon:[B
    .end local v12           #isDeleted:Z
    .end local v13           #isFolder:Z
    .end local v14           #localId:Ljava/lang/String;
    .end local v15           #localInsertAfter:Ljava/lang/Long;
    .end local v16           #localParentId:Ljava/lang/Long;
    .end local v17           #localVersion:Ljava/lang/Long;
    .end local v18           #remoteId:Ljava/lang/String;
    .end local v19           #remoteParentId:Ljava/lang/String;
    .end local v20           #remoteVersion:Ljava/lang/Long;
    .end local v21           #serverUniqueTag:Ljava/lang/String;
    .end local v23           #title:Ljava/lang/String;
    .end local v24           #url:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/16 v25, 0x0

    move/from16 v13, v25

    goto/16 :goto_0

    .line 1029
    .restart local v10       #favicon:[B
    .restart local v13       #isFolder:Z
    .restart local v14       #localId:Ljava/lang/String;
    .restart local v23       #title:Ljava/lang/String;
    .restart local v24       #url:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_PARENT_ID:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v16, v25

    goto/16 :goto_1

    .line 1033
    .restart local v16       #localParentId:Ljava/lang/Long;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_INSERT_AFTER:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v15, v25

    goto/16 :goto_2

    .line 1037
    .restart local v15       #localInsertAfter:Ljava/lang/Long;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v17, v25

    goto/16 :goto_3

    .line 1041
    .restart local v17       #localVersion:Ljava/lang/Long;
    :cond_4
    const/16 v25, 0x0

    move/from16 v12, v25

    goto/16 :goto_4

    .line 1047
    .restart local v12       #isDeleted:Z
    .restart local v18       #remoteId:Ljava/lang/String;
    .restart local v19       #remoteParentId:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_REMOTE_VERSION:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v20, v25

    goto/16 :goto_5

    .line 1055
    .restart local v4       #clientUniqueTag:Ljava/lang/String;
    .restart local v20       #remoteVersion:Ljava/lang/Long;
    .restart local v21       #serverUniqueTag:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_CREATED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v7, v25

    goto/16 :goto_6

    .line 1059
    .restart local v7       #dateCreated:Ljava/lang/Long;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    sget v26, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_DATE_MODIFIED:I

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v8, v25

    goto/16 :goto_7

    .line 1070
    .restart local v8       #dateModified:Ljava/lang/Long;
    :cond_8
    if-eqz v12, :cond_e

    .line 1072
    if-nez v18, :cond_9

    .line 1074
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 1076
    :cond_9
    const/4 v9, 0x0

    .line 1077
    .local v9, deleteBuilder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    if-eqz v13, :cond_b

    .line 1078
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Folder;->newDeleteBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v9

    .line 1082
    :goto_9
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1083
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adding DELETE of id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to changelist."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_a
    if-nez v7, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_a
    move-object v0, v9

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v3

    check-cast v3, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v25

    if-nez v8, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    :goto_b
    invoke-virtual/range {v25 .. v27}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v3

    check-cast v3, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v25

    sget-object v26, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v3

    check-cast v3, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;->setVersion(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v25

    goto/16 :goto_8

    .line 1080
    .restart local p0
    :cond_b
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf;->newDeleteBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;

    move-result-object v9

    goto/16 :goto_9

    .line 1085
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto :goto_a

    :cond_d
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto :goto_b

    .line 1102
    .end local v9           #deleteBuilder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$DeleteBuilder;
    :cond_e
    const/4 v5, 0x0

    .line 1103
    .local v5, correctedRemoteInsertAfter:Ljava/lang/String;
    if-eqz v15, :cond_10

    .line 1104
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->access$600()Ljava/lang/String;

    move-result-object v25

    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 1105
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->access$600()Ljava/lang/String;

    move-result-object v5

    .line 1111
    :goto_c
    if-nez v5, :cond_10

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 1114
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 1115
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Client wants to INSERT or MODIFY child with local id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", but it is being inserted after a record "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " with no remote id.  However, the"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " preceding record is in the changelist, so it\'s fine."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_f
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1135
    :cond_10
    :goto_d
    if-nez v16, :cond_13

    .line 1136
    const-string v25, "BookmarksSync"

    const-string v26, "Trying to insert or modify a record without a parent.  Skipping."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 1139
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 1107
    :cond_11
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$700(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/ContentProviderClient;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$800(JLandroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_c

    .line 1122
    :cond_12
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1123
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Client wants to INSERT or MODIFY child with local id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", but it is being inserted after a record "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " that has no remote id.  Setting"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " insert-after to null, which may change ordering."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1144
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$700(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/ContentProviderClient;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$800(JLandroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object v6

    .line 1146
    .local v6, correctedRemoteParentId:Ljava/lang/String;
    if-nez v6, :cond_15

    .line 1147
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 1148
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Client wants to INSERT or MODIFY child with local id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", but its parent "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " has no remote id.  Skipping."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 1153
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 1156
    :cond_15
    const/4 v11, 0x0

    .line 1158
    .local v11, insertOrModifyBuilder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<*>;"
    if-nez v18, :cond_1e

    .line 1160
    const/4 v3, 0x0

    .line 1161
    .local v3, builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    if-eqz v13, :cond_1b

    .line 1162
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Folder;->newInsertBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v3

    .line 1166
    :goto_e
    if-eqz v4, :cond_16

    .line 1167
    invoke-virtual {v3, v4}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    .line 1169
    :cond_16
    if-eqz v5, :cond_17

    .line 1170
    invoke-virtual {v3, v5}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    .line 1172
    :cond_17
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v22

    .line 1174
    .local v22, specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    if-eqz v10, :cond_18

    .line 1175
    invoke-static {v10}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1177
    :cond_18
    if-eqz v24, :cond_19

    .line 1178
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1180
    :cond_19
    if-nez v7, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_f
    move-object v0, v3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v4

    .end local v4           #clientUniqueTag:Ljava/lang/String;
    check-cast v4, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    invoke-virtual {v4, v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setLocalId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v25

    if-nez v8, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    :goto_10
    invoke-virtual/range {v25 .. v27}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v4

    check-cast v4, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v4

    check-cast v4, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v25

    sget-object v26, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual/range {v22 .. v22}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-virtual {v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    .line 1191
    move-object v11, v3

    .line 1192
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 1193
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adding INSERT of id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to changelist."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    :cond_1a
    :goto_11
    move-object/from16 v25, v11

    .line 1236
    goto/16 :goto_8

    .line 1164
    .end local v22           #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .restart local v3       #builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .restart local v4       #clientUniqueTag:Ljava/lang/String;
    .restart local p0
    :cond_1b
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf;->newInsertBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;

    move-result-object v3

    goto/16 :goto_e

    .line 1180
    .restart local v22       #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto/16 :goto_f

    .end local v4           #clientUniqueTag:Ljava/lang/String;
    :cond_1d
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_10

    .line 1197
    .end local v3           #builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$InsertBuilder;
    .end local v22           #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .restart local v4       #clientUniqueTag:Ljava/lang/String;
    :cond_1e
    const/4 v3, 0x0

    .line 1198
    .local v3, builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;
    if-eqz v13, :cond_23

    .line 1199
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Folder;->newModifyBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v3

    .line 1203
    :goto_12
    if-eqz v4, :cond_1f

    .line 1204
    invoke-virtual {v3, v4}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setClientDefinedUniqueTag(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    .line 1206
    :cond_1f
    if-eqz v5, :cond_20

    .line 1207
    invoke-virtual {v3, v5}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setInsertAfterItemId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    .line 1209
    :cond_20
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    move-result-object v22

    .line 1211
    .restart local v22       #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    if-eqz v10, :cond_21

    .line 1212
    invoke-static {v10}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setFavicon(Lcom/google/protobuf/ByteString;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1214
    :cond_21
    if-eqz v24, :cond_22

    .line 1215
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->setUrl(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;

    .line 1217
    :cond_22
    if-nez v7, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :goto_13
    move-object v0, v3

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setCreationTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v4

    .end local v4           #clientUniqueTag:Ljava/lang/String;
    check-cast v4, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v25

    if-nez v8, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    :goto_14
    invoke-virtual/range {v25 .. v27}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setModifyTime(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v4

    check-cast v4, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object v4

    check-cast v4, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setParentId(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    move-result-object v25

    sget-object v26, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks;->bookmark:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual/range {v22 .. v22}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;

    invoke-virtual {v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setSpecifics(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$EntitySpecifics;)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;->setVersion(J)Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    .line 1230
    move-object v11, v3

    .line 1231
    const-string v25, "BookmarksSync"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 1232
    const-string v25, "BookmarksSync"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adding MODIFY of id "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to changelist."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1201
    .end local v22           #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    .restart local v4       #clientUniqueTag:Ljava/lang/String;
    .restart local p0
    :cond_23
    invoke-static {}, Lcom/google/chrome/bookmarks/sync/api/data/Leaf;->newModifyBuilder()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$ModifyBuilder;

    move-result-object v3

    goto/16 :goto_12

    .line 1217
    .restart local v22       #specifics:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Bookmarks$BookmarkSpecifics$Builder;
    :cond_24
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    goto/16 :goto_13

    .end local v4           #clientUniqueTag:Ljava/lang/String;
    :cond_25
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_14
.end method

.method private parseAndValidate()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 980
    const/4 v0, 0x0

    .line 982
    .local v0, builder:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;,"Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder<*>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->parse()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 992
    if-nez v0, :cond_1

    move-object v3, v8

    .line 1011
    :goto_0
    return-object v3

    .line 983
    :catch_0
    move-exception v1

    .line 984
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "BookmarksSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local bookmark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be parsed.  Skipping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v3, "BookmarksSync"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    const-string v3, "BookmarksSync"

    const-string v4, "Details:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    :cond_0
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    invoke-static {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v3

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v4, v9

    iput-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object v3, v8

    .line 990
    goto :goto_0

    .line 996
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->validate()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1007
    invoke-virtual {v0}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem$Builder;->build()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    move-result-object v2

    .line 1008
    .local v2, item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    const-string v3, "BookmarksSync"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1009
    const-string v3, "BookmarksSync"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v2

    .line 1011
    goto :goto_0

    .line 997
    .end local v2           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    :catch_1
    move-exception v1

    .line 998
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "BookmarksSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local bookmark "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v6, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing one or more required fields, and cannot be synced to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the server.  Skipping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v3, "BookmarksSync"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1002
    const-string v3, "BookmarksSync"

    const-string v4, "Details:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    :cond_3
    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->this$0:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;

    invoke-static {v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;

    move-result-object v3

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v4, v9

    iput-wide v4, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object v3, v8

    .line 1005
    goto/16 :goto_0
.end method


# virtual methods
.method public getLocalIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocalVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncableItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseNextNItems(I)V
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1245
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1246
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-gt v0, p1, :cond_1

    .line 1249
    invoke-direct {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->parseAndValidate()Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    move-result-object v1

    .line 1250
    .local v1, item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    if-eqz v1, :cond_0

    .line 1251
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_ID:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->localVersions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    sget v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_LOCAL_VERSION:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_0
    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1258
    .end local v1           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    :cond_1
    return-void
.end method
