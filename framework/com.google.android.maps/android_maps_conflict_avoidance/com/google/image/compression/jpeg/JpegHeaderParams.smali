.class public Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;
.super Ljava/lang/Object;
.source "JpegHeaderParams.java"


# instance fields
.field private headerLength:I

.field private height:I

.field private quality:I

.field private qualityAlgorithm:I

.field private variant:I

.field private width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 10
    .parameter "variant"
    .parameter "width"
    .parameter "height"
    .parameter "quality"
    .parameter "qualityAlgorithm"
    .parameter "headerLength"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p5, :cond_21

    const/4 v0, 0x1

    if-eq p5, v0, :cond_21

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qualityAlgorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_21
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->variant:I

    .line 73
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->width:I

    .line 74
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->height:I

    .line 75
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->quality:I

    .line 76
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->qualityAlgorithm:I

    .line 77
    iput p6, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->headerLength:I

    .line 78
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->height:I

    return v0
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->quality:I

    return v0
.end method

.method public getQualityAlgorithm()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->qualityAlgorithm:I

    return v0
.end method

.method public getVariant()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->variant:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegHeaderParams;->width:I

    return v0
.end method
