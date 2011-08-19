.class public Lcom/android/gallery3d/provider/GalleryProvider;
.super Landroid/content/ContentProvider;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/provider/GalleryProvider$1;,
        Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;,
        Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;


# instance fields
.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "content://com.android.gallery3d.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/provider/GalleryProvider;)Lcom/android/gallery3d/data/DownloadCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/provider/GalleryProvider;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/gallery3d/provider/GalleryProvider;->dump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static dump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 178
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 179
    .local v0, buffer:[B
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 180
    .local v1, rc:I
    :goto_0
    if-lez v1, :cond_0

    .line 181
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 90
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    .line 92
    .end local v0           #app:Lcom/android/gallery3d/app/GalleryApp;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    return-object v1
.end method

.method private queryMtpItem(Lcom/android/gallery3d/data/MtpImage;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "image"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 123
    array-length v5, p2

    new-array v1, v5, [Ljava/lang/Object;

    .line 124
    .local v1, columnValues:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, p2

    .local v4, n:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 125
    aget-object v0, p2, v3

    .line 126
    .local v0, column:Ljava/lang/String;
    const-string v5, "_display_name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 124
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const-string v5, "_size"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 130
    :cond_1
    const-string v5, "mime_type"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 132
    :cond_2
    const-string v5, "datetaken"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MtpImage;->getDateInMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    .line 135
    :cond_3
    const-string v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported column: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    .end local v0           #column:Ljava/lang/String;
    :cond_4
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 139
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 140
    return-object v2
.end method

.method private queryPicasaItem(Lcom/android/gallery3d/data/PicasaImage;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "image"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 145
    array-length v6, p2

    new-array v1, v6, [Ljava/lang/Object;

    .line 146
    .local v1, columnValues:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/PicasaImage;->getPhotoEntry()Lcom/android/gallery3d/picasa/PhotoEntry;

    move-result-object v3

    .line 147
    .local v3, entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v5, p2

    .local v5, n:I
    :goto_0
    if-ge v4, v5, :cond_a

    .line 148
    aget-object v0, p2, v4

    .line 149
    .local v0, column:Ljava/lang/String;
    const-string v6, "_display_name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    iget-object v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    aput-object v6, v1, v4

    .line 147
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_0
    const-string v6, "_size"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    iget v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    goto :goto_1

    .line 153
    :cond_1
    const-string v6, "mime_type"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    iget-object v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->contentType:Ljava/lang/String;

    aput-object v6, v1, v4

    goto :goto_1

    .line 155
    :cond_2
    const-string v6, "picasa_id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    iget-wide v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v4

    goto :goto_1

    .line 157
    :cond_3
    const-string v6, "datetaken"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    iget-wide v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v4

    goto :goto_1

    .line 159
    :cond_4
    const-string v6, "latitude"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    iget-wide v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    iget-wide v8, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :goto_2
    aput-object v6, v1, v4

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 162
    :cond_6
    const-string v6, "longitude"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 163
    iget-wide v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    iget-wide v8, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-wide v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :goto_3
    aput-object v6, v1, v4

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 165
    :cond_8
    const-string v6, "orientation"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 166
    iget v6, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->rotation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    goto/16 :goto_1

    .line 168
    :cond_9
    const-string v6, "GalleryProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unsupported column: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    .end local v0           #column:Ljava/lang/String;
    :cond_a
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 172
    .local v2, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 173
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "uri"

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 67
    .local v2, token:J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 68
    .local v1, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .line 69
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 71
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 69
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 71
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 83
    .local v0, app:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 84
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 191
    .local v8, token:J
    :try_start_0
    const-string v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "cannot open file for write"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 194
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 195
    .local v7, path:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v6

    .line 196
    .local v6, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v6, :cond_1

    .line 197
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    instance-of v0, v6, Lcom/android/gallery3d/data/PicasaImage;

    if-eqz v0, :cond_2

    .line 200
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;

    check-cast v6, Lcom/android/gallery3d/data/PicasaImage;

    .end local v6           #object:Lcom/android/gallery3d/data/MediaObject;
    const/4 v0, 0x0

    invoke-direct {v5, p0, v6, v0}, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;-><init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/PicasaImage;Lcom/android/gallery3d/provider/GalleryProvider$1;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 209
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 202
    .restart local v6       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_2
    :try_start_2
    instance-of v0, v6, Lcom/android/gallery3d/data/MtpImage;

    if-eqz v0, :cond_3

    .line 203
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;

    check-cast v6, Lcom/android/gallery3d/data/MtpImage;

    .end local v6           #object:Lcom/android/gallery3d/data/MediaObject;
    const/4 v0, 0x0

    invoke-direct {v5, p0, v6, v0}, Lcom/android/gallery3d/provider/GalleryProvider$MtpPipeDataWriter;-><init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/MtpImage;Lcom/android/gallery3d/provider/GalleryProvider$1;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 209
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 206
    .restart local v6       #object:Lcom/android/gallery3d/data/MediaObject;
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unspported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 101
    .local v9, token:J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 102
    .local v8, path:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v7

    .line 103
    .local v7, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v7, :cond_0

    .line 104
    const-string v1, "GalleryProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v4

    :goto_0
    return-object v1

    .line 107
    :cond_0
    :try_start_1
    instance-of v1, v7, Lcom/android/gallery3d/data/PicasaImage;

    if-eqz v1, :cond_1

    .line 108
    move-object v0, v7

    check-cast v0, Lcom/android/gallery3d/data/PicasaImage;

    move-object v2, v0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/provider/GalleryProvider;->queryPicasaItem(Lcom/android/gallery3d/data/PicasaImage;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 117
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 110
    :cond_1
    :try_start_2
    instance-of v1, v7, Lcom/android/gallery3d/data/MtpImage;

    if-eqz v1, :cond_2

    .line 111
    move-object v0, v7

    check-cast v0, Lcom/android/gallery3d/data/MtpImage;

    move-object v2, v0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/provider/GalleryProvider;->queryMtpItem(Lcom/android/gallery3d/data/MtpImage;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 117
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v4

    goto :goto_0

    .end local v7           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v8           #path:Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
