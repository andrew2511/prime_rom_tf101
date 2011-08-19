.class public Lnet/yostore/aws/sqlite/helper/DelQueueHelper;
.super Ljava/lang/Object;
.source "DelQueueHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "DlQueueHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/DelQueueHelper;->TAG:Ljava/lang/String;

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

.method public static del(Landroid/content/Context;J)V
    .locals 4
    .parameter "ctx"
    .parameter "fid"

    .prologue
    .line 20
    sget-object v1, Lnet/yostore/aws/sqlite/helper/DelQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delDelQueue\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 23
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->deleteDelQueue(J)Z

    .line 24
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 25
    return-void
.end method

.method public static getDelFileQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "username"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DelQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v3, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, delList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DelQueue;>;"
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 104
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->getDelFileQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 106
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_0
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 118
    return-object v1

    .line 107
    :cond_1
    new-instance v2, Lnet/yostore/aws/sqlite/entity/DelQueue;

    invoke-direct {v2}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 108
    .local v2, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    const/4 v4, 0x0

    .line 109
    .local v4, i:I
    new-instance v2, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .end local v2           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-direct {v2}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 110
    .restart local v2       #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 111
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 112
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 113
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDelFolderQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .parameter "username"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DelQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 81
    .local v3, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, delList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DelQueue;>;"
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 83
    invoke-virtual {v3, p1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->getDelFolderQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 85
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_0
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 97
    return-object v1

    .line 86
    :cond_1
    new-instance v2, Lnet/yostore/aws/sqlite/entity/DelQueue;

    invoke-direct {v2}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 87
    .local v2, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    const/4 v4, 0x0

    .line 88
    .local v4, i:I
    new-instance v2, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .end local v2           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-direct {v2}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 89
    .restart local v2       #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 90
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDelQueue(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DelQueue;
    .locals 7
    .parameter "ctx"
    .parameter "fid"

    .prologue
    .line 40
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    .local v2, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    const/4 v1, 0x0

    .line 42
    .local v1, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 43
    invoke-virtual {v2, p1, p2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->getDelQueue(J)Landroid/database/Cursor;

    move-result-object v0

    .line 44
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, i:I
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .end local v1           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 48
    .restart local v1       #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 49
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 50
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 53
    .end local v4           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_1
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 56
    return-object v1
.end method

.method public static insert(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/DelQueue;)V
    .locals 4
    .parameter "ctx"
    .parameter "delQueue"

    .prologue
    .line 28
    new-instance v1, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 30
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->getDelQueue(J)Landroid/database/Cursor;

    move-result-object v0

    .line 31
    .local v0, cr:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 32
    invoke-virtual {v1, p1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DelQueue;)J

    .line 36
    :goto_0
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 37
    return-void

    .line 34
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static popDelQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/DelQueue;
    .locals 7
    .parameter "ctx"
    .parameter "username"

    .prologue
    .line 60
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    const/4 v1, 0x0

    .line 62
    .local v1, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 63
    invoke-virtual {v2, p1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->popDelQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 64
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, i:I
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .end local v1           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 68
    .restart local v1       #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 69
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 70
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 72
    .end local v4           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_1
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 76
    return-object v1
.end method
