.class Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field mFullImage:Landroid/graphics/BitmapRegionDecoder;

.field mFullImageTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedBits:I

.field mRotation:I

.field mScreenNail:Landroid/graphics/Bitmap;

.field mScreenNailTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mVersion:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mVersion:J

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public resetImages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mRequestedBits:I

    .line 601
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImage:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 603
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNail:Landroid/graphics/Bitmap;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 612
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mScreenNailTask:Lcom/android/gallery3d/util/Future;

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 616
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mFullImageTask:Lcom/android/gallery3d/util/Future;

    .line 618
    :cond_3
    return-void
.end method

.method public setVersion(J)Z
    .locals 2
    .parameter "version"

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mVersion:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 595
    :goto_0
    return v0

    .line 594
    :cond_0
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mVersion:J

    .line 595
    const/4 v0, 0x1

    goto :goto_0
.end method
