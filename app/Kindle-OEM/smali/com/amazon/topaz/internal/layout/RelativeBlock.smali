.class final Lcom/amazon/topaz/internal/layout/RelativeBlock;
.super Lcom/amazon/topaz/internal/layout/Block;
.source "RelativeBlock.java"


# instance fields
.field private endY:I

.field public final spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

.field private startY:I


# direct methods
.method private constructor <init>(Lcom/amazon/topaz/internal/layout/RelativeBlock;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 2
    .parameter "toCopy"
    .parameter "styleRule"
    .parameter "parent"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/topaz/internal/layout/Block;-><init>(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)V

    .line 46
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    .line 47
    iget v0, p1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    .line 48
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->endY:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;Lcom/amazon/topaz/internal/layout/Block;Z)V
    .locals 3
    .parameter "styleRule"
    .parameter "spec"
    .parameter "parent"
    .parameter "started"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/topaz/internal/layout/Block;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Lcom/amazon/topaz/internal/layout/Block;)V

    .line 22
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    .line 24
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getTopMargin()I

    move-result v0

    .line 25
    .local v0, topMargin:I
    if-nez p4, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 30
    :cond_0
    instance-of v1, p3, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    .line 39
    :goto_0
    iget v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->endY:I

    .line 40
    return-void

    .line 36
    :cond_1
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/Block;->getStartY()I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    goto :goto_0
.end method


# virtual methods
.method copyToNewTree(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "parent"
    .parameter "styleRule"

    .prologue
    .line 53
    new-instance v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/topaz/internal/layout/RelativeBlock;-><init>(Lcom/amazon/topaz/internal/layout/RelativeBlock;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)V

    return-object v0
.end method

.method public getBoundingBox()Lcom/amazon/system/drawing/Rectangle;
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getBoundingBox()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 97
    .local v0, retval:Lcom/amazon/system/drawing/Rectangle;
    const/4 v1, 0x0

    iget v2, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/drawing/Rectangle;->translate(II)V

    .line 98
    return-object v0
.end method

.method public getEndY()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->endY:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    return v0
.end method

.method protected internalCreateChild(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Z)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "styleRule"
    .parameter "childSpec"
    .parameter "started"

    .prologue
    .line 58
    new-instance v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    check-cast p2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    .end local p2
    invoke-direct {v0, p1, p2, p0, p3}, Lcom/amazon/topaz/internal/layout/RelativeBlock;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;Lcom/amazon/topaz/internal/layout/Block;Z)V

    .line 60
    .local v0, retval:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    return-object v0
.end method

.method public remap(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 3
    .parameter "bounds"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->remap(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 71
    .local v0, retval:Lcom/amazon/system/drawing/Rectangle;
    const/4 v1, 0x0

    iget v2, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/drawing/Rectangle;->translate(II)V

    .line 72
    return-object v0
.end method

.method public setEndY(I)V
    .locals 2
    .parameter "newEndY"

    .prologue
    .line 77
    iput p1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->endY:I

    .line 78
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget v0, v0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/Block;->setEndY(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public shiftCoordinates(I)V
    .locals 1
    .parameter "deltaY"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/layout/Block;->shiftCoordinates(I)V

    .line 109
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->startY:I

    .line 110
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->endY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->endY:I

    .line 111
    return-void
.end method

.method public shouldAddLine()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    return v0
.end method
