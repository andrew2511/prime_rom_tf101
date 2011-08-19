.class public Lcom/amazon/kcp/reader/models/internal/ImagePageElement;
.super Ljava/lang/Object;
.source "ImagePageElement.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IImagePageElement;


# instance fields
.field private beginId:I

.field private id:I

.field private imageId:I

.field private positions:Ljava/util/Vector;


# direct methods
.method public constructor <init>(IILjava/util/Vector;I)V
    .locals 3
    .parameter "beginId"
    .parameter "positionId"
    .parameter "coveringRectangles"
    .parameter "imageId"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->positions:Ljava/util/Vector;

    .line 31
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->beginId:I

    .line 32
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->id:I

    .line 33
    iput p4, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->imageId:I

    .line 35
    if-eqz p3, :cond_0

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->positions:Ljava/util/Vector;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;I)V
    .locals 0
    .parameter "positionId"
    .parameter "coveringRectangles"
    .parameter "imageId"

    .prologue
    .line 54
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;-><init>(IILjava/util/Vector;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public getBeginId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->beginId:I

    return v0
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->positions:Ljava/util/Vector;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->id:I

    return v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;->imageId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x2

    return v0
.end method
