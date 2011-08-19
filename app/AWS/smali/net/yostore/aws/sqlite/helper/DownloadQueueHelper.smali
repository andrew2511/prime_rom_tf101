.class public Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;
.super Ljava/lang/Object;
.source "DownloadQueueHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "DownloadQueueHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDownloadQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 110
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 112
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->deleteAllItem(Ljava/lang/String;)Z

    .line 113
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 114
    return-void
.end method

.method public static clearDownloadQueueItem(Landroid/content/Context;J)V
    .locals 1
    .parameter "ctx"
    .parameter "rowid"

    .prologue
    .line 117
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 119
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->deleteItem(J)Z

    .line 120
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 121
    return-void
.end method

.method public static getAllDownloadItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 7
    .parameter "ctx"
    .parameter "userid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 33
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 35
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->getAllDownloadQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 43
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 44
    return-object v3

    .line 37
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/DownloadItem;-><init>(Landroid/database/Cursor;)V

    .line 38
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    sget-object v4, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDownloadQueueItemByFileId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .locals 8
    .parameter "ctx"
    .parameter "fileId"

    .prologue
    .line 74
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 75
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 77
    invoke-virtual {v2, p1, p2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->getDownloadQueueItemByFileId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 79
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/DownloadItem;-><init>(Landroid/database/Cursor;)V

    .line 82
    .restart local v1       #itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    sget-object v4, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getTopDownloadQueueItem-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 88
    return-object v1
.end method

.method public static getDownloadQueueItemByRowId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .locals 8
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 92
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 93
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 95
    invoke-virtual {v2, p1, p2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->getDownloadQueueItemByRowId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 97
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/DownloadItem;-><init>(Landroid/database/Cursor;)V

    .line 100
    .restart local v1       #itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    sget-object v4, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDownloadQueueItemByRowId-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 106
    return-object v1
.end method

.method public static getTopDownloadQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/DownloadItem;
    .locals 8
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 56
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 59
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->popTopDownloadQueueItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 61
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/DownloadItem;-><init>(Landroid/database/Cursor;)V

    .line 64
    .restart local v1       #itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    sget-object v4, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getTopDownloadQueueItem-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 70
    return-object v1
.end method

.method public static insertDownloadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 10
    .parameter "ctx"
    .parameter "di"

    .prologue
    .line 16
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 17
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 18
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    iget-wide v2, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    iget-wide v6, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    iget-wide v8, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    invoke-virtual/range {v0 .. v9}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->insertDownloadItem(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)J

    .line 19
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 20
    return-void
.end method

.method public static isDownloadItemExist(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/DownloadItem;)Z
    .locals 7
    .parameter "ctx"
    .parameter "di"

    .prologue
    .line 48
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 50
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    iget-wide v2, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->getSingleDownloadItemCount(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 51
    .local v6, i:I
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 52
    if-lez v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeDownloadItem(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "rowid"

    .prologue
    .line 23
    sget-object v1, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeDownloadItem\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 26
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->deleteItem(J)Z

    .line 27
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 28
    return-void
.end method

.method public static setItemSize(Landroid/content/Context;JJ)V
    .locals 4
    .parameter "ctx"
    .parameter "rowid"
    .parameter "size"

    .prologue
    .line 132
    sget-object v1, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setItemSize\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 135
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->setItemSize(JJ)J

    .line 136
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 137
    return-void
.end method

.method public static updateItemStatus(Landroid/content/Context;JI)V
    .locals 4
    .parameter "ctx"
    .parameter "rowid"
    .parameter "status"

    .prologue
    .line 124
    sget-object v1, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateItemStatus\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->changeItemStatus(JI)J

    .line 128
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->close()V

    .line 129
    return-void
.end method
