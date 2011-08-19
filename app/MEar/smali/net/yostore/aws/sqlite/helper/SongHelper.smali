.class public Lnet/yostore/aws/sqlite/helper/SongHelper;
.super Ljava/lang/Object;
.source "SongHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "SongHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/SongHelper;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delOnePlist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "plistid"

    .prologue
    .line 18
    sget-object v1, Lnet/yostore/aws/sqlite/helper/SongHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delOnePlist\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;

    .line 21
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->deleteOnePlist(Ljava/lang/String;)Z

    .line 22
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->close()V

    .line 23
    return-void
.end method

.method public static delSongLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 97
    new-instance v2, Lnet/yostore/aws/sqlite/helper/SongAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;-><init>(Landroid/content/Context;)V

    .line 98
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->open()Lnet/yostore/aws/sqlite/helper/SongAdapter;

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->close()V

    .line 107
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    :cond_0
    return-void

    .line 102
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/Song;

    .line 103
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/Song;
    iget-object v3, v1, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static getSongListByPlist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "ctx"
    .parameter "plistid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, mp3list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    new-instance v5, Lnet/yostore/aws/sqlite/helper/SongAdapter;

    invoke-direct {v5, p0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;-><init>(Landroid/content/Context;)V

    .line 70
    .local v5, rta:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->open()Lnet/yostore/aws/sqlite/helper/SongAdapter;

    .line 71
    invoke-virtual {v5, p1}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->getListByPlist(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 73
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_0
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->close()V

    .line 91
    return-object v4

    .line 74
    :cond_1
    new-instance v3, Lnet/yostore/aws/sqlite/entity/Song;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/Song;-><init>()V

    .line 75
    .local v3, mp3:Lnet/yostore/aws/sqlite/entity/Song;
    const/4 v1, 0x0

    .line 77
    .local v1, i:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    .line 78
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 79
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    .line 80
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    .line 81
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    .line 82
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->getType(I)Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    move-result-object v6

    iput-object v6, v3, Lnet/yostore/aws/sqlite/entity/Song;->type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    .line 86
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static insertSongLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 50
    new-instance v1, Lnet/yostore/aws/sqlite/helper/SongAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->open()Lnet/yostore/aws/sqlite/helper/SongAdapter;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .end local p0
    .local v0, i:I
    :goto_0
    if-gtz v0, :cond_1

    .line 63
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->close()V

    .line 65
    .end local v0           #i:I
    .end local v1           #pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    :cond_0
    return-void

    .line 55
    .restart local v0       #i:I
    .restart local v1       #pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    :cond_1
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/sqlite/entity/Song;

    invoke-virtual {v1, p0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->insert(Lnet/yostore/aws/sqlite/entity/Song;)J

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static updateSongLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 29
    new-instance v2, Lnet/yostore/aws/sqlite/helper/SongAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    .local v2, pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->open()Lnet/yostore/aws/sqlite/helper/SongAdapter;

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->close()V

    .line 39
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    .end local v2           #pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    :cond_0
    return-void

    .line 34
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/Song;>;"
    .restart local v2       #pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/Song;

    .line 35
    .local v1, pl:Lnet/yostore/aws/sqlite/entity/Song;
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->update(Lnet/yostore/aws/sqlite/entity/Song;)J

    goto :goto_0
.end method

.method public static updateType(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/Song$TYPE;)V
    .locals 1
    .parameter "ctx"
    .parameter "mp3id"
    .parameter "type"

    .prologue
    .line 42
    new-instance v0, Lnet/yostore/aws/sqlite/helper/SongAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, pla:Lnet/yostore/aws/sqlite/helper/SongAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->open()Lnet/yostore/aws/sqlite/helper/SongAdapter;

    .line 44
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->updateType(Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/Song$TYPE;)J

    .line 45
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/SongAdapter;->close()V

    .line 46
    return-void
.end method
