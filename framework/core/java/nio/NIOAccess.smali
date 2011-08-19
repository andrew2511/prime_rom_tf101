.class final Ljava/nio/NIOAccess;
.super Ljava/lang/Object;
.source "NIOAccess.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .registers 2
    .parameter "b"

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getBaseArrayOffset(Ljava/nio/Buffer;)I
    .registers 3
    .parameter "b"

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v0, v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static getBasePointer(Ljava/nio/Buffer;)J
    .registers 4
    .parameter "b"

    .prologue
    .line 36
    iget v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:I

    .line 37
    .local v0, address:I
    if-nez v0, :cond_7

    .line 38
    const-wide/16 v1, 0x0

    .line 40
    :goto_6
    return-wide v1

    :cond_7
    iget v1, p0, Ljava/nio/Buffer;->position:I

    iget v2, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v1, v2

    add-int/2addr v1, v0

    int-to-long v1, v1

    goto :goto_6
.end method
