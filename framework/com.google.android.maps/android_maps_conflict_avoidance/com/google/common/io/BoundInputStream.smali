.class public Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;
.super Ljava/io/InputStream;
.source "BoundInputStream.java"


# instance fields
.field private base:Ljava/io/InputStream;

.field private buf:[B

.field private bufPos:I

.field private bufSize:I

.field private remaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "base"
    .parameter "len"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    .line 36
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    .line 38
    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    .line 39
    return-void
.end method

.method private checkBuf()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    if-gtz v0, :cond_7

    move v0, v4

    .line 58
    :goto_6
    return v0

    .line 50
    :cond_7
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    if-lt v0, v1, :cond_2a

    .line 51
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    .line 52
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    if-gtz v0, :cond_28

    .line 53
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    move v0, v4

    .line 54
    goto :goto_6

    .line 56
    :cond_28
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    .line 58
    :cond_2a
    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 62
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 67
    const/4 v0, -0x1

    .line 70
    :goto_7
    return v0

    .line 69
    :cond_8
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    .line 70
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_7
.end method

.method public read([BII)I
    .registers 6
    .parameter "data"
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 75
    const/4 v0, -0x1

    .line 81
    :goto_7
    return v0

    .line 77
    :cond_8
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 78
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    .line 80
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    move v0, p3

    .line 81
    goto :goto_7
.end method
