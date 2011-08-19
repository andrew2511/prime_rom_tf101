.class Lcom/google/android/street/PanoramaImageKey;
.super Ljava/lang/Object;
.source "PanoramaImageKey.java"


# instance fields
.field private final mFace:I

.field private final mHash:I

.field private final mPanoId:Ljava/lang/String;

.field private final mX:I

.field private final mY:I

.field private final mZoom:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 2
    .parameter "panoId"
    .parameter "x"
    .parameter "y"
    .parameter "face"
    .parameter "zoom"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    .line 33
    add-int/lit8 v0, p5, 0x1

    shl-int v0, p3, v0

    or-int/2addr v0, p2

    add-int/lit8 v1, p5, 0x2

    shl-int v1, p4, v1

    or-int/2addr v0, v1

    xor-int/2addr v0, p5

    iget-object v1, p0, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/PanoramaImageKey;->mHash:I

    .line 34
    iput p2, p0, Lcom/google/android/street/PanoramaImageKey;->mX:I

    .line 35
    iput p3, p0, Lcom/google/android/street/PanoramaImageKey;->mY:I

    .line 36
    iput p4, p0, Lcom/google/android/street/PanoramaImageKey;->mFace:I

    .line 37
    iput p5, p0, Lcom/google/android/street/PanoramaImageKey;->mZoom:I

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 49
    :goto_0
    return v2

    .line 45
    :cond_0
    instance-of v2, p1, Lcom/google/android/street/PanoramaImageKey;

    if-nez v2, :cond_1

    move v2, v4

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/street/PanoramaImageKey;

    move-object v1, v0

    .line 49
    .local v1, other:Lcom/google/android/street/PanoramaImageKey;
    iget v2, v1, Lcom/google/android/street/PanoramaImageKey;->mX:I

    iget v3, p0, Lcom/google/android/street/PanoramaImageKey;->mX:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/google/android/street/PanoramaImageKey;->mY:I

    iget v3, p0, Lcom/google/android/street/PanoramaImageKey;->mY:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/google/android/street/PanoramaImageKey;->mFace:I

    iget v3, p0, Lcom/google/android/street/PanoramaImageKey;->mFace:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/google/android/street/PanoramaImageKey;->mZoom:I

    iget v3, p0, Lcom/google/android/street/PanoramaImageKey;->mZoom:I

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public final getFace()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/street/PanoramaImageKey;->mFace:I

    return v0
.end method

.method public final getPanoramaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/street/PanoramaImageKey;->mX:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/street/PanoramaImageKey;->mY:I

    return v0
.end method

.method public final getZoom()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/android/street/PanoramaImageKey;->mZoom:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/street/PanoramaImageKey;->mHash:I

    return v0
.end method

.method public persistentCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "panoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/PanoramaImageKey;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/street/PanoramaImageKey;->getFace()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
