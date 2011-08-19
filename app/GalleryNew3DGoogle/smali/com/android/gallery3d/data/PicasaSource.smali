.class Lcom/android/gallery3d/data/PicasaSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "PicasaSource.java"


# static fields
.field public static final ALBUM_PATH:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "/picasa/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/PicasaSource;->ALBUM_PATH:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 4
    .parameter "application"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const-string v0, "picasa"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 57
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/all"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/image"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/video"

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/all/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/video/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/image/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/item/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.picasa.contentprovider"

    const-string v2, "photos/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider"

    const-string v2, "picasa/item/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/data/PicasaAlbumSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/data/PicasaAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    .line 88
    :goto_0
    return-object v0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/data/PicasaAlbum;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/PicasaAlbum;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/data/PicasaAlbum;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/PicasaAlbum;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v1

    const/4 v3, 0x4

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/data/PicasaAlbum;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/PicasaAlbum;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/android/gallery3d/data/PicasaImage;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;J)Lcom/android/gallery3d/data/PicasaImage;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/android/gallery3d/data/Path;
    .locals 4
    .parameter "uri"

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 99
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 6
    .parameter "path"

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    .line 111
    .local v2, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v3, v2, Lcom/android/gallery3d/data/PicasaImage;

    if-eqz v3, :cond_0

    .line 112
    move-object v0, v2

    check-cast v0, Lcom/android/gallery3d/data/PicasaImage;

    move-object v1, v0

    .line 113
    .local v1, image:Lcom/android/gallery3d/data/PicasaImage;
    sget-object v3, Lcom/android/gallery3d/data/PicasaSource;->ALBUM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/PicasaImage;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 115
    .end local v1           #image:Lcom/android/gallery3d/data/PicasaImage;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getTotalTargetCacheSize(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/PicasaAlbumSet;->getTotalUsedCacheSize(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 12
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x1f4

    if-ge v10, v11, :cond_1

    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 164
    :cond_0
    return-void

    .line 139
    :cond_1
    sget-object v10, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 142
    .local v8, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 147
    .local v0, count:I
    move v6, v3

    .local v6, j:I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 148
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 149
    .local v9, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v10, v9, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 150
    .local v1, curId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    const/16 v10, 0x64

    if-ne v0, v10, :cond_3

    .line 155
    .end local v1           #curId:J
    .end local v9           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v10, v4}, Lcom/android/gallery3d/data/PicasaAlbum;->getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;Ljava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 157
    .local v5, items:[Lcom/android/gallery3d/data/MediaItem;
    move v7, v3

    .local v7, k:I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 158
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 159
    .restart local v9       #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget v10, v9, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v7, v3

    aget-object v11, v5, v11

    invoke-interface {p2, v10, v11}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 147
    .end local v5           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v7           #k:I
    .restart local v1       #curId:J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 162
    .end local v1           #curId:J
    .end local v9           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    .restart local v5       #items:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v7       #k:I
    :cond_4
    move v3, v6

    .line 163
    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    .line 177
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.gallery3d.picasa.contentprovider"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/data/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/picasa/PicasaService;->startSyncAll(Landroid/content/Context;)V

    .line 171
    return-void
.end method
