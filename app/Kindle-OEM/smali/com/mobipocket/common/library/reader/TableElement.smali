.class public Lcom/mobipocket/common/library/reader/TableElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "TableElement.java"


# instance fields
.field private firstLineDisplayedIndex:I

.field private lastLineDisplayedIndex:I

.field private localDrawOffsetX:I

.field private localDrawOffsetY:I

.field private pBgColor:I

.field private pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

.field private pScreenMaxX:I

.field private pScreenMaxY:I

.field private pScreenMinX:I

.field private pScreenMinY:I

.field private pageBeginPositionForTable:I

.field private tableMovedonNextScreen:Z


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TableElement;IILcom/amazon/system/drawing/Dimension;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 22
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    .line 23
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    .line 25
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    .line 26
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    .line 39
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    .line 157
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TableElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 159
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->pBgColor:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pBgColor:I

    .line 160
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 161
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    .line 162
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    .line 163
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    .line 164
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    .line 165
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    .line 166
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    .line 167
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    .line 168
    iget v0, p1, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 170
    iput p3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    .line 171
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] Copying TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") into TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with \"previous page begin\" position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " availableHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inherited localDrawOffsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inherited localDrawOffsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inherited lastLineDisplayedIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inherited firstLineDisplayedIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {p0, p2, p5}, Lcom/mobipocket/common/library/reader/TableElement;->computeVisibleArea(IZ)I

    move-result v0

    .line 179
    iget v1, p4, Lcom/amazon/system/drawing/Dimension;->height:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    iget v2, p4, Lcom/amazon/system/drawing/Dimension;->width:I

    if-le v1, v2, :cond_3

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    iget v2, p4, Lcom/amazon/system/drawing/Dimension;->width:I

    if-le v1, v2, :cond_1

    .line 184
    iget v1, p4, Lcom/amazon/system/drawing/Dimension;->width:I

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setWidth(I)V

    .line 190
    :goto_0
    iget v1, p4, Lcom/amazon/system/drawing/Dimension;->height:I

    if-le v0, v1, :cond_2

    .line 191
    iget v0, p4, Lcom/amazon/system/drawing/Dimension;->height:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    .line 201
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") copyed into TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setWidth(I)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setWidth(I)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIILcom/mobipocket/common/parser/styles/StyleDescriptor;IIIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 22
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    .line 23
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    .line 25
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    .line 26
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 37
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    .line 39
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    .line 71
    invoke-virtual {p0, p7}, Lcom/mobipocket/common/library/reader/TableElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 73
    iput p8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pBgColor:I

    .line 74
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 75
    iput p3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    .line 76
    iput p4, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    .line 77
    iput p5, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    .line 78
    iput p6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    .line 79
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    .line 80
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    .line 82
    iput p2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    .line 83
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineIndexFromPosition(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] Creating new TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with \"previous page begin\" position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " availableWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " availableHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p9}, Lcom/mobipocket/common/library/reader/TableLayout;->computeWidthLayout(I)V

    .line 88
    invoke-direct {p0, p10, p11}, Lcom/mobipocket/common/library/reader/TableElement;->computeVisibleArea(IZ)I

    move-result v0

    .line 90
    if-gt v0, p10, :cond_0

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    if-le v1, p9, :cond_4

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    if-le v1, p9, :cond_2

    .line 95
    invoke-virtual {p0, p9}, Lcom/mobipocket/common/library/reader/TableElement;->setWidth(I)V

    .line 102
    :goto_0
    if-ltz p10, :cond_3

    if-le v0, p10, :cond_3

    .line 104
    invoke-virtual {p0, p10}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p10}, Lcom/mobipocket/common/library/reader/TableLayout;->doesFirtLineFitInCurrentScreen(II)I

    move-result v0

    .line 120
    if-nez p11, :cond_1

    if-lez v0, :cond_1

    if-le p10, v3, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    .line 122
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TableElement] available screen size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max screen size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " first line height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] new TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") created. Width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    return-void

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setWidth(I)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setWidth(I)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    goto/16 :goto_1
.end method

.method private computeVisibleArea(IZ)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] Computing the Visible Area of the TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Max height available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \"Previous page begin\" position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->doesFirtLineFitInCurrentScreen(II)I

    move-result v0

    .line 391
    if-nez p2, :cond_0

    if-lez v0, :cond_0

    if-le p1, v3, :cond_0

    .line 392
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    .line 393
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineClosingPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setLastSubElementBookPosition(I)V

    .line 394
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TableElement] computeVisibleArea: available screen size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max screen size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " first line height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    :goto_0
    return v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineIndexFromPosition(I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 401
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getBottomYOfLine(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->updateYDrawOffset(I)V

    .line 404
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v0

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    .line 416
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, p1, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->moveDown(III)[I

    move-result-object v0

    .line 417
    aget v1, v0, v5

    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    .line 418
    aget v0, v0, v4

    .line 422
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_3

    .line 424
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineClosingPosition(I)I

    move-result v1

    .line 430
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    .line 431
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->setLastSubElementBookPosition(I)V

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TableElement] Visible Area of the TableElet("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Computed..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TableElement] First line displayed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Last line displayed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Last position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". TableElement height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 406
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    if-ne v0, v3, :cond_2

    .line 408
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/TableLayout;->getBottomYOfLine(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->updateYDrawOffset(I)V

    .line 409
    iput v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    goto/16 :goto_1

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getBottomYOfLine(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->updateYDrawOffset(I)V

    goto/16 :goto_1

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public canMoveDown()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->canMoveDown(I)Z

    move-result v0

    return v0
.end method

.method public canMoveLeft()Z
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, ret:Z
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    if-gez v1, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :cond_0
    return v0
.end method

.method public canMoveRight()Z
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    if-le v1, v2, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_0
    return v0
.end method

.method public canMoveUp()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->canMoveUp(I)Z

    move-result v0

    return v0
.end method

.method public computeSelectableObjects(II)V
    .locals 11
    .parameter "objectIndex"
    .parameter "lineAdd"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v3

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v4

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v9, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v10, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/mobipocket/common/library/reader/TableLayout;->computeSelectableObjects(IIIIIIIIII)V

    .line 271
    return-void
.end method

.method public draw(Lcom/amazon/system/drawing/Graphics;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[draw] drawing tableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") getX()+offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getY()+offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " localDrawOffsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " localDrawOffsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pScreenMinX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pScreenMinY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pScreenMaxX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pScreenMaxY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v1

    add-int v3, v1, p3

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v9, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v10, p0, Lcom/mobipocket/common/library/reader/TableElement;->pBgColor:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/mobipocket/common/library/reader/TableLayout;->drawInView(Lcom/amazon/system/drawing/Graphics;IIIIIIIII)I

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the last line displayed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and the expected last line displayed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    .line 236
    return-void
.end method

.method public forceDisplayTableOnCurrentScreen()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    .line 144
    return-void
.end method

.method public getAbsoluteTableBeginPosition()I
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableBeginningPosition()I

    move-result v0

    return v0
.end method

.method public getActiveAreaList()Ljava/util/Vector;
    .locals 9

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout;->getActiveAreaList(IIIIIIII)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlignment()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getAlignment()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBaseLineHeight()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v0

    return v0
.end method

.method public getBottomLineRelativeYPosition(I)I
    .locals 4
    .parameter "lineIndex"

    .prologue
    .line 547
    const/4 v1, -0x1

    .line 548
    .local v1, returnYPos:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getBottomYOfLine(I)I

    move-result v0

    .line 549
    .local v0, lineBottomYPos:I
    if-ltz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    add-int v1, v2, v3

    .line 553
    :cond_0
    return v1
.end method

.method public getBottomYOfLine(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getBottomYOfLine(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDescentHeight()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v0

    return v0
.end method

.method public getFirstDisplayedLine()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    return v0
.end method

.method public getFirstSubElementBookPosition()I
    .locals 2

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong first line displayed index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineBeginningPosition(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLastDisplayedLine()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    return v0
.end method

.method public bridge synthetic getLastSubElementBookPosition()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v0

    return v0
.end method

.method public getLineBeginPosition(I)I
    .locals 1
    .parameter "lineIndex"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineBeginningPosition(I)I

    move-result v0

    return v0
.end method

.method public getLineClosingTagPosition(I)I
    .locals 1
    .parameter "idx"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineClosingPosition(I)I

    move-result v0

    return v0
.end method

.method public getLineHeight(I)I
    .locals 1
    .parameter "lineIndex"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineHeight(I)I

    move-result v0

    return v0
.end method

.method public getLineIndexFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineIndexFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getLineOffsetList()Ljava/util/Vector;
    .locals 9

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineOffsetList(IIIIIIII)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getLineRelativeBottomYPosition(I)I
    .locals 4
    .parameter "lineIndex"

    .prologue
    .line 531
    const/4 v1, -0x1

    .line 532
    .local v1, returnYPos:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getBottomYOfLine(I)I

    move-result v0

    .line 533
    .local v0, lineYPos:I
    if-ltz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    add-int v1, v2, v3

    .line 537
    :cond_0
    return v1
.end method

.method public getLineRelativeYPosition(I)I
    .locals 4
    .parameter "lineIndex"

    .prologue
    .line 487
    const/4 v1, -0x1

    .line 488
    .local v1, returnYPos:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineYPosition(I)I

    move-result v0

    .line 489
    .local v0, lineYPos:I
    if-ltz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    add-int v1, v2, v3

    .line 493
    :cond_0
    return v1
.end method

.method public getLineYPosition(I)I
    .locals 3
    .parameter "lineIndex"

    .prologue
    .line 503
    const/4 v1, -0x1

    .line 504
    .local v1, returnYPos:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineYPosition(I)I

    move-result v0

    .line 505
    .local v0, lineYPos:I
    if-ltz v0, :cond_0

    .line 507
    move v1, v0

    .line 509
    :cond_0
    return v1
.end method

.method public getLocalDrawOffsetX()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    return v0
.end method

.method public getLocalDrawOffsetY()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    return v0
.end method

.method public getOffsetOfLastLine()I
    .locals 5

    .prologue
    .line 742
    const/4 v2, -0x1

    .line 743
    .local v2, offset:I
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getLastDisplayedLine()I

    move-result v1

    .line 744
    .local v1, lastLineIndex:I
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->getLineHeight(I)I

    move-result v0

    .line 746
    .local v0, lastLineHeight:I
    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_1

    .line 748
    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->getLineRelativeYPosition(I)I

    move-result v4

    sub-int v2, v3, v4

    .line 751
    if-gez v2, :cond_0

    .line 753
    const/4 v2, 0x0

    .line 758
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->getLineHeight(I)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 760
    const/4 v2, -0x1

    .line 763
    :cond_1
    return v2
.end method

.method public getSelectableObjects()Ljava/util/Vector;
    .locals 9

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout;->getSelectableObjects(IIIIIIII)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getStartTableTag()Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getStartTableTag()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTableAbsoluteEndPosition()I
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v0

    return v0
.end method

.method public getTableFirstLineBeginningPosition()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->getLineBeginPosition(I)I

    move-result v0

    return v0
.end method

.method public getTableLastLineClosingPosition()I
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineClosingPosition(I)I

    move-result v0

    return v0
.end method

.method public getTableLayout()Lcom/mobipocket/common/library/reader/TableLayout;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    return-object v0
.end method

.method public getTableNumberOfLine()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v0

    return v0
.end method

.method public getTableWidth()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextProperties()Lcom/mobipocket/common/parser/TextProperties;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getX()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getY()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isActiveAreaElement()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBreakElement()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v0

    return v0
.end method

.method public isEmergencyStoppedTable()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->isEmergencyStoppedTable()Z

    move-result v0

    return v0
.end method

.method public isFirstLineSpanOnNextScreen()Z
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->isLineSpanOnNextPage(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHyphenElement()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isHyphenElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isImageElement()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isImageElement()Z

    move-result v0

    return v0
.end method

.method public isLastLineSpanOnNextPage()Z
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->lastLineDisplayedIndex:I

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->isLineSpanOnNextPage(I)Z

    move-result v0

    return v0
.end method

.method public isLineSpanOnNextPage(I)Z
    .locals 3
    .parameter "lineIndex"

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 776
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/TableElement;->getLineRelativeBottomYPosition(I)I

    move-result v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    if-le v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic isSelectable()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public isTableElement()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public isTableMovedOnNextScreen()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->tableMovedonNextScreen:Z

    return v0
.end method

.method public bridge synthetic isTextElement()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWordElement()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v0

    return v0
.end method

.method public recomputeVisibleArea()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 689
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->firstLineDisplayedIndex:I

    move v1, v0

    move v0, v4

    .line 692
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/TableElement;->getBottomLineRelativeYPosition(I)I

    move-result v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineHeight(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_0
    if-lez v0, :cond_1

    .line 699
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v2, v2, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    add-int/2addr v0, v2

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getLineBeginningPosition(I)I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    .line 704
    const/4 v1, 0x1

    .line 711
    :goto_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setY(I)V

    .line 712
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v4}, Lcom/mobipocket/common/library/reader/TableElement;->computeVisibleArea(IZ)I

    move-result v0

    .line 713
    iget v2, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_3

    .line 714
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    .line 719
    :goto_2
    return v1

    .line 708
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/TableElement;->pageBeginPositionForTable:I

    move v1, v4

    .line 709
    goto :goto_1

    .line 717
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/TableElement;->setHeight(I)V

    goto :goto_2
.end method

.method public bridge synthetic reposition(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/FlowElement;->reposition(III)V

    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->reset()V

    .line 279
    return-void
.end method

.method public resetViewPort()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 464
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    .line 465
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    .line 466
    return-void
.end method

.method public setDecorationList(Ljava/util/Vector;)V
    .locals 10
    .parameter "list"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v3

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v9, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/TableLayout;->setDecorationList(Ljava/util/Vector;IIIIIIII)V

    .line 248
    return-void
.end method

.method public bridge synthetic setDescentHeight(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setDescentHeight(I)V

    return-void
.end method

.method public bridge synthetic setHeight(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setHeight(I)V

    return-void
.end method

.method public bridge synthetic setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    return-void
.end method

.method public setTemporaryDecoration(Lcom/mobipocket/common/library/reader/Range;)V
    .locals 10
    .parameter "deco"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableElement;->pLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v3

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinX:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMinY:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxX:I

    iget v9, p0, Lcom/mobipocket/common/library/reader/TableElement;->pScreenMaxY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/TableLayout;->setTemporaryDecorationList(Lcom/mobipocket/common/library/reader/Range;IIIIIIII)V

    .line 260
    return-void
.end method

.method public bridge synthetic setTextStyle(Lcom/amazon/system/drawing/Graphics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setTextStyle(Lcom/amazon/system/drawing/Graphics;)V

    return-void
.end method

.method public bridge synthetic setWidth(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setWidth(I)V

    return-void
.end method

.method public bridge synthetic setX(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    return-void
.end method

.method public bridge synthetic setY(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    return-void
.end method

.method public updateXDrawOffset(I)V
    .locals 2
    .parameter

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] Update of the DrawOffsetX of the TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to the following value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetX:I

    .line 457
    return-void
.end method

.method public updateYDrawOffset(I)V
    .locals 2
    .parameter

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TableElement] Update of the DrawOffsetY of the TableElt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to the following value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableElement;->localDrawOffsetY:I

    .line 447
    return-void
.end method
