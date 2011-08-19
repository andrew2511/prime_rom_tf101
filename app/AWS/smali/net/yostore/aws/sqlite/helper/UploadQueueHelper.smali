.class public Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;
.super Ljava/lang/Object;
.source "UploadQueueHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "UploadQueueHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

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

.method public static changeAllItemStatus(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "ctx"
    .parameter "userid"
    .parameter "status"

    .prologue
    .line 281
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeAllItemStatus\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 284
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->changeAllItemStatus(Ljava/lang/String;I)J

    .line 285
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 286
    return-void
.end method

.method public static clearUploadQueue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 252
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 254
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->deleteAllUploadItem(Ljava/lang/String;)Z

    .line 255
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 256
    return-void
.end method

.method public static clearUploadQueueItem(Landroid/content/Context;J)V
    .locals 1
    .parameter "ctx"
    .parameter "rowid"

    .prologue
    .line 259
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 261
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->deleteUploadItem(J)Z

    .line 262
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 263
    return-void
.end method

.method public static deleteAllUploadedUploadItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 266
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 268
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->deleteAllUploadedUploadItem(Ljava/lang/String;)Z

    .line 269
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 270
    return-void
.end method

.method public static getAllUploadNoReadyQueueByFolderId(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/LinkedList;
    .locals 5
    .parameter "ctx"
    .parameter "userid"
    .parameter "uploadfolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/LinkedList",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 164
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 165
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 166
    invoke-virtual {v2, p1, p2, p3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getAllUploadNoReadyQueueByFolderId(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 175
    return-object v3

    .line 168
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 170
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getAllUploadQueueByFolderId(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/LinkedList;
    .locals 7
    .parameter "ctx"
    .parameter "userid"
    .parameter "uploadfolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/LinkedList",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 147
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 148
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 149
    invoke-virtual {v2, p1, p2, p3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getAllUploadQueueByFolderId(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 159
    return-object v3

    .line 151
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 153
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    sget-object v4, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Capture-->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getAllUploadQueueItem(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
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
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 131
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 132
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 133
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getAllUploadQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 142
    return-object v3

    .line 135
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 137
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getTopUploadQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadItem;
    .locals 5
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 179
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 181
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 182
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->popTopUploadQueueItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 184
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 187
    .restart local v1       #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 192
    return-object v1
.end method

.method public static getUploadCaptureItem(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
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
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 100
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 102
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->popUploadCaptureItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 111
    return-object v3

    .line 104
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 106
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadFileItem(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
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
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 117
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 118
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->popUploadFileItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 119
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 126
    return-object v3

    .line 120
    :cond_0
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 121
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUploadItemCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 68
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 70
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadTotalCnt(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, rtn:I
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 72
    return v1
.end method

.method public static getUploadItemSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 75
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 77
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadTotalSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 78
    .local v1, rtn:J
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 79
    return-wide v1
.end method

.method public static getUploadQueueItem(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadItem;
    .locals 5
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 196
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 197
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 198
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 199
    invoke-virtual {v2, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getUploadQueueItem(J)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 201
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 204
    .restart local v1       #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 209
    return-object v1
.end method

.method public static insertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 10
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 49
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 51
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    iget v6, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    iget-wide v7, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    iget-object v9, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->insertUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)J

    .line 52
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 53
    return-void
.end method

.method public static isUploadItemExist(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)Z
    .locals 7
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 91
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 93
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    invoke-virtual/range {v0 .. v5}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->getSingleUploadItemCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v6

    .line 94
    .local v6, i:I
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 95
    if-lez v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static popTopUploadFinishedQueueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadItem;
    .locals 5
    .parameter "ctx"
    .parameter "userid"

    .prologue
    .line 213
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 214
    .local v3, rtn:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 215
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 216
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->popTopUploadFinishedQueueItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 217
    .local v0, cr:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 218
    .local v1, itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    new-instance v1, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .end local v1           #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-direct {v1, v0}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Landroid/database/Cursor;)V

    .line 221
    .restart local v1       #itm:Lnet/yostore/aws/sqlite/entity/UploadItem;
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 225
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 226
    return-object v1
.end method

.method public static removeUploadItem(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "rowid"

    .prologue
    .line 56
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeUploadItem\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 63
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->removeUploadQueue(J)Z

    .line 64
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 65
    return-void
.end method

.method public static updateItemStatus(Landroid/content/Context;JI)V
    .locals 4
    .parameter "ctx"
    .parameter "rowid"
    .parameter "status"

    .prologue
    .line 273
    sget-object v1, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->TAG:Ljava/lang/String;

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

    .line 274
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;

    .line 276
    invoke-virtual {v0, p1, p2, p3}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->changeItemStatus(JI)J

    .line 277
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->close()V

    .line 278
    return-void
.end method
