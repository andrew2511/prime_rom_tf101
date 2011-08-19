.class public Lcom/layar/core/AnimatedTexture;
.super Ljava/lang/Object;
.source "AnimatedTexture.java"

# interfaces
.implements Lcom/layar/core/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/core/AnimatedTexture$Frame;
    }
.end annotation


# instance fields
.field private frames:[Lcom/layar/core/AnimatedTexture$Frame;

.field private loopCount:I

.field private runTime:J

.field private running:Z

.field private startTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "numFrames"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/layar/core/AnimatedTexture;->running:Z

    .line 16
    iput v0, p0, Lcom/layar/core/AnimatedTexture;->loopCount:I

    .line 21
    new-array v0, p1, [Lcom/layar/core/AnimatedTexture$Frame;

    iput-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    .line 22
    return-void
.end method

.method private calculateRuntime()V
    .locals 5

    .prologue
    .line 124
    const-wide/16 v1, 0x0

    .line 125
    .local v1, offset:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 130
    iput-wide v1, p0, Lcom/layar/core/AnimatedTexture;->runTime:J

    .line 131
    return-void

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v3, v3, v0

    iput-wide v1, v3, Lcom/layar/core/AnimatedTexture$Frame;->offsetTime:J

    .line 127
    iget-object v3, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/layar/core/AnimatedTexture$Frame;->delay:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static loadAnimatedGif()Lcom/layar/core/AnimatedTexture;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFrame(I)Lcom/layar/core/AnimatedTexture$Frame;
    .locals 1
    .parameter "frame"

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v0, v0

    return v0
.end method

.method public getFrameData(I)[B
    .locals 1
    .parameter "frame"

    .prologue
    .line 82
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/layar/core/AnimatedTexture$Frame;->image:[B

    goto :goto_0
.end method

.method public getFrameDelay(I)I
    .locals 1
    .parameter "frame"

    .prologue
    .line 87
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/layar/core/AnimatedTexture$Frame;->delay:I

    goto :goto_0
.end method

.method public getFrameIndex()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    iget-boolean v3, p0, Lcom/layar/core/AnimatedTexture;->running:Z

    if-nez v3, :cond_0

    move v3, v7

    .line 50
    :goto_0
    return v3

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/layar/core/AnimatedTexture;->startTime:J

    sub-long v1, v3, v5

    .line 39
    .local v1, time:J
    iget v3, p0, Lcom/layar/core/AnimatedTexture;->loopCount:I

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/layar/core/AnimatedTexture;->runTime:J

    rem-long/2addr v1, v3

    .line 41
    :cond_1
    iget-wide v3, p0, Lcom/layar/core/AnimatedTexture;->runTime:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 42
    iput-boolean v7, p0, Lcom/layar/core/AnimatedTexture;->running:Z

    move v3, v7

    .line 43
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 50
    sub-int v3, v0, v8

    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v3, v3, v0

    iget-wide v3, v3, Lcom/layar/core/AnimatedTexture$Frame;->offsetTime:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_4

    sub-int v3, v0, v8

    goto :goto_0

    .line 47
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/layar/core/AnimatedTexture;->loopCount:I

    return v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 62
    const/16 v1, 0x8

    .line 64
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 69
    return v1

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 66
    iget-object v2, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/layar/core/AnimatedTexture$Frame;->image:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTextureData()[B
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/layar/core/AnimatedTexture$Frame;->image:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method setFrame(I[BI)V
    .locals 2
    .parameter "i"
    .parameter "image"
    .parameter "delay"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    new-instance v1, Lcom/layar/core/AnimatedTexture$Frame;

    invoke-direct {v1, p0}, Lcom/layar/core/AnimatedTexture$Frame;-><init>(Lcom/layar/core/AnimatedTexture;)V

    aput-object v1, v0, p1

    .line 100
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/layar/core/AnimatedTexture$Frame;->image:[B

    .line 101
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v0, v0, p1

    iput p3, v0, Lcom/layar/core/AnimatedTexture$Frame;->delay:I

    .line 102
    return-void
.end method

.method public setFrameDelay(II)V
    .locals 1
    .parameter "frame"
    .parameter "delay"

    .prologue
    .line 92
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/layar/core/AnimatedTexture;->frames:[Lcom/layar/core/AnimatedTexture$Frame;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/layar/core/AnimatedTexture$Frame;->delay:I

    .line 95
    invoke-direct {p0}, Lcom/layar/core/AnimatedTexture;->calculateRuntime()V

    goto :goto_0
.end method

.method public setLoopCount(I)V
    .locals 0
    .parameter "loopCount"

    .prologue
    .line 116
    iput p1, p0, Lcom/layar/core/AnimatedTexture;->loopCount:I

    .line 117
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/layar/core/AnimatedTexture;->calculateRuntime()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layar/core/AnimatedTexture;->startTime:J

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/core/AnimatedTexture;->running:Z

    .line 28
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/AnimatedTexture;->running:Z

    .line 32
    return-void
.end method
