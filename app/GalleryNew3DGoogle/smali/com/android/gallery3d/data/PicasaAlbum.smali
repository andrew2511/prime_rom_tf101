.class public Lcom/android/gallery3d/data/PicasaAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "PicasaAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

.field private static final sIdIndex:I


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCachedCount:I

.field private mData:Lcom/android/gallery3d/data/AlbumData;

.field private mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/picasa/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    sput-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    .line 39
    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasa/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/data/PicasaAlbum;->sIdIndex:I

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/AlbumData;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "entry"
    .parameter "type"

    .prologue
    .line 54
    invoke-static {}, Lcom/android/gallery3d/data/PicasaAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mCachedCount:I

    .line 55
    iput-object p2, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 56
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 57
    iput-object p3, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    .line 58
    iput p4, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mType:I

    .line 59
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 61
    return-void
.end method

.method public static find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/PicasaAlbum;
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "id"
    .parameter "type"

    .prologue
    .line 65
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getAlbumData(Landroid/content/ContentResolver;J)Lcom/android/gallery3d/data/AlbumData;

    move-result-object v0

    .line 67
    .local v0, entry:Lcom/android/gallery3d/data/AlbumData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/gallery3d/data/PicasaAlbum;

    invoke-direct {v1, p0, p1, v0, p4}, Lcom/android/gallery3d/data/PicasaAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/AlbumData;I)V

    goto :goto_0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;Ljava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 12
    .parameter "application"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Lcom/android/gallery3d/data/MediaItem;

    .line 139
    .local v11, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v11

    .line 182
    .end local v11           #result:[Lcom/android/gallery3d/data/MediaItem;
    .end local p1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    :goto_0
    return-object p0

    .line 140
    .restart local v11       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    .restart local p1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 141
    .local v9, idLow:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 143
    .local v7, idHigh:J
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    .line 145
    .local v6, dataManager:Lcom/android/gallery3d/data/DataManager;
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    .line 146
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id BETWEEN ? AND ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .end local v9           #idLow:J
    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #idHigh:J
    aput-object v7, v4, v5

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 150
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 151
    const-string p0, "PicasaAlbum"

    .end local p0           #application:Lcom/android/gallery3d/app/GalleryApp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query fail"

    .end local v0           #resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v11

    .line 152
    .end local v11           #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    goto :goto_0

    .line 156
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v11       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    .restart local p1       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 157
    .local v7, n:I
    const/4 v0, 0x0

    .line 159
    .end local v1           #uri:Landroid/net/Uri;
    .local v0, i:I
    :cond_2
    :goto_1
    if-ge v0, v7, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    sget v1, Lcom/android/gallery3d/data/PicasaAlbum;->sIdIndex:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 163
    .local v4, id:J
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gtz v1, :cond_2

    :cond_3
    move v3, v0

    .line 167
    .end local v0           #i:I
    .local v3, i:I
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 168
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .restart local v0       #i:I
    if-lt v0, v7, :cond_3

    .line 182
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object p0, v11

    .end local v11           #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    goto/16 :goto_0

    .line 173
    .end local v0           #i:I
    .restart local v3       #i:I
    .restart local v11       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    :cond_4
    :try_start_1
    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    new-instance v1, Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-direct {v1}, Lcom/android/gallery3d/picasa/PhotoEntry;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 174
    .local v1, entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    sget-object v0, Lcom/android/gallery3d/data/PicasaImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v4, v5}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 175
    .local v0, childPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v0, v1, v6, p0}, Lcom/android/gallery3d/data/PicasaAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasa/PhotoEntry;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 177
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v0, v11, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    add-int/lit8 v0, v3, 0x1

    .line 179
    .end local v3           #i:I
    .local v0, i:I
    goto :goto_1

    .line 182
    .end local v1           #entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    .end local v4           #id:J
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object p0, v11

    .end local v11           #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, result:[Lcom/android/gallery3d/data/MediaItem;
    goto/16 :goto_0

    .end local v0           #i:I
    .end local v7           #n:I
    .restart local v11       #result:[Lcom/android/gallery3d/data/MediaItem;
    .local p0, application:Lcom/android/gallery3d/app/GalleryApp;
    :catchall_0
    move-exception p0

    .end local p0           #application:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public static getPhotoEntry(Landroid/content/ContentResolver;J)Lcom/android/gallery3d/picasa/PhotoEntry;
    .locals 8
    .parameter "resolver"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 187
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 191
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    new-instance v1, Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-direct {v1}, Lcom/android/gallery3d/picasa/PhotoEntry;-><init>()V

    invoke-virtual {v0, v6, v1}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/picasa/PhotoEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 195
    :goto_0
    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    .restart local p0
    :cond_0
    move-object v0, v5

    .line 191
    goto :goto_0

    .line 195
    .end local p0
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasa/PhotoEntry;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "entry"
    .parameter "dataManager"
    .parameter "app"

    .prologue
    .line 125
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/PicasaImage;

    .line 126
    .local v0, item:Lcom/android/gallery3d/data/PicasaImage;
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/gallery3d/data/PicasaImage;

    .end local v0           #item:Lcom/android/gallery3d/data/PicasaImage;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/PicasaImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/picasa/PhotoEntry;)V

    .line 131
    .restart local v0       #item:Lcom/android/gallery3d/data/PicasaImage;
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PicasaImage;->updateContent(Lcom/android/gallery3d/picasa/PhotoEntry;)V

    goto :goto_0
.end method


# virtual methods
.method public cache(I)V
    .locals 4
    .parameter "inFlag"

    .prologue
    .line 247
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 249
    :pswitch_0
    const/4 v0, 0x2

    .line 260
    .local v0, flag:I
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget-wide v2, v2, Lcom/android/gallery3d/data/AlbumData;->id:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/gallery3d/picasa/PicasaService;->setAlbumCachingFlag(Landroid/content/Context;JI)V

    goto :goto_0

    .line 252
    .end local v0           #flag:I
    :pswitch_1
    const/4 v0, 0x1

    .line 253
    .restart local v0       #flag:I
    goto :goto_1

    .line 255
    .end local v0           #flag:I
    :pswitch_2
    const/4 v0, 0x0

    .line 256
    .restart local v0       #flag:I
    goto :goto_1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheFlag()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget v0, v0, Lcom/android/gallery3d/data/AlbumData;->cacheFlag:I

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 240
    :goto_0
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget v0, v0, Lcom/android/gallery3d/data/AlbumData;->cacheFlag:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheSize()J
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget-wide v0, v0, Lcom/android/gallery3d/data/AlbumData;->cacheSize:J

    return-wide v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget v0, v0, Lcom/android/gallery3d/data/AlbumData;->cacheStatus:I

    packed-switch v0, :pswitch_data_0

    .line 274
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 268
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 272
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 99
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->assertNotInRenderThread()V

    .line 101
    sget-object v0, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

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

    .line 104
    .local v1, uri:Landroid/net/Uri;
    new-instance v12, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;

    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget-wide v2, v0, Lcom/android/gallery3d/data/AlbumData;->id:J

    iget v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mType:I

    invoke-direct {v12, v2, v3, v0}, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;-><init>(JI)V

    .line 105
    .local v12, where:Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;->selection:Ljava/lang/String;

    iget-object v4, v12, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;->args:[Ljava/lang/String;

    const-string v5, "display_index"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 110
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbum;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    new-instance v2, Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-direct {v2}, Lcom/android/gallery3d/picasa/PhotoEntry;-><init>()V

    invoke-virtual {v0, v7, v2}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 112
    .local v9, entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    sget-object v0, Lcom/android/gallery3d/data/PicasaImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iget-wide v2, v9, Lcom/android/gallery3d/picasa/PhotoEntry;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 113
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v6, v9, v8, v0}, Lcom/android/gallery3d/data/PicasaAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasa/PhotoEntry;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    .line 115
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v8           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v9           #entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 120
    return-object v11
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    .line 208
    iget v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 209
    new-instance v7, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;

    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget-wide v0, v0, Lcom/android/gallery3d/data/AlbumData;->id:J

    iget v2, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mType:I

    invoke-direct {v7, v0, v1, v2}, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;-><init>(JI)V

    .line 210
    .local v7, where:Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, v7, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;->selection:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 214
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 215
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 220
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #where:Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mCachedCount:I

    return v0

    .line 217
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #where:Lcom/android/gallery3d/data/PicasaAlbum$WhereEntry;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    iget-object v0, v0, Lcom/android/gallery3d/data/AlbumData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x504

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/android/gallery3d/data/PicasaAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mDataVersion:J

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mCachedCount:I

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mDataVersion:J

    return-wide v0
.end method

.method protected updateContent(Lcom/android/gallery3d/data/AlbumData;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/AlbumData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iput-object p1, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mData:Lcom/android/gallery3d/data/AlbumData;

    .line 202
    invoke-static {}, Lcom/android/gallery3d/data/PicasaAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/PicasaAlbum;->mDataVersion:J

    .line 204
    :cond_0
    return-void
.end method
