.class Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;
.super Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.source "ScaledAndroidImage.java"


# instance fields
.field private cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final dh:I

.field private final dw:I

.field private final parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

.field private final sh:I

.field private final sw:I

.field private final sx:I

.field private final sy:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;IIIIII)V
    .registers 9
    .parameter "parent"
    .parameter "dw"
    .parameter "dh"
    .parameter "sx"
    .parameter "sy"
    .parameter "sw"
    .parameter "sh"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    .line 40
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pin()V

    .line 41
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    .line 42
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    .line 43
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    .line 44
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sx:I

    .line 45
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sy:I

    .line 46
    iput p6, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sw:I

    .line 47
    iput p7, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sh:I

    .line 48
    return-void
.end method

.method private getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    if-nez v0, :cond_4a

    .line 52
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    invoke-direct {v0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(II)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    move-result-object v0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sx:I

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sy:I

    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sw:I

    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sh:I

    move v3, v2

    invoke-interface/range {v0 .. v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawScaledImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IIIIIIII)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graphics cannot scale image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4a
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    return-object v0
.end method


# virtual methods
.method public createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 14
    .parameter "srcX"
    .parameter "srcY"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V
    .registers 14
    .parameter "g"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    if-nez v0, :cond_19

    .line 72
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->parent:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sx:I

    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sy:I

    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sw:I

    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->sh:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawScaledImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IIIIIIII)Z

    .line 76
    :goto_18
    return-void

    .line 74
    :cond_19
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->cache:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-virtual {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V

    goto :goto_18
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getCache()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dh:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->dw:I

    return v0
.end method
