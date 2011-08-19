.class public Lcom/android/gallery3d/data/PicasaAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "PicasaAlbumSet.java"


# static fields
.field private static final SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

.field private static final SUM_SIZE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/PicasaAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mName:Ljava/lang/String;

.field private mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/data/AlbumData;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    sput-object v0, Lcom/android/gallery3d/data/PicasaAlbumSet;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sum(size)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/PicasaAlbumSet;->SUM_SIZE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "context"

    .prologue
    .line 55
    invoke-static {}, Lcom/android/gallery3d/data/PicasaAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 56
    iput-object p2, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 57
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 59
    invoke-static {p1}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getTypeFromPath(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mType:I

    .line 60
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private static getAlbumCacheSize(Landroid/content/ContentResolver;J)J
    .locals 7
    .parameter "resolver"
    .parameter "albumId"

    .prologue
    const/4 v5, 0x0

    .line 199
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbumSet;->SUM_SIZE_PROJECTION:[Ljava/lang/String;

    const-string v3, "album_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAlbumData(Landroid/content/ContentResolver;J)Lcom/android/gallery3d/data/AlbumData;
    .locals 9
    .parameter "resolver"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 146
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbumSet;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v7, Lcom/android/gallery3d/data/AlbumData;

    invoke-direct {v7}, Lcom/android/gallery3d/data/AlbumData;-><init>()V

    .line 153
    .local v7, entry:Lcom/android/gallery3d/data/AlbumData;
    sget-object v0, Lcom/android/gallery3d/data/PicasaAlbumSet;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    .line 154
    iget-wide v0, v7, Lcom/android/gallery3d/data/AlbumData;->id:J

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getAlbumCacheSize(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/gallery3d/data/AlbumData;->cacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .end local v7           #entry:Lcom/android/gallery3d/data/AlbumData;
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getTotalTargetCacheSize(Landroid/content/ContentResolver;)J
    .locals 11
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 178
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "cache_flag=2"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 184
    .local v9, sum:J
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 186
    .local v7, id:J
    invoke-static {p0, v7, v8}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getAlbumCacheSize(Landroid/content/ContentResolver;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    add-long/2addr v9, v0

    .line 187
    goto :goto_0

    .line 189
    .end local v7           #id:J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    return-wide v9

    .line 189
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getTotalUsedCacheSize(Landroid/content/ContentResolver;)J
    .locals 7
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    .line 165
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbumSet;->SUM_SIZE_PROJECTION:[Ljava/lang/String;

    const-string v3, "cache_status=3"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 171
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getTypeFromPath(Lcom/android/gallery3d/data/Path;)I
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, name:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v4, :cond_0

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    const-string v1, "all"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    .line 71
    :goto_0
    return v1

    .line 70
    :cond_1
    const-string v1, "image"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    .line 71
    :cond_2
    const-string v1, "video"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 72
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 91
    packed-switch p0, :pswitch_data_0

    .line 95
    :pswitch_0
    const-string v0, "all"

    :goto_0
    return-object v0

    .line 92
    :pswitch_1
    const-string v0, "image"

    goto :goto_0

    .line 93
    :pswitch_2
    const-string v0, "video"

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/PicasaAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->assertNotInRenderThread()V

    .line 100
    sget-object v2, Lcom/android/gallery3d/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "type"

    iget v5, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mType:I

    invoke-static {v5}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, uri:Landroid/net/Uri;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v12, loadBuffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/AlbumData;>;"
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbumSet;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasa/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 109
    const-string v2, "PicasaAlbumSet"

    const-string v3, "cannot open picasa database"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .end local p0
    :goto_0
    return-object v2

    .line 113
    .restart local p0
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    sget-object v2, Lcom/android/gallery3d/data/PicasaAlbumSet;->SCHEMA:Lcom/android/gallery3d/picasa/EntrySchema;

    new-instance v3, Lcom/android/gallery3d/data/AlbumData;

    invoke-direct {v3}, Lcom/android/gallery3d/data/AlbumData;-><init>()V

    invoke-virtual {v2, v8, v3}, Lcom/android/gallery3d/picasa/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/picasa/Entry;)Lcom/android/gallery3d/picasa/Entry;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/AlbumData;

    .line 115
    .local v10, entry:Lcom/android/gallery3d/data/AlbumData;
    iget-wide v2, v10, Lcom/android/gallery3d/data/AlbumData;->id:J

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getAlbumCacheSize(Landroid/content/ContentResolver;J)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/gallery3d/data/AlbumData;->cacheSize:J

    .line 116
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 119
    .end local v10           #entry:Lcom/android/gallery3d/data/AlbumData;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v14, newAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/PicasaAlbum;>;"
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 125
    .local v9, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, n:I
    :goto_2
    if-ge v11, v13, :cond_3

    .line 126
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/AlbumData;

    .line 127
    .restart local v10       #entry:Lcom/android/gallery3d/data/AlbumData;
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mPath:Lcom/android/gallery3d/data/Path;

    iget-wide v3, v10, Lcom/android/gallery3d/data/AlbumData;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 128
    .local v7, childPath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v9, v7}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/PicasaAlbum;

    .line 130
    .local v6, album:Lcom/android/gallery3d/data/PicasaAlbum;
    if-nez v6, :cond_2

    .line 131
    new-instance v6, Lcom/android/gallery3d/data/PicasaAlbum;

    .end local v6           #album:Lcom/android/gallery3d/data/PicasaAlbum;
    iget-object v2, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget v3, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mType:I

    invoke-direct {v6, v7, v2, v10, v3}, Lcom/android/gallery3d/data/PicasaAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/AlbumData;I)V

    .line 135
    .restart local v6       #album:Lcom/android/gallery3d/data/PicasaAlbum;
    :goto_3
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 133
    :cond_2
    invoke-virtual {v6, v10}, Lcom/android/gallery3d/data/PicasaAlbum;->updateContent(Lcom/android/gallery3d/data/AlbumData;)V

    goto :goto_3

    .line 137
    .end local v6           #album:Lcom/android/gallery3d/data/PicasaAlbum;
    .end local v7           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v10           #entry:Lcom/android/gallery3d/data/AlbumData;
    :cond_3
    sget-object v2, Lcom/android/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 139
    const/4 v11, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .end local p0
    :goto_4
    if-ge v11, v13, :cond_4

    .line 140
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/data/PicasaAlbum;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/PicasaAlbum;->reload()J

    .line 139
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    move-object v2, v14

    .line 142
    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaSet;

    return-object p0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/gallery3d/data/PicasaAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 215
    invoke-static {}, Lcom/android/gallery3d/data/PicasaAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mDataVersion:J

    .line 217
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/PicasaAlbumSet;->mDataVersion:J

    return-wide v0
.end method
