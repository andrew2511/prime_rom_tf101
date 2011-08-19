.class public Lcom/android/gallery3d/data/LocalAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    }
.end annotation


# static fields
.field public static final PATH_ALL:Lcom/android/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcom/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/android/gallery3d/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mName:Ljava/lang/String;

.field private final mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/android/gallery3d/data/Path;

    .line 42
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    .line 43
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    .line 53
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 54
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 55
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 72
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 73
    invoke-static {p1}, Lcom/android/gallery3d/data/LocalAlbumSet;->getTypeFromPath(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    .line 74
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 75
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 76
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private static findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I
    .locals 3
    .parameter "entries"
    .parameter "bucketId"

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 132
    aget-object v2, p0, v0

    iget v2, v2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 134
    :goto_1
    return v2

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 204
    sget-object v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 213
    const-string v0, "LocalAlbumSet"

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

    .line 214
    const-string v0, ""

    .line 221
    :goto_0
    return-object v0

    .line 217
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 221
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 217
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 11
    .parameter "manager"
    .parameter "type"
    .parameter "parent"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 186
    invoke-virtual {p3, p4}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 187
    .local v1, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v9

    .line 188
    .local v9, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v9, :cond_0

    check-cast v9, Lcom/android/gallery3d/data/MediaSet;

    .end local v9           #object:Lcom/android/gallery3d/data/MediaObject;
    move-object v0, v9

    .line 196
    :goto_0
    return-object v0

    .line 189
    .restart local v9       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 200
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    .restart local v1       #path:Lcom/android/gallery3d/data/Path;
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x1

    move v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_2
    new-instance v0, Lcom/android/gallery3d/data/LocalAlbum;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x0

    move v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_3
    sget-object v8, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 196
    .local v8, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    new-instance v0, Lcom/android/gallery3d/data/LocalMergeAlbum;

    const/4 v2, 0x2

    new-array v9, v2, [Lcom/android/gallery3d/data/MediaSet;

    .end local v9           #object:Lcom/android/gallery3d/data/MediaObject;
    const/4 v10, 0x0

    const/4 v4, 0x2

    sget-object v5, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/android/gallery3d/data/Path;

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v10, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/android/gallery3d/data/Path;

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-direct {v0, v1, v8, v9}, Lcom/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getTypeFromPath(Lcom/android/gallery3d/data/Path;)I
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, name:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v4, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    const-string v1, "all"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    .line 87
    :goto_0
    return v1

    .line 86
    :cond_1
    const-string v1, "image"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "video"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 88
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadBucketEntries(Landroid/database/Cursor;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v0, buffer:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v1, 0x0

    .line 109
    .local v1, typeBits:I
    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 110
    or-int/lit8 v1, v1, 0x2

    .line 112
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 113
    or-int/lit8 v1, v1, 0x8

    .line 116
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    shl-int v2, v5, v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 118
    new-instance v2, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 126
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaSet;

    return-object p0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected loadSubMediaSets()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v4, Lcom/android/gallery3d/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "distinct"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 144
    .local v5, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->assertNotInRenderThread()V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 147
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 148
    const-string v4, "LocalAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open local database: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #uri:Landroid/net/Uri;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .end local p0
    :goto_0
    return-object v4

    .line 151
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local p0
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    move-result-object v15

    .line 152
    .local v15, entries:[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    const/16 v22, 0x0

    .line 154
    .local v22, offset:I
    sget v4, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v15, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I

    move-result v19

    .line 155
    .local v19, index:I
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_1

    .line 156
    add-int/lit8 v23, v22, 0x1

    .end local v22           #offset:I
    .local v23, offset:I
    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/Utils;->swap([Ljava/lang/Object;II)V

    move/from16 v22, v23

    .line 158
    .end local v23           #offset:I
    .restart local v22       #offset:I
    :cond_1
    sget v4, Lcom/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    invoke-static {v15, v4}, Lcom/android/gallery3d/data/LocalAlbumSet;->findBucket([Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;I)I

    move-result v19

    .line 159
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_2

    .line 160
    add-int/lit8 v23, v22, 0x1

    .end local v22           #offset:I
    .restart local v23       #offset:I
    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/Utils;->swap([Ljava/lang/Object;II)V

    move/from16 v22, v23

    .line 163
    .end local v23           #offset:I
    .restart local v22       #offset:I
    :cond_2
    array-length v4, v15

    new-instance v5, Lcom/android/gallery3d/data/LocalAlbumSet$1;

    .end local v5           #uri:Landroid/net/Uri;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/LocalAlbumSet$1;-><init>(Lcom/android/gallery3d/data/LocalAlbumSet;)V

    move-object v0, v15

    move/from16 v1, v22

    move v2, v4

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 172
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v12, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 174
    .local v7, dataManager:Lcom/android/gallery3d/data/DataManager;
    move-object v13, v15

    .local v13, arr$:[Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    move-object v0, v13

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v16, v13, v18

    .line 175
    .local v16, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mType:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet;->mPath:Lcom/android/gallery3d/data/Path;

    move-object v9, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    move v10, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/data/LocalAlbumSet;->getLocalAlbum(Lcom/android/gallery3d/data/DataManager;ILcom/android/gallery3d/data/Path;ILjava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 178
    .end local v16           #entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    :cond_3
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v21

    .end local p0
    .local v21, n:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 179
    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 178
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_4
    move-object v4, v12

    .line 181
    goto/16 :goto_0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierImage:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mNotifierVideo:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mDataVersion:J

    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 232
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet;->mDataVersion:J

    return-wide v0
.end method
