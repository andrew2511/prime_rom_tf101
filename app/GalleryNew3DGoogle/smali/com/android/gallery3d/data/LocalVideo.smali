.class public Lcom/android/gallery3d/data/LocalVideo;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field static final ITEM_PATH:Lcom/android/gallery3d/data/Path;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 60
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;I)V
    .locals 6
    .parameter "path"
    .parameter "context"
    .parameter "id"

    .prologue
    .line 87
    invoke-static {}, Lcom/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 88
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 89
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 90
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 91
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 93
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    return-void

    .line 99
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 81
    invoke-static {}, Lcom/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 82
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 83
    invoke-direct {p0, p3}, Lcom/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    .line 84
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalVideo;->id:I

    .line 108
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    .line 109
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 110
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalVideo;->latitude:D

    .line 111
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalVideo;->longitude:D

    .line 112
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    .line 113
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 114
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    .line 115
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalVideo;->bucketId:I

    .line 116
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalVideo;->fileSize:J

    .line 117
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 176
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->assertNotInRenderThread()V

    .line 177
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 178
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalVideo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 189
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 190
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/data/LocalVideo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 5

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 206
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v1, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    .line 207
    .local v1, s:I
    if-lez v1, :cond_0

    .line 208
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/Utils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 211
    :cond_0
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x485

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalVideo;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 185
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 121
    new-instance v0, Lcom/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/android/gallery3d/util/UpdateHelper;-><init>()V

    .line 122
    .local v0, uh:Lcom/android/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/android/gallery3d/data/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalVideo;->id:I

    .line 123
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 125
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->latitude:D

    .line 126
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->longitude:D

    .line 127
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    .line 129
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->dateAddedInSec:J

    .line 131
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 134
    iget v1, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    .line 136
    iget v1, p0, Lcom/android/gallery3d/data/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalVideo;->bucketId:I

    .line 137
    iget-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/LocalVideo;->fileSize:J

    .line 138
    invoke-virtual {v0}, Lcom/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
