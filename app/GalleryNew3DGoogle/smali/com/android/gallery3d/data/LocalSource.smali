.class Lcom/android/gallery3d/data/LocalSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalSource$1;,
        Lcom/android/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalSource$IdComparator;-><init>(Lcom/android/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 57
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 59
    new-instance v0, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "defaultType"

    .prologue
    .line 129
    const-string v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, mediaType:I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, bucketId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 135
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 140
    packed-switch v3, :pswitch_data_0

    .line 146
    :pswitch_0
    const-string v4, "/merge/{/local/image,/local/video}"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v4, 0x0

    goto :goto_0

    .line 142
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_1
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5
    .parameter "type"
    .parameter "defaultType"

    .prologue
    .line 113
    if-nez p0, :cond_0

    move v2, p1

    .line 121
    :goto_0
    return v2

    .line 115
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    .local v1, value:I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_1

    move v2, v1

    .line 117
    goto :goto_0

    .line 118
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    move v2, p1

    .line 121
    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .parameter
    .parameter "consumer"
    .parameter "isImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    sget-object v10, Lcom/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 215
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 216
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 219
    .local v7, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v7, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 221
    .local v9, startId:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v4, v1, 0x1

    .local v4, j:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 225
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 226
    .local v8, pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v10, v8, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, curId:I
    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_1

    .line 233
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-static {v10, p3, v2}, Lcom/android/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 235
    .local v3, items:[Lcom/android/gallery3d/data/MediaItem;
    move v5, v1

    .local v5, k:I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 236
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 237
    .restart local v8       #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget v10, v8, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 230
    .end local v3           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v5           #k:I
    .restart local v0       #curId:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/android/gallery3d/data/MediaSource$PathId;
    .restart local v3       #items:[Lcom/android/gallery3d/data/MediaItem;
    .restart local v5       #k:I
    :cond_2
    move v1, v4

    .line 241
    goto :goto_0

    .line 242
    .end local v2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #items:[Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v7           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    .end local v9           #startId:I
    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 83
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v6, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 108
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 87
    :pswitch_0
    new-instance v6, Lcom/android/gallery3d/data/LocalAlbumSet;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v6, p1, v7}, Lcom/android/gallery3d/data/LocalAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V

    .line 106
    :goto_0
    return-object v6

    .line 89
    :pswitch_1
    new-instance v6, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v8}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    .line 91
    :pswitch_2
    new-instance v6, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v9}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v6, v9}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 94
    .local v1, bucketId:I
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 95
    .local v3, dataManager:Lcom/android/gallery3d/data/DataManager;
    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaSet;

    .line 97
    .local v4, imageSet:Lcom/android/gallery3d/data/MediaSet;
    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaSet;

    .line 99
    .local v5, videoSet:Lcom/android/gallery3d/data/MediaSet;
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 100
    .local v2, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v6, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/android/gallery3d/data/MediaSet;

    aput-object v4, v7, v9

    aput-object v5, v7, v8

    invoke-direct {v6, p1, v2, v7}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 104
    .end local v1           #bucketId:I
    .end local v2           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v3           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v4           #imageSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v5           #videoSet:Lcom/android/gallery3d/data/MediaSet;
    :pswitch_4
    new-instance v6, Lcom/android/gallery3d/data/LocalImage;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 106
    :pswitch_5
    new-instance v6, Lcom/android/gallery3d/data/LocalVideo;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcom/android/gallery3d/data/LocalSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/android/gallery3d/data/Path;
    .locals 7
    .parameter "uri"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v3, v6

    .line 173
    :goto_1
    return-object v3

    .line 156
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 157
    .local v1, id:J
    cmp-long v3, v1, v4

    if-ltz v3, :cond_0

    sget-object v3, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v6

    goto :goto_1

    .line 160
    .end local v1           #id:J
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 161
    .restart local v1       #id:J
    cmp-long v3, v1, v4

    if-ltz v3, :cond_1

    sget-object v3, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v6

    goto :goto_1

    .line 164
    .end local v1           #id:J
    :pswitch_2
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    .line 167
    :pswitch_3
    const/4 v3, 0x4

    invoke-direct {p0, p1, v3}, Lcom/android/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 170
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 171
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "LocalSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 179
    .local v0, object:Lcom/android/gallery3d/data/MediaObject;
    instance-of v1, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "/local/image/"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalImage;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 182
    .restart local v0       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    instance-of v1, v0, Lcom/android/gallery3d/data/LocalVideo;

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "/local/video/"

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #object:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalVideo;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    .line 186
    .restart local v0       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 7
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
    .line 191
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v5, videoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 194
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 198
    .local v4, pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v6, v4, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 199
    .local v3, parent:Lcom/android/gallery3d/data/Path;
    sget-object v6, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_1

    .line 200
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    sget-object v6, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    .line 202
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    .end local v3           #parent:Lcom/android/gallery3d/data/Path;
    .end local v4           #pid:Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 207
    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/android/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 208
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 271
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 265
    return-void
.end method
