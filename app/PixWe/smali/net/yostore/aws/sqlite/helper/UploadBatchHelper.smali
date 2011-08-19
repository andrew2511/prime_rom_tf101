.class public Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;
.super Ljava/lang/Object;
.source "UploadBatchHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "UploadBatchHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->TAG:Ljava/lang/String;

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

.method public static getUploadBatchByBatchId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadBatch;
    .locals 7
    .parameter "ctx"
    .parameter "batchId"

    .prologue
    .line 110
    const/4 v4, 0x0

    .line 112
    .local v4, ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 113
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 114
    invoke-virtual {v3, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->getUploadBatchByBatchId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, i:I
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadBatch;

    .end local v4           #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadBatch;-><init>()V

    .line 119
    .restart local v4       #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setBatchId(J)V

    .line 120
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderName(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderId(J)V

    .line 122
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setUserName(Ljava/lang/String;)V

    .line 124
    .end local v1           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 128
    return-object v4
.end method

.method public static getUploadBatchByBatchId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadBatch;
    .locals 7
    .parameter "ctx"
    .parameter "userName"
    .parameter "folderName"

    .prologue
    .line 133
    const/4 v4, 0x0

    .line 135
    .local v4, ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 136
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 137
    invoke-virtual {v3, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->getUploadBatchByfolderName(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, i:I
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadBatch;

    .end local v4           #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadBatch;-><init>()V

    .line 142
    .restart local v4       #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setBatchId(J)V

    .line 143
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderName(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderId(J)V

    .line 145
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setUserName(Ljava/lang/String;)V

    .line 148
    .end local v1           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 152
    return-object v4
.end method

.method public static getUploadBatchs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/yostore/aws/sqlite/entity/UploadBatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v5, uploadBatchList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/UploadBatch;>;"
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 68
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 69
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->getUploadBatchs(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 71
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_0
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 84
    return-object v5

    .line 72
    :cond_1
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadBatch;

    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadBatch;-><init>()V

    .line 73
    .local v4, ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    const/4 v1, 0x0

    .line 74
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setBatchId(J)V

    .line 75
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderName(Ljava/lang/String;)V

    .line 76
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderId(J)V

    .line 77
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setUserName(Ljava/lang/String;)V

    .line 78
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static insertUploadBatch(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadBatch;)J
    .locals 6
    .parameter "ctx"
    .parameter "ub"

    .prologue
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .local v0, uploadBatchId:J
    if-eqz p1, :cond_0

    .line 22
    sget-object v3, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertUploadBatch\r\n\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    .local v2, wia:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 25
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->insertUploadBatch(Lnet/yostore/aws/sqlite/entity/UploadBatch;)J

    move-result-wide v0

    .line 26
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 28
    .end local v2           #wia:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    :cond_0
    return-wide v0
.end method

.method public static popUploadBatch(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadBatch;
    .locals 7
    .parameter "ctx"
    .parameter "userName"

    .prologue
    .line 89
    const/4 v4, 0x0

    .line 90
    .local v4, ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    new-instance v3, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 91
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 92
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->popUploadBatch(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, i:I
    new-instance v4, Lnet/yostore/aws/sqlite/entity/UploadBatch;

    .end local v4           #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    invoke-direct {v4}, Lnet/yostore/aws/sqlite/entity/UploadBatch;-><init>()V

    .line 96
    .restart local v4       #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setBatchId(J)V

    .line 97
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderName(Ljava/lang/String;)V

    .line 98
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderId(J)V

    .line 99
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setUserName(Ljava/lang/String;)V

    .line 101
    .end local v1           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 105
    return-object v4
.end method

.method public static removeAllUploadBatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "userName"

    .prologue
    .line 58
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeUploadBatch\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 61
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->deleteAllUploadBatch(Ljava/lang/String;)Z

    .line 62
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 63
    return-void
.end method

.method public static removeUploadBatch(Landroid/content/Context;J)V
    .locals 3
    .parameter "ctx"
    .parameter "batchId"

    .prologue
    .line 50
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeUploadBatch\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 53
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->deleteUploadBatch(J)Z

    .line 54
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 55
    return-void
.end method

.method public static updateAndSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadBatch;)J
    .locals 6
    .parameter "ctx"
    .parameter "ub"

    .prologue
    .line 32
    const-wide/16 v2, -0x1

    .line 33
    .local v2, uploadBatchId:J
    new-instance v1, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, rta:Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;

    .line 35
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->getUploadBatchByfolderName(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v1, p1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->updateUploadBatch(Lnet/yostore/aws/sqlite/entity/UploadBatch;)J

    move-result-wide v2

    .line 43
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_0
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->close()V

    .line 46
    return-wide v2

    .line 41
    :cond_1
    invoke-virtual {v1, p1}, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->insertUploadBatch(Lnet/yostore/aws/sqlite/entity/UploadBatch;)J

    move-result-wide v2

    goto :goto_0
.end method
