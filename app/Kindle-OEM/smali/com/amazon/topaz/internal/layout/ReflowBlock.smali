.class final Lcom/amazon/topaz/internal/layout/ReflowBlock;
.super Lcom/amazon/topaz/internal/layout/Block;
.source "ReflowBlock.java"


# instance fields
.field private endY:I

.field public lastBaseline:I

.field public lastTop:I

.field public passedFirstLine:Z

.field public final spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

.field private startY:I

.field public topAdjust:I


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .parameter "ll"
    .parameter "rr"

    .prologue
    const/4 v3, 0x0

    .line 21
    sget-object v0, Lcom/amazon/topaz/styles/MatchRule;->EMPTY:Lcom/amazon/topaz/styles/MatchRule;

    new-instance v1, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    invoke-direct {v1, p1, p2}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;-><init>(II)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/topaz/internal/layout/Block;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Lcom/amazon/topaz/internal/layout/Block;)V

    .line 22
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getSpec()Lcom/amazon/topaz/internal/layout/BlockSpec;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    .line 23
    iput v3, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    .line 24
    iput v3, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 25
    iput v3, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    .line 26
    iput v3, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->endY:I

    .line 27
    iput v3, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/amazon/topaz/internal/layout/ReflowBlock;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/ReflowBlock;)V
    .locals 1
    .parameter "toCopy"
    .parameter "styleRule"
    .parameter "parent"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/topaz/internal/layout/Block;-><init>(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/Block;)V

    .line 63
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    .line 64
    iget v0, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    .line 65
    iget v0, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    .line 66
    iget-boolean v0, p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;->passedFirstLine:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->passedFirstLine:Z

    .line 69
    iget v0, p3, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    .line 70
    iget v0, p3, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 71
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->setEndY(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;Lcom/amazon/topaz/internal/layout/ReflowBlock;Z)V
    .locals 2
    .parameter "styleRule"
    .parameter "spec"
    .parameter "parent"
    .parameter "started"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/topaz/internal/layout/Block;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Lcom/amazon/topaz/internal/layout/Block;)V

    .line 41
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->spec:Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    .line 43
    iget v1, p3, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    .line 44
    iget v1, p3, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    .line 47
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->getTopMargin()I

    move-result v0

    .line 48
    .local v0, topMargin:I
    if-nez p4, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 53
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->getEndY()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    .line 54
    iget v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->endY:I

    .line 55
    iget v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    if-eqz v1, :cond_1

    .line 56
    iget v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method protected addChild(Lcom/amazon/topaz/internal/layout/Block;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/layout/Block;->addChild(Lcom/amazon/topaz/internal/layout/Block;)V

    .line 95
    instance-of v2, p1, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-eqz v2, :cond_0

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    move-object v1, v0

    .line 98
    .local v1, relativeChild:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget v2, v2, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    if-nez v2, :cond_1

    .line 100
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 108
    .end local v1           #relativeChild:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v1       #relativeChild:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    :cond_1
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v2, v2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    goto :goto_0
.end method

.method public addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V
    .locals 1
    .parameter "line"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/layout/Block;->addLine(Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBaseline()I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 121
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    .line 122
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/layout/ReflowBlock;->setEndY(I)V

    .line 123
    return-void
.end method

.method copyToNewTree(Lcom/amazon/topaz/internal/layout/Block;Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "parent"
    .parameter "styleRule"

    .prologue
    .line 76
    new-instance v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    check-cast p1, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    .end local p1
    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/topaz/internal/layout/ReflowBlock;-><init>(Lcom/amazon/topaz/internal/layout/ReflowBlock;Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/ReflowBlock;)V

    return-object v0
.end method

.method public getBoundingBox()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEndY()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->endY:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    return v0
.end method

.method protected internalCreateChild(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/BlockSpec;Z)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "styleRule"
    .parameter "childSpec"
    .parameter "started"

    .prologue
    .line 81
    instance-of v0, p2, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/amazon/topaz/internal/layout/ReflowBlock;

    check-cast p2, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    .end local p2
    invoke-direct {v0, p1, p2, p0, p3}, Lcom/amazon/topaz/internal/layout/ReflowBlock;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;Lcom/amazon/topaz/internal/layout/ReflowBlock;Z)V

    .line 87
    :goto_0
    return-object v0

    .restart local p2
    :cond_0
    new-instance v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    check-cast p2, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    .end local p2
    invoke-direct {v0, p1, p2, p0, p3}, Lcom/amazon/topaz/internal/layout/RelativeBlock;-><init>(Lcom/amazon/topaz/styles/MatchRule;Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;Lcom/amazon/topaz/internal/layout/Block;Z)V

    goto :goto_0
.end method

.method public leftFloatWidth()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 132
    const/4 v3, 0x0

    .line 134
    .local v3, floatWidth:I
    new-instance v1, Lcom/amazon/topaz/internal/layout/LayoutIterator;

    invoke-direct {v1, p0, v7}, Lcom/amazon/topaz/internal/layout/LayoutIterator;-><init>(Lcom/amazon/topaz/internal/layout/Block;I)V

    .line 135
    .local v1, allBlocksIt:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/layout/Block;

    .line 138
    .local v2, block:Lcom/amazon/topaz/internal/layout/Block;
    instance-of v5, v2, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-eqz v5, :cond_0

    .line 140
    move-object v0, v2

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    move-object v4, v0

    .line 141
    .local v4, relBlock:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    iget-object v5, v4, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v5, v5, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget v5, v5, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getEndY()I

    move-result v5

    iget v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->topAdjust:I

    if-eqz v5, :cond_0

    .line 147
    :cond_1
    iget-object v5, v4, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getRight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 152
    .end local v2           #block:Lcom/amazon/topaz/internal/layout/Block;
    .end local v4           #relBlock:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    :cond_2
    return v3
.end method

.method public rightFloatWidth()I
    .locals 7

    .prologue
    .line 163
    const/4 v3, 0x0

    .line 165
    .local v3, floatWidth:I
    new-instance v1, Lcom/amazon/topaz/internal/layout/LayoutIterator;

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5}, Lcom/amazon/topaz/internal/layout/LayoutIterator;-><init>(Lcom/amazon/topaz/internal/layout/Block;I)V

    .line 166
    .local v1, allBlocksIt:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/layout/Block;

    .line 169
    .local v2, block:Lcom/amazon/topaz/internal/layout/Block;
    instance-of v5, v2, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    if-eqz v5, :cond_0

    .line 171
    move-object v0, v2

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlock;

    move-object v4, v0

    .line 172
    .local v4, relBlock:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    iget-object v5, v4, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    iget-object v5, v5, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget v5, v5, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/RelativeBlock;->getEndY()I

    move-result v5

    iget v6, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    if-le v5, v6, :cond_0

    .line 174
    iget-object v5, v4, Lcom/amazon/topaz/internal/layout/RelativeBlock;->spec:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->getRight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 181
    .end local v2           #block:Lcom/amazon/topaz/internal/layout/Block;
    .end local v4           #relBlock:Lcom/amazon/topaz/internal/layout/RelativeBlock;
    :cond_1
    return v3
.end method

.method public setEndY(I)V
    .locals 2
    .parameter "newEndY"

    .prologue
    .line 191
    iput p1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->endY:I

    .line 192
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->parent:Lcom/amazon/topaz/internal/layout/Block;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/Block;->getEndY()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/Block;->setEndY(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public shiftCoordinates(I)V
    .locals 1
    .parameter "deltaY"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/layout/Block;->shiftCoordinates(I)V

    .line 212
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->startY:I

    .line 213
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->endY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->endY:I

    .line 214
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastTop:I

    .line 215
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowBlock;->lastBaseline:I

    .line 219
    :cond_0
    return-void
.end method
