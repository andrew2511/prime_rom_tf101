.class public Lcom/amazon/topaz/internal/drawing/ScaledRectangle;
.super Lcom/amazon/system/drawing/Rectangle;
.source "ScaledRectangle.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private round_:I

.field private scaleBits_:I

.field private scale_:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 95
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    .line 97
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    .line 44
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "scaleBits"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(II)V

    .line 95
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    .line 97
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    .line 55
    invoke-virtual {p0, p3}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->setScaleBits(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "scaleBits"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 95
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    .line 97
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    .line 60
    invoke-virtual {p0, p5}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->setScaleBits(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/drawing/Rectangle;I)V
    .locals 3
    .parameter "r"
    .parameter "scaleBits"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 95
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    .line 97
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    .line 51
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->setScaleBits(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/drawing/ScaledRectangle;)V
    .locals 3
    .parameter "sr"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 95
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    .line 97
    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    .line 47
    iget v0, p1, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->setScaleBits(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public getIntScaledHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->height:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(I)I

    move-result v0

    return v0
.end method

.method public getIntScaledWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->width:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(I)I

    move-result v0

    return v0
.end method

.method public getIntScaledX()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->x:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(I)I

    move-result v0

    return v0
.end method

.method public getIntScaledY()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->y:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight()D
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getHeight()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScaledWidth()D
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getWidth()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScaledX()D
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getScaledY()D
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->getY()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public scale(D)D
    .locals 2
    .parameter "coordinate"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public scale(I)I
    .locals 2
    .parameter "coordinate"

    .prologue
    .line 80
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    shr-int/2addr v0, v1

    return v0
.end method

.method public setScaleBits(I)V
    .locals 6
    .parameter "scaleBits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 24
    if-gez p1, :cond_0

    .line 26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative scaleBits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_0
    const/16 v2, 0x3f

    if-le p1, v2, :cond_1

    .line 31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too-large scaleBits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_1
    iput p1, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scaleBits_:I

    .line 37
    const-wide/16 v2, 0x1

    shl-long v0, v2, p1

    .line 38
    .local v0, denominator:J
    const-wide/high16 v2, 0x3ff0

    long-to-double v4, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->scale_:D

    .line 40
    const/4 v2, 0x1

    shl-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;->round_:I

    .line 41
    return-void
.end method
