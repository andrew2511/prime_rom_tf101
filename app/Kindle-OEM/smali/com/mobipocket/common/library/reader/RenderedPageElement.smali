.class public abstract Lcom/mobipocket/common/library/reader/RenderedPageElement;
.super Ljava/lang/Object;
.source "RenderedPageElement.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/IRenderedPageElement;


# instance fields
.field private beginPositionId:I

.field private positionId:I

.field private rects:Ljava/util/Vector;


# direct methods
.method constructor <init>(IILjava/util/Vector;)V
    .locals 1
    .parameter "beginPositionId"
    .parameter "positionId"
    .parameter "positions"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->rects:Ljava/util/Vector;

    .line 22
    iput p1, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->beginPositionId:I

    .line 23
    iput p2, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->positionId:I

    .line 24
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->rects:Ljava/util/Vector;

    .line 25
    return-void
.end method


# virtual methods
.method public getBeginId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->beginPositionId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->beginPositionId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->positionId:I

    goto :goto_0
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->rects:Ljava/util/Vector;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageElement;->positionId:I

    return v0
.end method
