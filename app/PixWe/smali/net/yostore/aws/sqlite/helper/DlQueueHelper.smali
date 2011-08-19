.class public Lnet/yostore/aws/sqlite/helper/DlQueueHelper;
.super Ljava/lang/Object;
.source "DlQueueHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "DlQueueHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->TAG:Ljava/lang/String;

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

.method public static del(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "mp3id"

    .prologue
    .line 27
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 29
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->deleteOneMp3(Ljava/lang/String;)Z

    .line 30
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 31
    return-void
.end method

.method public static delOnePlist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "plistid"

    .prologue
    .line 19
    sget-object v1, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delOnePlist\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 22
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->deleteOnePlist(Ljava/lang/String;)Z

    .line 23
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 24
    return-void
.end method

.method public static getByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
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
            "Lnet/yostore/aws/sqlite/entity/DlQueue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    new-instance v10, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v10, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 66
    .local v10, pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 67
    invoke-virtual {v10, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->getDlQueue(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 68
    .local v6, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v10}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 82
    return-object v9

    .line 69
    :cond_0
    const/4 v7, 0x0

    .line 70
    .local v7, i:I
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DlQueue;

    .line 71
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->getStatus(I)Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    move-result-object v4

    .line 75
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/sqlite/entity/DlQueue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)V

    .line 70
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/DlQueue;)V
    .locals 1
    .parameter "ctx"
    .parameter "dlQueue"

    .prologue
    .line 57
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 59
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DlQueue;)J

    .line 60
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 61
    return-void
.end method

.method public static insertList(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DlQueue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    if-eqz p1, :cond_0

    .line 44
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 54
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    :cond_0
    return-void

    .line 49
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/DlQueue;

    .line 50
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/DlQueue;
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DlQueue;)J

    goto :goto_0
.end method

.method public static isExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "plistid"

    .prologue
    .line 34
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, da:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 36
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->getPlistCount(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 37
    .local v1, rtn:Z
    :goto_0
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 38
    return v1

    .line 36
    .end local v1           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public static resetMessageByUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "ctx"
    .parameter "username"

    .prologue
    .line 86
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 88
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->resetMessageByUserName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 90
    return-void
.end method

.method public static updateStatusAndMessage(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)V
    .locals 1
    .parameter "ctx"
    .parameter "mp3id"
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 94
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, pla:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->updateStatusAndMessage(Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)J

    .line 97
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 98
    return-void
.end method
