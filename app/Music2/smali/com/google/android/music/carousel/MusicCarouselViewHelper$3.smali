.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$500()I

    move-result v2

    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    .line 450
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 451
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$500()I

    move-result v2

    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$600()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_0
.end method

.method public bridge synthetic allocate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;->allocate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public destroy(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    return-void
.end method

.method public bridge synthetic destroy(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 444
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;->destroy(Landroid/graphics/Bitmap;)V

    return-void
.end method
