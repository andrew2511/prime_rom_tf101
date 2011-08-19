.class public Lnet/yostore/aws/sqlite/helper/AlbumListHelper;
.super Ljava/lang/Object;
.source "AlbumListHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "AlbumListHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->TAG:Ljava/lang/String;

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

.method public static delAlbumByAlbumId(Landroid/content/Context;J)I
    .locals 12
    .parameter "ctx"
    .parameter "albumId"

    .prologue
    .line 168
    const/4 v8, -0x1

    .line 169
    .local v8, rtn:I
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    new-instance v7, Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    invoke-direct {v7, p0}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;-><init>(Landroid/content/Context;)V

    .line 171
    .local v7, mia:Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    new-instance v2, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;-><init>(Landroid/content/Context;)V

    .line 172
    .local v2, dq:Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    const/4 v1, 0x0

    .line 173
    .local v1, delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    const/4 v9, 0x0

    .line 174
    .local v9, userName:Ljava/lang/String;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 175
    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;

    .line 176
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;

    .line 177
    invoke-virtual {v7, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->getRealDelListByAlbum(J)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    .local v6, mcr:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 180
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_0
    invoke-virtual {v7, p1, p2}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->deleteByAlbum(J)Z

    .line 209
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .end local v1           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 210
    .restart local v1       #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v1, p1, p2}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 211
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 212
    invoke-virtual {v1, v9}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DelQueue;)J

    .line 214
    invoke-virtual {v0, p1, p2}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->delete(J)I

    move-result v8

    .line 215
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->close()V

    .line 216
    invoke-virtual {v7}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->close()V

    .line 217
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 218
    return v8

    .line 181
    :cond_1
    new-instance v5, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>()V

    .line 182
    .local v5, mb:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v3, 0x0

    .line 183
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setId(J)V

    .line 184
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 185
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUserName(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 187
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 188
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 190
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 191
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 192
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 193
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 194
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 196
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v9

    .line 198
    new-instance v1, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .end local v1           #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-direct {v1}, Lnet/yostore/aws/sqlite/entity/DelQueue;-><init>()V

    .line 199
    .restart local v1       #delQ:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setFid(J)V

    .line 200
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setIsfile(I)V

    .line 201
    invoke-virtual {v1, v9}, Lnet/yostore/aws/sqlite/entity/DelQueue;->setUsername(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2, v1}, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->insert(Lnet/yostore/aws/sqlite/entity/DelQueue;)J

    .line 204
    invoke-virtual {v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->deleteByFileId(J)I

    goto/16 :goto_0
.end method

.method public static delAlbumLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AlbumInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    if-eqz p1, :cond_0

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    .end local v0           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_0
    return-void

    .line 158
    .restart local v0       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .line 159
    .local v1, pl:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->delAlbumByAlbumId(Landroid/content/Context;J)I

    goto :goto_0
.end method

.method public static getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    .locals 7
    .parameter "ctx"
    .parameter "albumid"

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .local v1, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 22
    invoke-virtual {v1, p1, p2}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->getAlbum(J)Landroid/database/Cursor;

    move-result-object v2

    .line 23
    .local v2, cr:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .end local v0           #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 25
    .restart local v0       #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    const/4 v3, 0x0

    .line 26
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfoFolder(J)V

    .line 27
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 28
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSs(I)V

    .line 29
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSt(J)V

    .line 30
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setPw(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setIn(I)V

    .line 32
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSty(I)V

    .line 33
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setOr(I)V

    .line 34
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setDisplay(Ljava/lang/String;)V

    .line 35
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setBt(I)V

    .line 36
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setMfi(J)V

    .line 37
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSu(Ljava/lang/String;)V

    .line 41
    .end local v3           #i:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 43
    return-object v0
.end method

.method public static getAlbumList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
            "Lnet/yostore/aws/handler/entity/AlbumInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 50
    invoke-virtual {v1, p1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->getAlbumList(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 51
    .local v2, cr:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 70
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 71
    return-object v5

    .line 52
    :cond_0
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 53
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    const/4 v3, 0x0

    .line 54
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfoFolder(J)V

    .line 55
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSs(I)V

    .line 57
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSt(J)V

    .line 58
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setPw(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setIn(I)V

    .line 60
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSty(I)V

    .line 61
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setOr(I)V

    .line 62
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setDisplay(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setBt(I)V

    .line 64
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setMfi(J)V

    .line 65
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSu(Ljava/lang/String;)V

    .line 66
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static insertAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 6
    .parameter "ctx"
    .parameter "aib"

    .prologue
    .line 135
    const-wide/16 v2, -0x1

    .line 136
    .local v2, rtn:J
    if-eqz p1, :cond_3

    .line 137
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 139
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->getAlbum(J)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->insert(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    move-result-wide v2

    .line 142
    :cond_1
    if-eqz v1, :cond_2

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_2
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 146
    .end local v0           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .end local v1           #cr:Landroid/database/Cursor;
    :cond_3
    return-wide v2
.end method

.method public static insertAlbumLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AlbumInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 121
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    .local v2, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 132
    .end local v1           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .end local v2           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_0
    return-void

    .line 126
    .restart local v1       #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .restart local v2       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .line 127
    .local v0, al:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->insert(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    goto :goto_0
.end method

.method public static updateAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V
    .locals 1
    .parameter "ctx"
    .parameter "aib"

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 242
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->update(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 243
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 245
    .end local v0           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    :cond_0
    return-void
.end method

.method public static updateAlbumList(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AlbumInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    if-eqz p1, :cond_0

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 225
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 229
    .local v2, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 236
    .end local v1           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .end local v2           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_0
    return-void

    .line 230
    .restart local v1       #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .restart local v2       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .line 231
    .local v0, al:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->update(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    goto :goto_0
.end method

.method public static updateBrowseTime(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V
    .locals 1
    .parameter "ctx"
    .parameter "aib"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 103
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->updateBrowseTime(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 104
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 106
    .end local v0           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    :cond_0
    return-void
.end method

.method public static updateMediaFileId(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V
    .locals 1
    .parameter "ctx"
    .parameter "aib"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 112
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->updateMediaFileId(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 113
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 115
    .end local v0           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    :cond_0
    return-void
.end method

.method public static updatePlayLists(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AlbumInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    .local v2, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 88
    .end local v1           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .end local v2           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_0
    return-void

    .line 82
    .restart local v1       #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .restart local v2       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .line 83
    .local v0, al:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->update(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    goto :goto_0
.end method

.method public static updateShareCode(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V
    .locals 1
    .parameter "ctx"
    .parameter "aib"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;

    .line 94
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->updateShareCode(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 95
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->close()V

    .line 97
    .end local v0           #ala:Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    :cond_0
    return-void
.end method
