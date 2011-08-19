.class public Lcom/amazon/kcp/reader/models/internal/WordPageElement;
.super Ljava/lang/Object;
.source "WordPageElement.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IWordPageElement;


# instance fields
.field private beginPositionId:I

.field private positionId:I

.field private rects:Ljava/util/Vector;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .parameter "beginPositionId"
    .parameter "positionId"
    .parameter "coveringRectangles"
    .parameter "text"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->rects:Ljava/util/Vector;

    .line 31
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->beginPositionId:I

    .line 32
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->positionId:I

    .line 33
    if-eqz p3, :cond_0

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->rects:Ljava/util/Vector;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0           #i:I
    :cond_0
    iput-object p4, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->text:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;Ljava/lang/String;)V
    .locals 0
    .parameter "positionId"
    .parameter "coveringRectangles"
    .parameter "text"

    .prologue
    .line 53
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/WordPageElement;-><init>(IILjava/util/Vector;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getBeginId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->beginPositionId:I

    return v0
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->rects:Ljava/util/Vector;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->positionId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/WordPageElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
