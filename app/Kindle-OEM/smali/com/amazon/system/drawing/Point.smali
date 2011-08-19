.class public Lcom/amazon/system/drawing/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/amazon/system/drawing/Point;->x:I

    .line 11
    iput v0, p0, Lcom/amazon/system/drawing/Point;->y:I

    .line 12
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/amazon/system/drawing/Point;->x:I

    .line 17
    iput p2, p0, Lcom/amazon/system/drawing/Point;->y:I

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/drawing/Point;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget v0, p1, Lcom/amazon/system/drawing/Point;->x:I

    iput v0, p0, Lcom/amazon/system/drawing/Point;->x:I

    .line 23
    iget v0, p1, Lcom/amazon/system/drawing/Point;->y:I

    iput v0, p0, Lcom/amazon/system/drawing/Point;->y:I

    .line 24
    return-void
.end method


# virtual methods
.method public getX()D
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/amazon/system/drawing/Point;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/amazon/system/drawing/Point;->y:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public move(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 38
    iput p1, p0, Lcom/amazon/system/drawing/Point;->x:I

    .line 39
    iput p2, p0, Lcom/amazon/system/drawing/Point;->y:I

    .line 40
    return-void
.end method
