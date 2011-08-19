.class public Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;
.super Ljava/lang/Object;
.source "AlbumFileHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "AlbumFileHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;->TAG:Ljava/lang/String;

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

.method public static delAlbum(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AlbumFile;)V
    .locals 3
    .parameter "ctx"
    .parameter "af"

    .prologue
    .line 84
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, afa:Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    .line 86
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->delete(J)Z

    .line 87
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->close()V

    .line 88
    return-void
.end method

.method public static getAlbumFile(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .locals 7
    .parameter "ctx"
    .parameter "albimid"

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, afa:Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    .line 21
    invoke-virtual {v1, p1, p2}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->getAlbumFile(J)Landroid/database/Cursor;

    move-result-object v2

    .line 22
    .local v2, cr:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 23
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AlbumFile;

    .end local v0           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/AlbumFile;-><init>()V

    .line 24
    .restart local v0       #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    const/4 v3, 0x0

    .line 25
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUserName(Ljava/lang/String;)V

    .line 26
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setAlbumFolder(J)V

    .line 27
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setMediaInfoId(J)V

    .line 28
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setChangeSeq(J)V

    .line 29
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUpdateTime(J)V

    .line 31
    .end local v4           #i:I
    :cond_0
    if-eqz v2, :cond_1

    .line 32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_1
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->close()V

    .line 34
    return-object v0
.end method

.method public static getAlbumFileList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/yostore/aws/sqlite/entity/AlbumFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/AlbumFile;>;"
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    .local v1, afa:Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    .line 41
    invoke-virtual {v1, p1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->getAlbumFileList(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 42
    .local v2, cr:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 43
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_0
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->close()V

    .line 56
    return-object v5

    .line 44
    :cond_1
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AlbumFile;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/AlbumFile;-><init>()V

    .line 45
    .local v0, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    const/4 v3, 0x0

    .line 46
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUserName(Ljava/lang/String;)V

    .line 47
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setAlbumFolder(J)V

    .line 48
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setMediaInfoId(J)V

    .line 49
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setChangeSeq(J)V

    .line 50
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUpdateTime(J)V

    .line 51
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static insertAlbumFile(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AlbumFile;)V
    .locals 1
    .parameter "ctx"
    .parameter "af"

    .prologue
    .line 75
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, afa:Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    .line 78
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->insert(Lnet/yostore/aws/sqlite/entity/AlbumFile;)J

    .line 79
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->close()V

    .line 81
    return-void
.end method

.method public static updateAlbumToSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AlbumFile;)V
    .locals 4
    .parameter "ctx"
    .parameter "af"

    .prologue
    .line 60
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, afa:Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;

    .line 62
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->getAlbumFile(J)Landroid/database/Cursor;

    move-result-object v1

    .line 63
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->update(Lnet/yostore/aws/sqlite/entity/AlbumFile;)J

    .line 68
    :goto_0
    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_0
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->close()V

    .line 71
    return-void

    .line 66
    :cond_1
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->insert(Lnet/yostore/aws/sqlite/entity/AlbumFile;)J

    goto :goto_0
.end method
