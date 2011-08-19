.class public Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;
.super Ljava/lang/Object;
.source "UploadQueueHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "UploadQueueHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUploadAlbumQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "userName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, uploadQueueList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;>;"
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 69
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 70
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadAlbumQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 90
    return-object v4

    .line 73
    :cond_0
    new-instance v5, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-direct {v5}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;-><init>()V

    .line 74
    .local v5, uq:Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;
    const/4 v1, 0x0

    .line 75
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setId(J)V

    .line 76
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setMediaRowId(J)V

    .line 77
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setFileUrl(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setFileName(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setParentFolderId(J)V

    .line 80
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setBatchId(J)V

    .line 81
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setUserName(Ljava/lang/String;)V

    .line 82
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setAlbumId(J)V

    .line 83
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->setAlbumName(Ljava/lang/String;)V

    .line 84
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "userName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, uploadQueueList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadQueue;>;"
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 45
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 46
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 63
    return-object v4

    .line 48
    :cond_0
    new-instance v5, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    invoke-direct {v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 49
    .local v5, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    const/4 v1, 0x0

    .line 50
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setId(J)V

    .line 51
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 52
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 53
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 54
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 55
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 56
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 57
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadQueue(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadQueue;
    .locals 7
    .parameter "ctx"
    .parameter "mediaRowId"

    .prologue
    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 121
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 122
    invoke-virtual {v3, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueue(J)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, i:I
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    .end local v4           #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 127
    .restart local v4       #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setId(J)V

    .line 128
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 129
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 130
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 131
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 132
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 133
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 136
    .end local v2           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 140
    return-object v4
.end method

.method public static getUploadQueueByBatchId(Landroid/content/Context;J)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "batchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, uploadQueueList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadQueue;>;"
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 96
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 97
    invoke-virtual {v3, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueueByBatchId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 115
    return-object v4

    .line 100
    :cond_0
    new-instance v5, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    invoke-direct {v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 101
    .local v5, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    const/4 v1, 0x0

    .line 102
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setId(J)V

    .line 103
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 104
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 107
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 108
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 109
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadQueueByRowId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadQueue;
    .locals 7
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 147
    invoke-virtual {v3, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueueByRowId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, i:I
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    .end local v4           #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 152
    .restart local v4       #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setId(J)V

    .line 153
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 154
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 157
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 158
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 160
    .end local v2           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 164
    return-object v4
.end method

.method public static insertUploadQueue(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadQueue;)J
    .locals 7
    .parameter "ctx"
    .parameter "uq"

    .prologue
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .local v0, uploadQueueId:J
    if-eqz p1, :cond_0

    .line 24
    sget-object v3, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertFolderChgSeq\r\n\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getMediaRowId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    .local v2, wia:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 27
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->insertFolderChgSeq(Lnet/yostore/aws/sqlite/entity/UploadQueue;)J

    move-result-wide v0

    .line 28
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 30
    .end local v2           #wia:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    :cond_0
    return-wide v0
.end method

.method public static popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;
    .locals 7
    .parameter "ctx"
    .parameter "userName"

    .prologue
    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 170
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 171
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, i:I
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    .end local v4           #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 176
    .restart local v4       #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setId(J)V

    .line 177
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 178
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 181
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 182
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 184
    .end local v2           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 188
    return-object v4
.end method

.method public static popUploadQueueByFolderId(Landroid/content/Context;JLjava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;
    .locals 9
    .parameter "ctx"
    .parameter "folderId"
    .parameter "userName"

    .prologue
    .line 192
    const/4 v6, 0x0

    .line 193
    .local v6, uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    invoke-static {p0, p3}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->popChangedFolder(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    move-result-object v1

    .line 194
    .local v1, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    if-eqz v1, :cond_2

    .line 195
    invoke-static {p0, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->popMediaByAlbumId(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v4

    .line 196
    .local v4, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    if-eqz v4, :cond_2

    .line 197
    new-instance v5, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 198
    .local v5, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 199
    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueueByMediaRowId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 201
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, i:I
    new-instance v6, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    .end local v6           #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    invoke-direct {v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 204
    .restart local v6       #uq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setId(J)V

    .line 205
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 206
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 207
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 209
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 210
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 212
    .end local v3           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_1
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 219
    .end local v0           #cr:Landroid/database/Cursor;
    .end local v4           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v5           #rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    :cond_2
    return-object v6
.end method

.method public static removeUploadQueue(Landroid/content/Context;J)V
    .locals 3
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 34
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeUploadQueue\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 37
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->deleteUploadQueue(J)Z

    .line 38
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 39
    return-void
.end method

.method public static updateUploadFolderIdByBatchId(Landroid/content/Context;JJ)V
    .locals 1
    .parameter "ctx"
    .parameter "batchId"
    .parameter "folderId"

    .prologue
    .line 225
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 227
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->updateUploadFolderIdByBatchId(JJ)V

    .line 228
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 229
    return-void
.end method
