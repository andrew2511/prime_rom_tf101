.class public Lnet/yostore/aws/sqlite/helper/MediaHelper;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "MediaHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/MediaHelper;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delByAlbum(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "albumId"

    .prologue
    .line 339
    sget-object v1, Lnet/yostore/aws/sqlite/helper/MediaHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delByAlbum\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 341
    .local v0, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 342
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->deleteByAlbum(J)Z

    .line 343
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 344
    return-void
.end method

.method public static delByFileId(Landroid/content/Context;J)I
    .locals 11
    .parameter "ctx"
    .parameter "fileId"

    .prologue
    .line 60
    sget-object v8, Lnet/yostore/aws/sqlite/helper/MediaHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delByFileId\r\n\t"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v7, -0x1

    .line 62
    .local v7, rtn:I
    new-instance v6, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v6, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    .local v6, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 64
    .local v2, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    invoke-virtual {v6}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 65
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 66
    invoke-virtual {v6, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getMediaByFileId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 69
    new-instance v5, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 70
    .local v5, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v3, 0x0

    .line 71
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 72
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 73
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 75
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 76
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 78
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 79
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 80
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 81
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 82
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 84
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DelQueue;

    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 85
    .local v1, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 86
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 87
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DelQueue;)J

    .line 89
    invoke-virtual {v6, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->deleteByFileId(J)I

    move-result v7

    .line 90
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->deleteByFileId(J)I

    .line 92
    .end local v1           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    .end local v3           #i:I
    .end local v5           #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_1
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 95
    invoke-virtual {v6}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 96
    return v7
.end method

.method public static delMedia(Landroid/content/Context;J)I
    .locals 11
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 19
    sget-object v8, Lnet/yostore/aws/sqlite/helper/MediaHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delMedia\r\n\t"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v6, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v6, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .local v6, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    .local v2, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    const/4 v7, -0x1

    .line 23
    .local v7, rtn:I
    invoke-virtual {v6}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 24
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 25
    invoke-virtual {v6, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getMedia(J)Landroid/database/Cursor;

    move-result-object v0

    .line 26
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 28
    new-instance v5, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 29
    .local v5, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v3, 0x0

    .line 30
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 31
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 32
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 33
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 34
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 35
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 37
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 38
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 39
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 40
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 41
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 43
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DelQueue;

    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 44
    .local v1, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 45
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 46
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DelQueue;)J

    .line 48
    invoke-virtual {v6, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->delete(J)I

    move-result v7

    .line 49
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->deleteByFileId(J)I

    .line 51
    .end local v1           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    .end local v3           #i:I
    .end local v5           #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_1
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 55
    invoke-virtual {v6}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 56
    return v7
.end method

.method public static delMedias(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    sget-object v3, Lnet/yostore/aws/sqlite/helper/MediaHelper;->TAG:Ljava/lang/String;

    const-string v4, "delMedias\r\n\t"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 349
    .local v2, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 361
    return-void

    .line 352
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .line 353
    .local v0, _it:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 354
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getFr()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 356
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->delete(J)I

    goto :goto_0
.end method

.method public static getAlbumList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v4, mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 283
    .local v5, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 284
    invoke-virtual {v5, p1}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getAllMedias(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 285
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 306
    return-object v4

    .line 286
    :cond_0
    new-instance v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 287
    .local v3, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v1, 0x0

    .line 288
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 289
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 290
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 291
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 292
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 293
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 295
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 296
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 297
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 298
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 299
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 301
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getMedia(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 7
    .parameter "ctx"
    .parameter "rowId"

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 198
    .local v4, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 199
    invoke-virtual {v4, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getMedia(J)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    .local v0, cr:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    new-instance v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .end local v3           #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-direct {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 202
    .restart local v3       #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v1, 0x0

    .line 203
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 204
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 205
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 207
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 208
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 210
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 211
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 213
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 214
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 217
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 219
    return-object v3
.end method

.method public static getMedia(Landroid/content/Context;JJ)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 7
    .parameter "ctx"
    .parameter "albumId"
    .parameter "mediaFileId"

    .prologue
    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 171
    .local v4, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 172
    invoke-virtual {v4, p1, p2, p3, p4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getMedia(JJ)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, cr:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    new-instance v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .end local v3           #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-direct {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 175
    .restart local v3       #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v1, 0x0

    .line 176
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 177
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 178
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 180
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 181
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 183
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 184
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 186
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 187
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 190
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 192
    return-object v3
.end method

.method public static getMediasByAlbum(Landroid/content/Context;J)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v4, mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 225
    .local v5, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 226
    invoke-virtual {v5, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getListByAlbum(J)Landroid/database/Cursor;

    move-result-object v0

    .line 227
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 246
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 248
    return-object v4

    .line 228
    :cond_0
    new-instance v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 229
    .local v3, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v1, 0x0

    .line 230
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 231
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 232
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 234
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 235
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 237
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 238
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 240
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 241
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 243
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getUploadedMediasByAlbum(Landroid/content/Context;J)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v4, mediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 254
    .local v5, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 255
    invoke-virtual {v5, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getUploadedListByAlbum(J)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 276
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 277
    return-object v4

    .line 257
    :cond_0
    new-instance v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 258
    .local v3, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v1, 0x0

    .line 259
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 260
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 261
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 263
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 264
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 265
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 266
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 267
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 268
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 269
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 270
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 272
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static insertMedia(Landroid/content/Context;Lnet/yostore/aws/handler/entity/MediaInfoBean;)J
    .locals 3
    .parameter "ctx"
    .parameter "mib"

    .prologue
    .line 135
    const-wide/16 v1, -0x1

    .line 136
    .local v1, rtn:J
    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 141
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->insert(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    move-result-wide v1

    .line 146
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 148
    .end local v0           #mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    :cond_0
    return-wide v1
.end method

.method public static insertMediaLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 116
    new-instance v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 117
    .local v2, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_1

    .line 130
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 132
    .end local v1           #i:I
    .end local v2           #mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    :cond_0
    return-void

    .line 120
    .restart local v1       #i:I
    .restart local v2       #mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    :cond_1
    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .line 121
    .local v3, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v4

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v6

    invoke-static {p0, v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->getMedia(Landroid/content/Context;JJ)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v0

    .line 122
    .local v0, _mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    if-nez v0, :cond_2

    .line 123
    invoke-virtual {v2, v3}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->insert(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    .line 119
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 126
    invoke-virtual {v2, v3}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->update(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    goto :goto_1
.end method

.method public static popMediaByAlbumId(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .locals 7
    .parameter "ctx"
    .parameter "albumId"

    .prologue
    .line 310
    const/4 v3, 0x0

    .line 311
    .local v3, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 312
    .local v4, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 313
    invoke-virtual {v4, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->popMediaByAlbumId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 314
    .local v0, cr:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 315
    new-instance v3, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .end local v3           #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-direct {v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 316
    .restart local v3       #mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v1, 0x0

    .line 317
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 318
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 319
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 320
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 321
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 322
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 323
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 324
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 325
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 326
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 327
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 328
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 333
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 335
    return-object v3
.end method

.method public static updateMedia(Landroid/content/Context;Lnet/yostore/aws/handler/entity/MediaInfoBean;)J
    .locals 3
    .parameter "ctx"
    .parameter "mib"

    .prologue
    .line 152
    const-wide/16 v1, -0x1

    .line 153
    .local v1, rtn:J
    if-eqz p1, :cond_0

    .line 154
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 158
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->update(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    move-result-wide v1

    .line 163
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 165
    .end local v0           #mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    :cond_0
    return-wide v1
.end method

.method public static updateMediaLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 102
    new-instance v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 112
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v2           #mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    :cond_0
    return-void

    .line 107
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v2       #mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .line 108
    .local v1, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->update(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    goto :goto_0
.end method
