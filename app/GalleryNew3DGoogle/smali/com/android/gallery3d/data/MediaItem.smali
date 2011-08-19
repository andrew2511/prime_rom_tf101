.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 43
    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 54
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 55
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 56
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method
