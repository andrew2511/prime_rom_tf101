.class Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
.super Ljava/lang/Object;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableCellLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
    }
.end annotation


# instance fields
.field public cellHeight:I

.field public cellMaxHeight:I

.field public cellMaxWidth:I

.field public cellMinWidth:I

.field public cellWidth:I

.field public cellX:I

.field public cellY:I

.field public colspan:I

.field private dummy:Z

.field private elementList:Ljava/util/Vector;

.field private pActiveAreaList:Ljava/util/Vector;

.field private pBgColor:I

.field private pBookPosition:I

.field private pCellPadding:I

.field private pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field private pRawRequestWidthValue:I

.field private pRenderedHeight:I

.field private pVAlign:I

.field private rendered:Z

.field public rowspan:I

.field private styleList:Ljava/util/Vector;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/TableLayout;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIIIZILcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 1
    .parameter
    .parameter "colspan"
    .parameter "rowspan"
    .parameter "cellPadding"
    .parameter "width"
    .parameter "bgColor"
    .parameter "vAlign"
    .parameter "dummy"
    .parameter "bookPosition"
    .parameter "defaultStyle"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rendered:Z

    .line 103
    iput p2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    .line 104
    iput p3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->styleList:Ljava/util/Vector;

    .line 107
    iput p4, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    .line 108
    iput p5, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pRawRequestWidthValue:I

    .line 109
    iput p7, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pVAlign:I

    .line 110
    iput-boolean p8, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->dummy:Z

    .line 111
    iput p9, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pBookPosition:I

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    .line 113
    iput p6, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pBgColor:I

    .line 114
    return-void
.end method

.method static synthetic access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pRawRequestWidthValue:I

    return v0
.end method

.method private addPendingActiveArea(Lcom/mobipocket/common/library/reader/FrameConstructor;II)I
    .locals 3
    .parameter "constructor"
    .parameter "index"
    .parameter "currentActiveAreaIndex"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;

    .line 278
    .local v0, paa:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->getIndex()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->isBegin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->getActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->getPosition()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 285
    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 289
    .end local v0           #paa:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
    :cond_0
    return p3

    .line 283
    .restart local v0       #paa:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->endOfActiveArea(I)V

    goto :goto_0
.end method

.method private addToConstructor(Lcom/mobipocket/common/library/reader/FrameConstructor;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    .line 307
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v0, v5

    move-object v3, v1

    move v4, v5

    .line 308
    :goto_0
    if-ge v4, v2, :cond_0

    .line 315
    :goto_1
    invoke-direct {p0, p1, v4, v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->addPendingActiveArea(Lcom/mobipocket/common/library/reader/FrameConstructor;II)I

    move-result v3

    .line 316
    if-ne v0, v3, :cond_4

    .line 317
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->styleList:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 322
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 323
    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 324
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    .line 308
    add-int/lit8 v4, v4, 0x1

    move v7, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0, p1, v4, v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->addPendingActiveArea(Lcom/mobipocket/common/library/reader/FrameConstructor;II)I

    .line 330
    if-eqz v3, :cond_1

    .line 331
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v2

    invoke-direct {v0, v6, v1, v2}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    .line 335
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    .line 339
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    move v3, v5

    .line 340
    :goto_2
    if-ge v3, v1, :cond_2

    .line 343
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 344
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v4

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v2, :cond_3

    .line 345
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 340
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 348
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pRenderedHeight:I

    .line 349
    iput-boolean v6, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rendered:Z

    .line 350
    return-void

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private getRenderedHeight()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pRenderedHeight:I

    return v0
.end method

.method private updateMaxWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 407
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    if-le p1, v0, :cond_0

    .line 408
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    .line 410
    :cond_0
    return-void
.end method


# virtual methods
.method public addElement(Lcom/mobipocket/common/library/reader/FlowElement;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 1
    .parameter "element"
    .parameter "style"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->styleList:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public applyHeight()V
    .locals 5

    .prologue
    .line 527
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    iput v4, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    .line 530
    iget v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pVAlign:I

    packed-switch v3, :pswitch_data_0

    .line 559
    :cond_0
    :pswitch_0
    return-void

    .line 536
    :pswitch_1
    iget v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getRenderedHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 537
    .local v2, verticalPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 541
    .local v0, elt:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    .end local v0           #elt:Lcom/mobipocket/common/library/reader/FlowElement;
    .end local v1           #i:I
    .end local v2           #verticalPosition:I
    :pswitch_2
    iget v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getRenderedHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 547
    .restart local v2       #verticalPosition:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 551
    .restart local v0       #elt:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V
    .locals 2
    .parameter "activeArea"
    .parameter "position"

    .prologue
    .line 240
    new-instance v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;-><init>(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;Lcom/mobipocket/common/library/reader/ActiveArea;II)V

    .line 241
    .local v0, paa:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public computeSelectableObjects(IIII)V
    .locals 1
    .parameter "objectIndex"
    .parameter "lineAdd"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->computeSelectableObjects(IIII)V

    .line 705
    return-void
.end method

.method public computeWidth()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 417
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 421
    iput v7, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    .line 422
    iput v7, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    move v2, v7

    move v4, v7

    move v5, v7

    .line 426
    :goto_0
    if-ge v5, v3, :cond_3

    .line 428
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 435
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    :cond_0
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    .line 438
    iget v6, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    if-le v2, v6, :cond_5

    .line 440
    iput v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    move v6, v2

    .line 454
    :goto_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v2, v0

    .line 458
    iget v2, v2, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-eqz v2, :cond_4

    .line 460
    invoke-direct {p0, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->updateMaxWidth(I)V

    move v2, v7

    .line 464
    :goto_2
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    .line 426
    add-int/lit8 v2, v5, 0x1

    move v4, v1

    move v5, v2

    move v2, v6

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v2

    iget v6, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    if-le v2, v6, :cond_2

    .line 448
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    :cond_2
    move v6, v7

    goto :goto_1

    .line 466
    :cond_3
    invoke-direct {p0, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->updateMaxWidth(I)V

    .line 467
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    .line 468
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    .line 469
    return-void

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v6, v2

    goto :goto_1
.end method

.method public draw(Lcom/amazon/system/drawing/Graphics;IIIIIIIIIII)Z
    .locals 18
    .parameter "graphics"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"
    .parameter "borderWidth"
    .parameter "bgColor"
    .parameter "borderColor"

    .prologue
    .line 582
    move-object/from16 v5, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-virtual/range {v5 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v5

    if-nez v5, :cond_0

    .line 583
    const/4 v5, 0x0

    .line 620
    :goto_0
    return v5

    .line 586
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pBgColor:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pBgColor:I

    move/from16 p11, v0

    .line 590
    const/4 v5, -0x1

    move/from16 v0, p12

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 596
    shr-int/lit8 v5, p11, 0x10

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 597
    .local v17, red:I
    shr-int/lit8 v5, p11, 0x8

    and-int/lit16 v15, v5, 0xff

    .line 598
    .local v15, green:I
    shr-int/lit8 v5, p11, 0x0

    and-int/lit16 v14, v5, 0xff

    .line 599
    .local v14, blue:I
    div-int/lit8 v17, v17, 0x2

    .line 600
    div-int/lit8 v15, v15, 0x2

    .line 601
    div-int/lit8 v14, v14, 0x2

    .line 602
    shl-int/lit8 v5, v17, 0x10

    shl-int/lit8 v6, v15, 0x8

    add-int/2addr v5, v6

    add-int p12, v5, v14

    .line 606
    .end local v14           #blue:I
    .end local v15           #green:I
    .end local v17           #red:I
    :cond_1
    const/4 v5, -0x1

    move/from16 v0, p12

    move v1, v5

    if-ne v0, v1, :cond_2

    .line 608
    const/16 p12, 0x0

    .line 612
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p12

    invoke-interface {v0, v1}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 613
    const/16 v16, 0x1

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p10

    if-gt v0, v1, :cond_3

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    move v5, v0

    add-int v5, v5, p4

    add-int v5, v5, p2

    sub-int v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    move v6, v0

    add-int v6, v6, p5

    add-int v6, v6, p3

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    move v7, v0

    mul-int/lit8 v8, v16, 0x2

    add-int/2addr v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    move v8, v0

    mul-int/lit8 v9, v16, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Graphics;->drawRect(IIII)V

    .line 613
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 618
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    move v6, v0

    add-int v6, v6, p4

    add-int v7, v6, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    move v6, v0

    add-int v6, v6, p5

    add-int v8, v6, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    move v10, v0

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move/from16 v11, p11

    invoke-virtual/range {v5 .. v12}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIIIZ)V

    .line 620
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public endOfActiveArea(I)V
    .locals 2
    .parameter "activeAreaType"

    .prologue
    .line 254
    new-instance v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;-><init>(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;II)V

    .line 255
    .local v0, paa:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public getActiveAreaList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveAreaList()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pActiveAreaList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;

    invoke-static {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->access$000(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineOffsetList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineOffsetList()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getSelectableObjects()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectableObjects()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final isDummy()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->dummy:Z

    return v0
.end method

.method public isRendered()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rendered:Z

    return v0
.end method

.method public isVisible(IIIIIIII)Z
    .locals 3
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 646
    const/4 v0, 0x1

    .line 651
    .local v0, ret:Z
    add-int v1, p3, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    add-int/2addr v1, v2

    if-le v1, p5, :cond_0

    add-int v1, p4, p2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    add-int/2addr v1, v2

    if-gt v1, p6, :cond_3

    .line 654
    :cond_0
    const/4 v0, 0x0

    .line 664
    :cond_1
    :goto_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    sub-int v2, p8, p4

    if-le v1, v2, :cond_2

    .line 667
    add-int v1, p4, p2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    add-int/2addr v1, v2

    if-ge v1, p8, :cond_2

    add-int v1, p4, p2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    add-int/2addr v1, v2

    if-le v1, p6, :cond_2

    add-int v1, p3, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    add-int/2addr v1, v2

    if-ge v1, p7, :cond_2

    add-int v1, p3, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    add-int/2addr v1, v2

    if-le v1, p5, :cond_2

    .line 670
    const/4 v0, 0x1

    .line 674
    :cond_2
    return v0

    .line 657
    :cond_3
    add-int v1, p3, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    add-int/2addr v1, v2

    if-gt v1, p7, :cond_4

    add-int v1, p4, p2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    add-int/2addr v1, v2

    if-le v1, p8, :cond_1

    .line 660
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Lcom/mobipocket/common/library/reader/FrameConstructor;Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 486
    const v3, 0x7fffffff

    .line 488
    const/4 v0, 0x1

    new-array v7, v0, [Lcom/mobipocket/common/library/reader/FlowElement;

    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v1, 0x6

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pBookPosition:I

    invoke-direct {v0, v1, p3, v2}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    aput-object v0, v7, v4

    .line 493
    new-instance v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->access$100(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-result-object v5

    const/4 v6, 0x0

    iget v8, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pBookPosition:I

    new-instance v9, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v9}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    move-object v1, p2

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/LayoutedFrame;-><init>(Lcom/amazon/system/drawing/ImageFactory;IIZLcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 495
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    sub-int/2addr v1, v2

    .line 497
    if-gez v1, :cond_0

    .line 498
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    .line 500
    :cond_0
    iget-object v2, p1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pCellPadding:I

    invoke-virtual {v2, v4, v5, v1, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setSize(IIII)V

    .line 502
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getNextPageBeginElements()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Ljava/util/Vector;)Z

    .line 503
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/FrameConstructor;->infiniteMode:Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->setInfiniteMode()V

    .line 505
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->addToConstructor(Lcom/mobipocket/common/library/reader/FrameConstructor;)V

    .line 507
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->endOfFlow()V

    .line 509
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getRenderedHeight()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    .line 512
    new-instance v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame;-><init>()V

    iput-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 513
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 516
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->reset()V

    .line 723
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->reset()V

    .line 724
    return-void
.end method

.method public resetRendered()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rendered:Z

    .line 358
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pRenderedHeight:I

    .line 359
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    .line 360
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    .line 361
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxHeight:I

    .line 362
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    .line 363
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    .line 364
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    .line 365
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    .line 366
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 367
    .local v0, elementListSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 368
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 369
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->elementList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public setDecorationList(Ljava/util/Vector;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setDecorationList(Ljava/util/Vector;)V

    .line 684
    return-void
.end method

.method public setTemporaryDecorationList(Lcom/mobipocket/common/library/reader/Range;)V
    .locals 1
    .parameter "deco"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->addDecoration(Lcom/mobipocket/common/library/reader/Range;)V

    .line 693
    return-void
.end method

.method public updateDisplayableOffset(II)V
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->pDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setOffset(II)V

    .line 715
    return-void
.end method
