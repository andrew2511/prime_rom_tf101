.class Lcom/asus/DLNA/DB;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils.DB"

.field private static final mImageCols:[Ljava/lang/String;

.field private static final mMusicCols:[Ljava/lang/String;

.field private static mVideoCols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/DLNA/DB;->mMusicCols:[Ljava/lang/String;

    .line 149
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/DLNA/DB;->mImageCols:[Ljava/lang/String;

    .line 156
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/DLNA/DB;->mVideoCols:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addImageDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    if-nez p1, :cond_1

    .line 320
    :cond_0
    return-void

    .line 301
    :cond_1
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, IDIdx:I
    const-string v7, "title"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 303
    .local v3, TitleIdx:I
    const-string v7, "_data"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, DataIdx:I
    const-string v7, "mime_type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, MimeTypeIdx:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 308
    new-instance v5, Lcom/asus/DLNA/DataItem;

    invoke-direct {v5}, Lcom/asus/DLNA/DataItem;-><init>()V

    .line 309
    .local v5, item:Lcom/asus/DLNA/DataItem;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/asus/DLNA/DataItem;->setorgid(J)V

    .line 310
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->settype(I)V

    .line 311
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setfilename(Ljava/lang/String;)V

    .line 312
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 313
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Lcom/asus/DLNA/DataItem;->seturi(Landroid/net/Uri;)V

    .line 314
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setpath(Ljava/lang/String;)V

    .line 315
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setcategory(I)V

    .line 316
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setminetype(Ljava/lang/String;)V

    .line 317
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static addSongDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    const/4 v10, 0x1

    .line 210
    if-nez p1, :cond_1

    .line 231
    :cond_0
    return-void

    .line 212
    :cond_1
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, IDIdx:I
    const-string v7, "title"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, TitleIdx:I
    const-string v7, "_data"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, DataIdx:I
    const-string v7, "mime_type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, MimeTypeIdx:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 219
    new-instance v5, Lcom/asus/DLNA/DataItem;

    invoke-direct {v5}, Lcom/asus/DLNA/DataItem;-><init>()V

    .line 220
    .local v5, item:Lcom/asus/DLNA/DataItem;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/asus/DLNA/DataItem;->setorgid(J)V

    .line 221
    invoke-virtual {v5, v10}, Lcom/asus/DLNA/DataItem;->settype(I)V

    .line 222
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setfilename(Ljava/lang/String;)V

    .line 223
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 224
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Lcom/asus/DLNA/DataItem;->seturi(Landroid/net/Uri;)V

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setpath(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v5, v10}, Lcom/asus/DLNA/DataItem;->setcategory(I)V

    .line 227
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setminetype(Ljava/lang/String;)V

    .line 228
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static addVideoDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    if-nez p1, :cond_1

    .line 393
    :cond_0
    return-void

    .line 374
    :cond_1
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 375
    .local v1, IDIdx:I
    const-string v7, "title"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 376
    .local v3, TitleIdx:I
    const-string v7, "_data"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, DataIdx:I
    const-string v7, "mime_type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 379
    .local v2, MimeTypeIdx:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 380
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 381
    new-instance v5, Lcom/asus/DLNA/DataItem;

    invoke-direct {v5}, Lcom/asus/DLNA/DataItem;-><init>()V

    .line 382
    .local v5, item:Lcom/asus/DLNA/DataItem;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/asus/DLNA/DataItem;->setorgid(J)V

    .line 383
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->settype(I)V

    .line 384
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setfilename(Ljava/lang/String;)V

    .line 385
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 386
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Lcom/asus/DLNA/DataItem;->seturi(Landroid/net/Uri;)V

    .line 387
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setpath(Ljava/lang/String;)V

    .line 388
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setcategory(I)V

    .line 389
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/asus/DLNA/DataItem;->setminetype(Ljava/lang/String;)V

    .line 390
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static queryAllImages(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/asus/DLNA/DB;->queryImages(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 254
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addImageDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v0, 0x0

    .line 259
    :cond_0
    return-void
.end method

.method public static queryAllImagesAndVideos(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    const/4 v1, 0x0

    .line 235
    invoke-static {p0, v1, p2}, Lcom/asus/DLNA/DB;->queryImages(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addImageDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 237
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v0, 0x0

    .line 242
    :cond_0
    invoke-static {p0, v1, p2}, Lcom/asus/DLNA/DB;->queryVideos(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addVideoDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 244
    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    const/4 v0, 0x0

    .line 249
    :cond_1
    return-void
.end method

.method public static queryAllSongs(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/asus/DLNA/DB;->querySongs(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addSongDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 168
    const/4 v0, 0x0

    .line 170
    :cond_0
    return-void
.end method

.method public static queryAllVideos(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/asus/DLNA/DB;->queryVideos(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 327
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addVideoDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 330
    const/4 v0, 0x0

    .line 332
    :cond_0
    return-void
.end method

.method private static queryImages(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "strWhere"
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/DLNA/DB;->mImageCols:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryNowPlayingImages(Landroid/content/Context;Ljava/util/List;[JI)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "itemlists"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v2, strWhere:Ljava/lang/StringBuffer;
    array-length v3, p2

    if-gtz v3, :cond_2

    .line 276
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p3}, Lcom/asus/DLNA/DB;->queryImages(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 277
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addImageDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 278
    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v0, 0x0

    .line 282
    :cond_1
    return-void

    .line 267
    .end local v0           #cr:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 268
    if-nez v1, :cond_3

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR _id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static queryNowPlayingSongs(Landroid/content/Context;Ljava/util/List;[JI)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "itemlists"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    .local v2, strWhere:Ljava/lang/StringBuffer;
    array-length v3, p2

    if-gtz v3, :cond_2

    .line 187
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p3}, Lcom/asus/DLNA/DB;->querySongs(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addSongDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 189
    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v0, 0x0

    .line 193
    :cond_1
    return-void

    .line 178
    .end local v0           #cr:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 179
    if-nez v1, :cond_3

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR _id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static queryNowPlayingVideos(Landroid/content/Context;Ljava/util/List;[JI)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "itemlists"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/asus/DLNA/DataItem;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, LocalContentList:Ljava/util/List;,"Ljava/util/List<Lcom/asus/DLNA/DataItem;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v2, strWhere:Ljava/lang/StringBuffer;
    array-length v3, p2

    if-gtz v3, :cond_2

    .line 349
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p3}, Lcom/asus/DLNA/DB;->queryVideos(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 350
    .local v0, cr:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/asus/DLNA/DB;->addVideoDatatoLocalList(Ljava/util/List;Landroid/database/Cursor;)V

    .line 351
    if-eqz v0, :cond_1

    .line 352
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 353
    const/4 v0, 0x0

    .line 355
    :cond_1
    return-void

    .line 340
    .end local v0           #cr:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 341
    if-nez v1, :cond_3

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR _id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static querySongs(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "strWhere"
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/DLNA/DB;->mMusicCols:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private static queryVideos(Landroid/content/Context;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "strWhere"
    .parameter "limit"

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/DLNA/DB;->mVideoCols:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 368
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method
