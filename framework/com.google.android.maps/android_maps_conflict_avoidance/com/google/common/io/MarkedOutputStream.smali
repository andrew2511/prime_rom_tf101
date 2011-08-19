.class public Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
.super Ljava/io/OutputStream;
.source "MarkedOutputStream.java"


# instance fields
.field private contents:[B

.field private markers:[I

.field private nextContent:I

.field private nextMarker:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 27
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    .line 32
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    .line 35
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->clear()V

    .line 36
    return-void
.end method

.method private static calculateSize(III)I
    .registers 4
    .parameter "needed"
    .parameter "size"
    .parameter "current"

    .prologue
    .line 66
    sub-int v0, p1, p2

    .line 67
    .local v0, remaining:I
    :goto_2
    if-ge v0, p0, :cond_8

    .line 68
    add-int/2addr v0, p1

    .line 69
    shl-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 71
    :cond_8
    return p1
.end method

.method private expandContentsIfNecessary(I)V
    .registers 7
    .parameter "needed"

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->calculateSize(III)I

    move-result v1

    .line 121
    .local v1, size:I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    if-le v1, v2, :cond_1a

    .line 122
    new-array v0, v1, [B

    .line 123
    .local v0, newContents:[B
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    .line 126
    .end local v0           #newContents:[B
    :cond_1a
    return-void
.end method

.method private expandMarkersIfNecessary(I)V
    .registers 7
    .parameter "needed"

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    array-length v2, v2

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->calculateSize(III)I

    move-result v1

    .line 76
    .local v1, size:I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    array-length v2, v2

    if-le v1, v2, :cond_1a

    .line 77
    new-array v0, v1, [I

    .line 78
    .local v0, newMarkers:[I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    .line 81
    .end local v0           #newMarkers:[I
    :cond_1a
    return-void
.end method


# virtual methods
.method public addMarker(I)V
    .registers 5
    .parameter "marker"

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandMarkersIfNecessary(I)V

    .line 103
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    aput p1, v0, v1

    .line 104
    return-void
.end method

.method public availableContent()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->reset()V

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    .line 56
    return-void
.end method

.method public getMarker(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 88
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    aget v0, v0, p1

    return v0
.end method

.method public numMarkers()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    .line 43
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    .line 44
    return-void
.end method

.method public setMarker(II)V
    .registers 4
    .parameter "position"
    .parameter "marker"

    .prologue
    .line 116
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    aput p2, v0, p1

    .line 117
    return-void
.end method

.method public write(I)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 138
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    return-void
.end method

.method public write([B)V
    .registers 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    array-length v0, p1

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 143
    const/4 v0, 0x0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    .line 145
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "value"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 149
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    .line 151
    return-void
.end method

.method public writeContentsTo(Ljava/io/OutputStream;II)V
    .registers 5
    .parameter "os"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    return-void
.end method
