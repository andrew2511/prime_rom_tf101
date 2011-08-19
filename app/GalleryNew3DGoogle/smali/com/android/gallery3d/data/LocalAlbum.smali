.class public Lcom/android/gallery3d/data/LocalAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private final mBucketName:Ljava/lang/String;

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 83
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"

    .prologue
    .line 55
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 56
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 57
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 58
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 59
    iput-object p5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketName:Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 62
    if-eqz p4, :cond_0

    .line 63
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 64
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 78
    :goto_0
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 79
    return-void

    .line 70
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 71
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 73
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 74
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 197
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 11
    .parameter "application"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Lcom/android/gallery3d/data/MediaItem;

    .line 138
    .local v9, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v9

    .line 191
    .end local v9           #result:[Lcom/android/gallery3d/data/MediaItem;
    .end local p1
    .end local p2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    :goto_0
    return-object p0

    .line 139
    .restart local v9       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    .restart local p1
    .restart local p2       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 140
    .local v7, idLow:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 146
    .local v5, idHigh:I
    if-eqz p1, :cond_1

    .line 147
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 148
    .local v1, baseUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 149
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .local v0, itemPath:Lcom/android/gallery3d/data/Path;
    move-object v8, v0

    .line 156
    .end local v0           #itemPath:Lcom/android/gallery3d/data/Path;
    .local v8, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 158
    .local v6, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v3, "_id BETWEEN ? AND ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .end local v7           #idLow:I
    aput-object v7, v4, v10

    const/4 v7, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #idHigh:I
    aput-object v5, v4, v7

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 161
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 162
    const-string p0, "LocalAlbum"

    .end local p0           #application:Lcom/android/gallery3d/app/GalleryApp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "query fail"

    .end local p2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v9

    .line 163
    .end local v9           #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    goto :goto_0

    .line 151
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #baseUri:Landroid/net/Uri;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v6           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v8           #itemPath:Lcom/android/gallery3d/data/Path;
    .restart local v5       #idHigh:I
    .restart local v7       #idLow:I
    .restart local v9       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    .restart local p1
    .restart local p2       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 152
    .restart local v1       #baseUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 153
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .local v0, itemPath:Lcom/android/gallery3d/data/Path;
    move-object v8, v0

    .end local v0           #itemPath:Lcom/android/gallery3d/data/Path;
    .restart local v8       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_1

    .line 166
    .end local v5           #idHigh:I
    .end local v7           #idLow:I
    .local v0, resolver:Landroid/content/ContentResolver;
    .local v2, cursor:Landroid/database/Cursor;
    .restart local v6       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 167
    .local v4, n:I
    const/4 v0, 0x0

    .line 169
    .end local v1           #baseUri:Landroid/net/Uri;
    .local v0, i:I
    :cond_3
    :goto_2
    if-ge v0, v4, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 170
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 173
    .local v3, id:I
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v3, :cond_3

    :cond_4
    move v1, v0

    .line 177
    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v3, :cond_5

    .line 178
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lt v0, v4, :cond_4

    .line 191
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object p0, v9

    .end local v9           #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    goto/16 :goto_0

    .line 183
    .end local v0           #i:I
    .restart local v1       #i:I
    .restart local v9       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    :cond_5
    :try_start_1
    invoke-virtual {v8, v3}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 184
    .local v0, childPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v0, v2, v6, p0, p1}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 186
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v0, v9, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    add-int/lit8 v0, v1, 0x1

    .line 188
    .end local v1           #i:I
    .local v0, i:I
    goto :goto_2

    .line 191
    .end local v3           #id:I
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object p0, v9

    .end local v9           #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    goto/16 :goto_0

    .end local v0           #i:I
    .end local v4           #n:I
    .restart local v9       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    :catchall_0
    move-exception p0

    .end local p0           #application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 120
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 121
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 122
    if-eqz p4, :cond_0

    .line 123
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 130
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 238
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->assertNotInRenderThread()V

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 91
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, uri:Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->assertNotInRenderThread()V

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 100
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-object v11

    .line 105
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 107
    .local v9, id:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 108
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    .line 110
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 113
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v9           #id:I
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 203
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 209
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    return v0

    .line 211
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x405

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDataVersion:J

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 228
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDataVersion:J

    return-wide v0
.end method
