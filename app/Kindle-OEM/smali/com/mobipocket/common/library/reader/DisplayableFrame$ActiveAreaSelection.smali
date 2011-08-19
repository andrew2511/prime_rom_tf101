.class public Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActiveAreaSelection"
.end annotation


# instance fields
.field private pSelectedIndex:I

.field private pSelectionEnabled:Z

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field private visibleSelectableActiveArea:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectionEnabled:Z

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$1100(Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;)Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getSelectedActiveAreaFrame()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v0

    return-object v0
.end method

.method private computeActiveAreaList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 182
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_8

    .line 184
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    .line 186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v6

    .line 187
    :goto_0
    if-ge v2, v1, :cond_4

    .line 189
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 190
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 193
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v3

    if-gez v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    .line 198
    :cond_0
    new-instance v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {v3, v4, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 200
    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isVisible(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 187
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->getActiveAreaList()Ljava/util/Vector;

    move-result-object v3

    move v4, v6

    .line 208
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 210
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 211
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isVisible(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 208
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v2, v6

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 221
    new-instance v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {v3, v1, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 223
    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isVisible(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v6

    .line 226
    :goto_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 228
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v5

    if-le v1, v5, :cond_7

    .line 230
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 233
    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 243
    :cond_8
    return-void
.end method

.method private getSelectableObjectLineMetrics(I)Lcom/amazon/system/drawing/LineMetrics;
    .locals 11
    .parameter "number"

    .prologue
    .line 447
    const/4 v5, -0x1

    .line 448
    .local v5, xMin:I
    const/4 v4, -0x1

    .line 449
    .local v4, xMax:I
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 450
    .local v3, saa:Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;
    invoke-static {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v6

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v7

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v8

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v9

    invoke-static {v9}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v9

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v10

    invoke-static {v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v2

    .line 451
    .local v2, rectangles:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 453
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/system/drawing/Rectangle;

    .line 454
    .local v1, rectangle:Lcom/amazon/system/drawing/Rectangle;
    if-ltz v5, :cond_0

    iget v6, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-ge v6, v5, :cond_1

    .line 456
    :cond_0
    iget v5, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 458
    :cond_1
    iget v6, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v6, v7

    if-le v6, v4, :cond_2

    .line 460
    iget v6, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int v4, v6, v7

    .line 451
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1           #rectangle:Lcom/amazon/system/drawing/Rectangle;
    :cond_3
    new-instance v6, Lcom/amazon/system/drawing/LineMetrics;

    invoke-direct {v6, v5, v4}, Lcom/amazon/system/drawing/LineMetrics;-><init>(II)V

    return-object v6
.end method

.method private getSelectedActiveAreaFrame()Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 2

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid selection or selection invalid, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 486
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v0

    goto :goto_0
.end method

.method private isSelectionValid()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->computeActiveAreaList()V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectionEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 252
    .line 253
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v0

    .line 254
    if-gez v0, :cond_0

    move v0, v4

    .line 280
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v1

    .line 260
    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    .line 261
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    move v5, v4

    move v4, v0

    .line 262
    :goto_1
    if-gt v4, v1, :cond_5

    if-nez v5, :cond_5

    if-ge v4, v3, :cond_5

    .line 264
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 265
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v6

    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v7

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 266
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v8

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 268
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v8

    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v9

    invoke-static {v9}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v9}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 269
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v10

    invoke-static {v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v10

    sub-int/2addr v9, v10

    .line 271
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    if-lt v6, v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    iget-object v10, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v10, v10, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    sub-int/2addr v0, v10

    if-lt v6, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    if-le v7, v0, :cond_6

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    sub-int/2addr v0, v6

    if-gt v7, v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    if-lt v8, v0, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    sub-int/2addr v0, v6

    if-lt v8, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    if-le v9, v0, :cond_6

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget v6, v6, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    sub-int/2addr v0, v6

    if-gt v9, v0, :cond_6

    .line 277
    :cond_4
    const/4 v0, 0x1

    .line 262
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_5
    move v0, v5

    .line 280
    goto/16 :goto_0

    :cond_6
    move v0, v5

    goto :goto_2
.end method


# virtual methods
.method public emptyCache()V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    .line 135
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 139
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 142
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->reset()V

    .line 139
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method public getActiveAreaList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->computeActiveAreaList()V

    .line 174
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    return-object v0
.end method

.method public getActiveObjectCount()I
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->computeActiveAreaList()V

    .line 161
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getActiveObjectIndexAt(III)I
    .locals 21
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->computeActiveAreaList()V

    .line 337
    const-wide v10, 0x7fefffffffffffffL

    .line 338
    .local v10, minDistance:D
    const/4 v14, -0x1

    .line 341
    .local v14, ret:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 344
    .local v15, saa:Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;
    invoke-static {v15}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v3

    .line 348
    .local v3, aa:Lcom/mobipocket/common/library/reader/ActiveArea;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v16

    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$400(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/ActiveArea;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v17

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v16 .. v20}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getDecoration(IILjava/util/Vector;I)Lcom/mobipocket/common/library/reader/Decoration;

    move-result-object v4

    .line 352
    .local v4, decoration:Lcom/mobipocket/common/library/reader/Decoration;
    invoke-static {v15}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v16

    invoke-static {v15}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v17

    move-object v0, v4

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/Decoration;->getDecorationRectangles(II)Ljava/util/Vector;

    move-result-object v13

    .line 359
    .end local v4           #decoration:Lcom/mobipocket/common/library/reader/Decoration;
    .local v13, rectangles:Ljava/util/Vector;
    :goto_1
    const/4 v9, 0x0

    .local v9, k:I
    :goto_2
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v16

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 361
    invoke-virtual {v13, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/system/drawing/Rectangle;

    .line 363
    .local v12, rectangle:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v12}, Lcom/amazon/system/drawing/Rectangle;->cloneRectangle()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v7

    .line 364
    .local v7, expandedRectangle:Lcom/amazon/system/drawing/Rectangle;
    move-object v0, v7

    move/from16 v1, p3

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/drawing/Rectangle;->expand(II)V

    .line 366
    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 368
    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/system/drawing/Rectangle;->minDistance(II)D

    move-result-wide v5

    .line 369
    .local v5, distance:D
    cmpg-double v16, v5, v10

    if-gez v16, :cond_0

    .line 371
    move-wide v10, v5

    .line 372
    move v14, v8

    .line 359
    .end local v5           #distance:D
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 356
    .end local v7           #expandedRectangle:Lcom/amazon/system/drawing/Rectangle;
    .end local v9           #k:I
    .end local v12           #rectangle:Lcom/amazon/system/drawing/Rectangle;
    .end local v13           #rectangles:Ljava/util/Vector;
    :cond_1
    invoke-static {v15}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v17

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v18

    invoke-static {v15}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v19

    invoke-static {v15}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v20

    invoke-static/range {v16 .. v20}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v13

    .restart local v13       #rectangles:Ljava/util/Vector;
    goto :goto_1

    .line 341
    .restart local v9       #k:I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 377
    .end local v3           #aa:Lcom/mobipocket/common/library/reader/ActiveArea;
    .end local v9           #k:I
    .end local v13           #rectangles:Ljava/util/Vector;
    .end local v15           #saa:Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;
    :cond_3
    return v14
.end method

.method getCorrespondingWords()Ljava/lang/String;
    .locals 5

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid selection or selection invalid, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const/4 v0, 0x0

    .line 502
    :goto_0
    return-object v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 502
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v2

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v3

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v0

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getWordsBetween(Ljava/util/Vector;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageRecordIndex()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 405
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->computeActiveAreaList()V

    .line 406
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid selection or selection invalid, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    .line 423
    :goto_0
    return v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 413
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 415
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/ImageElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/ImageElement;->getImageRecordIndex()I

    move-result v0

    goto :goto_0

    .line 417
    :cond_1
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 419
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getImageRecordIndex()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 423
    goto :goto_0
.end method

.method public getSelectableObjetPositions()[Lcom/amazon/system/drawing/LineMetrics;
    .locals 4

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->computeActiveAreaList()V

    .line 436
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v2

    .line 437
    .local v2, size:I
    new-array v1, v2, [Lcom/amazon/system/drawing/LineMetrics;

    .line 438
    .local v1, rep:[Lcom/amazon/system/drawing/LineMetrics;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 440
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getSelectableObjectLineMetrics(I)Lcom/amazon/system/drawing/LineMetrics;

    move-result-object v3

    aput-object v3, v1, v0

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-object v1
.end method

.method public getSelectedActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid selection or selection invalid, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    const/4 v0, 0x0

    .line 474
    :goto_0
    return-object v0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;

    .line 474
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    goto :goto_0
.end method

.method public isSelectionEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectionEnabled:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectionEnabled:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->visibleSelectableActiveArea:Ljava/util/Vector;

    .line 127
    return-void
.end method

.method public selectActiveObjectIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 389
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 390
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    move v0, v1

    .line 397
    :goto_0
    return v0

    .line 394
    :cond_1
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    .line 395
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    move v0, v2

    .line 397
    goto :goto_0
.end method

.method public setSelectionEnabled(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectionEnabled:Z

    .line 308
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 310
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->pSelectedIndex:I

    .line 312
    :cond_1
    return-void
.end method
