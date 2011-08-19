.class public Lcom/mobipocket/common/library/reader/LayoutedFrame;
.super Ljava/lang/Object;
.source "LayoutedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;
    }
.end annotation


# instance fields
.field private _Buffered:Z

.field private beginYOffset:I

.field final decorationActiveAreas:Ljava/util/Vector;

.field decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

.field private drawedPage:Lcom/amazon/system/drawing/BufferedImage;

.field private endPosition:I

.field private endTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

.field public height:I

.field final linesInformation:Ljava/util/Vector;

.field private pIsEndOfFrame:Z

.field private pageBeginElements:Ljava/util/Vector;

.field private pageBeginTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

.field final pageObjects:Ljava/util/Vector;

.field final pageObjectsCachedActiveAreas:Ljava/util/Vector;

.field final pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

.field pdecorations:Ljava/util/Vector;

.field private predrawed:Z

.field private screenlinesEndingFilePosition:[I

.field public width:I


# direct methods
.method constructor <init>(Lcom/amazon/system/drawing/ImageFactory;IILcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V
    .locals 10
    .parameter "imageFactory"
    .parameter "width"
    .parameter "height"
    .parameter "decorationGenerator"
    .parameter "tableData"
    .parameter "pageBeginElements"
    .parameter "pageBeginPosition"
    .parameter "pageBeginTagAndAttributeStack"

    .prologue
    .line 83
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/LayoutedFrame;-><init>(Lcom/amazon/system/drawing/ImageFactory;IIZLcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/amazon/system/drawing/ImageFactory;IIZLcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V
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

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    .line 47
    iput v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->beginYOffset:I

    .line 56
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    .line 90
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    .line 92
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pIsEndOfFrame:Z

    .line 93
    iput-object p5, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginElements:Ljava/util/Vector;

    .line 97
    if-eqz p7, :cond_0

    move v0, v3

    .line 99
    :goto_0
    array-length v1, p7

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginElements:Ljava/util/Vector;

    aget-object v2, p7, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginElements:Ljava/util/Vector;

    invoke-virtual {p0, v0, p8, p9}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->saveEnd(Ljava/util/Vector;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 107
    new-instance v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    .line 108
    invoke-virtual {p0, p6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setTableCache(Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endPosition:I

    .line 112
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->predrawed:Z

    .line 113
    iput p2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    .line 114
    iput p3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    .line 115
    iput-boolean p4, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->_Buffered:Z

    .line 117
    if-eqz p4, :cond_1

    .line 118
    invoke-interface {p1, p2, p3}, Lcom/amazon/system/drawing/ImageFactory;->getBufferedImage(II)Lcom/amazon/system/drawing/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    .line 120
    :cond_1
    return-void
.end method

.method static beginningOfActiveArea(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/ActiveArea;I)V
    .locals 2
    .parameter "activeAreas"
    .parameter "activeArea"
    .parameter "pageObjectIndex"

    .prologue
    .line 843
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 844
    invoke-virtual {p1, p2}, Lcom/mobipocket/common/library/reader/ActiveArea;->setNewFlowPosition(I)V

    .line 847
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 848
    return-void

    .line 846
    :cond_0
    invoke-virtual {p1, p2}, Lcom/mobipocket/common/library/reader/ActiveArea;->setBegin(I)V

    goto :goto_0
.end method

.method private computeScreenLineEndingFilePositions()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1061
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    if-nez v0, :cond_5

    .line 1064
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1069
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v4, v10

    move v1, v10

    .line 1070
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 1072
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1073
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v5

    move v6, v1

    .line 1076
    :goto_1
    if-ltz v6, :cond_2

    if-ge v6, v5, :cond_2

    if-ge v6, v2, :cond_2

    .line 1078
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1080
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1082
    check-cast v1, Lcom/mobipocket/common/library/reader/TableElement;

    .line 1083
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getFirstDisplayedLine()I

    move-result v7

    :goto_2
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getLastDisplayedLine()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 1085
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getLastDisplayedLine()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveDown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1087
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableAbsoluteEndPosition()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1083
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1091
    :cond_0
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/TableElement;->getLineClosingTagPosition(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 1076
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 1098
    :cond_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1101
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getLastSelectableElement(Ljava/util/Vector;)I

    move-result v0

    .line 1102
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v0

    .line 1103
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1070
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v1, v5

    goto/16 :goto_0

    .line 1110
    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    move v1, v10

    .line 1111
    :goto_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1113
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 1111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1116
    :cond_5
    return-void
.end method

.method static drawText(Ljava/util/Vector;Lcom/amazon/system/drawing/Graphics;IIII)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-static {}, Lcom/mobipocket/common/library/reader/FlowElement;->drawNewPage()V

    .line 488
    move/from16 v0, p5

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    sub-int p5, p5, p4

    .line 490
    :goto_0
    move/from16 v0, p5

    new-array v0, v0, [I

    move-object v7, v0

    .line 491
    const/4 v5, 0x0

    :goto_1
    move v0, v5

    move/from16 v1, p5

    if-ge v0, v1, :cond_1

    .line 492
    add-int v6, v5, p4

    aput v6, v7, v5

    .line 491
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 488
    :cond_0
    const/16 p5, 0x0

    goto :goto_0

    .line 495
    :cond_1
    const/16 p4, 0x0

    .line 496
    :goto_2
    if-lez p5, :cond_d

    .line 499
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_9

    .line 501
    add-int/lit8 v5, p4, 0x1

    move v8, v5

    .line 507
    :goto_3
    aget v9, v7, p4

    .line 508
    const/4 v5, 0x1

    sub-int v5, p5, v5

    aget v5, v7, v5

    aput v5, v7, p4

    .line 509
    add-int/lit8 v10, p5, -0x1

    .line 511
    invoke-virtual {p0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 512
    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result p5

    if-eqz p5, :cond_8

    .line 514
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object p5

    invoke-interface/range {p5 .. p5}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 520
    const/4 v5, 0x0

    .line 521
    const/16 p5, 0x1

    sub-int p5, v9, p5

    move/from16 v6, p5

    .line 522
    :goto_4
    if-lez v6, :cond_4

    .line 525
    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 526
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 527
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v5, p5

    .line 542
    :cond_4
    if-eqz v5, :cond_6

    .line 544
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result p5

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v6

    add-int v11, p5, v6

    .line 545
    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result p5

    sub-int v12, p5, v11

    .line 548
    if-lez v12, :cond_6

    .line 550
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result p5

    if-eqz p5, :cond_b

    .line 557
    move-object v0, v5

    check-cast v0, Lcom/mobipocket/common/library/reader/WordElement;

    move-object/from16 p5, v0

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/WordElement;->getLastElementStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object p5

    .line 558
    move-object v0, v5

    check-cast v0, Lcom/mobipocket/common/library/reader/WordElement;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/WordElement;->getLastElementY()I

    move-result v6

    move v14, v6

    move-object/from16 v6, p5

    move/from16 p5, v14

    .line 565
    :goto_5
    invoke-virtual {v6}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/system/drawing/Font;->getWhitespaceWidth()I

    move-result v13

    div-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    .line 566
    if-gez v12, :cond_5

    .line 568
    const/4 v12, 0x0

    .line 571
    :cond_5
    new-instance v13, Lcom/mobipocket/common/library/reader/TextElement;

    invoke-direct {v13, v12, v6}, Lcom/mobipocket/common/library/reader/TextElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 572
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/mobipocket/common/library/reader/TextElement;->setLastSubElementBookPosition(I)V

    .line 573
    new-instance v5, Lcom/mobipocket/common/library/reader/WordElement;

    invoke-direct {v5, v13}, Lcom/mobipocket/common/library/reader/WordElement;-><init>(Lcom/mobipocket/common/library/reader/TextElement;)V

    .line 574
    invoke-virtual {v5, v11}, Lcom/mobipocket/common/library/reader/WordElement;->setX(I)V

    .line 575
    move-object v0, v5

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/WordElement;->setY(I)V

    .line 576
    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/WordElement;->draw(Lcom/amazon/system/drawing/Graphics;II)V

    .line 580
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/parser/TextProperties;->isStriked()Z

    move-result p5

    if-eqz p5, :cond_8

    .line 586
    const/4 v5, 0x0

    .line 587
    const/16 p5, 0x1

    sub-int p5, v9, p5

    move/from16 v6, p5

    .line 588
    :goto_6
    if-lez v6, :cond_e

    .line 591
    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 592
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 593
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/TextProperties;->isStriked()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 608
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 609
    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v6

    add-int v6, v6, p2

    add-int v9, p3, v5

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v11

    add-int v11, v11, p2

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int v12, p3, v5

    move-object/from16 v0, p1

    move v1, v6

    move v2, v9

    move v3, v11

    move v4, v12

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Graphics;->drawLine(IIII)V

    .line 610
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v11

    add-int/2addr v9, v11

    if-ne v6, v9, :cond_8

    .line 614
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result p5

    add-int p5, p5, v6

    .line 615
    add-int p5, p5, p2

    add-int v6, p3, v5

    invoke-virtual/range {p4 .. p4}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v9

    add-int v9, v9, p2

    add-int v5, v5, p3

    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v6

    move v3, v9

    move v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Graphics;->drawLine(IIII)V

    .line 617
    :cond_8
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/FlowElement;->draw(Lcom/amazon/system/drawing/Graphics;II)V

    move/from16 p4, v8

    move/from16 p5, v10

    .line 622
    goto/16 :goto_2

    .line 504
    :cond_9
    const/4 v5, 0x1

    sub-int v5, p5, v5

    move/from16 v8, p4

    move/from16 p4, v5

    goto/16 :goto_3

    .line 532
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 539
    add-int/lit8 p5, v6, -0x1

    move/from16 v6, p5

    .line 540
    goto/16 :goto_4

    .line 562
    :cond_b
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object p5

    .line 563
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v6

    move v14, v6

    move-object/from16 v6, p5

    move/from16 p5, v14

    goto/16 :goto_5

    .line 598
    :cond_c
    invoke-virtual/range {p5 .. p5}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result p5

    if-eqz p5, :cond_e

    .line 605
    add-int/lit8 p5, v6, -0x1

    move/from16 v6, p5

    .line 606
    goto/16 :goto_6

    .line 623
    :cond_d
    return-void

    :cond_e
    move-object/from16 p5, v5

    goto/16 :goto_7
.end method

.method static endOfActiveArea(Ljava/util/Vector;ILjava/util/Vector;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 877
    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 893
    :goto_0
    return v0

    .line 880
    :cond_0
    invoke-static {p0, p1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLastActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 881
    if-nez v0, :cond_1

    move v0, v2

    .line 882
    goto :goto_0

    .line 884
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->lastActiveAreaEmpty(Ljava/util/Vector;ILjava/util/Vector;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 886
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getActiveAreaCutInfo()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->setActivAreaCuttingInfo(I)V

    .line 887
    invoke-virtual {v0, p3}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    move v0, v2

    .line 888
    goto :goto_0

    .line 892
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 893
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 641
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 651
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    if-ge p2, p1, :cond_12

    :cond_0
    move-object p0, v0

    .line 781
    :goto_0
    return-object p0

    .line 658
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 660
    add-int/lit8 p1, v1, 0x1

    move v1, p1

    goto :goto_1

    .line 662
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p1

    if-lt v1, p1, :cond_2

    move-object p0, v0

    .line 664
    goto :goto_0

    .line 666
    :cond_2
    :goto_2
    if-le p2, v1, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 668
    add-int/lit8 p1, p2, -0x1

    move p2, p1

    goto :goto_2

    .line 673
    :cond_3
    const/4 p1, 0x0

    .line 674
    const/4 v2, 0x0

    .line 675
    const/4 v3, 0x0

    .line 676
    const/4 v4, 0x0

    .line 677
    const/4 v5, 0x0

    .line 678
    const/4 v6, 0x0

    move v7, p1

    move v10, v5

    move v5, v2

    move v2, v10

    move v11, v3

    move v3, v4

    move v4, v11

    move v12, v1

    move v1, v6

    move v6, v12

    .line 681
    :goto_3
    add-int/lit8 p1, p2, 0x1

    if-gt v6, p1, :cond_4

    .line 685
    if-gt v6, p2, :cond_5

    .line 687
    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 694
    :goto_4
    if-nez v7, :cond_9

    .line 696
    if-nez p1, :cond_6

    :cond_4
    move-object p0, v0

    .line 781
    goto :goto_0

    .line 691
    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    .line 701
    :cond_6
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 703
    const/4 p1, 0x0

    .line 704
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, p1

    .line 705
    goto :goto_3

    .line 709
    :cond_7
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v1

    .line 710
    if-nez v2, :cond_8

    .line 712
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v2

    .line 718
    :goto_5
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v3

    .line 719
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v4

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result p1

    add-int/2addr p1, v4

    .line 720
    sub-int v4, p1, v2

    .line 721
    const/4 v5, 0x1

    .line 723
    add-int/lit8 v6, v6, 0x1

    move v10, v4

    move v4, p1

    move p1, v10

    move v11, v1

    move v1, v3

    move v3, v11

    move v12, v6

    move v6, v5

    move v5, v12

    :goto_6
    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, p1

    .line 779
    goto :goto_3

    :cond_8
    move v2, v5

    .line 716
    goto :goto_5

    .line 727
    :cond_9
    const/4 v8, 0x0

    .line 729
    if-nez p1, :cond_b

    .line 731
    const/4 v8, 0x1

    .line 749
    :cond_a
    :goto_7
    if-eqz v8, :cond_e

    .line 751
    new-instance p1, Lcom/amazon/system/drawing/Rectangle;

    add-int v7, p3, v4

    add-int v8, p4, v3

    invoke-direct {p1, v7, v8, v2, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 754
    const/4 p1, 0x0

    move v10, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, p1

    move p1, v10

    goto :goto_6

    .line 733
    :cond_b
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 735
    const/4 v8, 0x1

    goto :goto_7

    .line 737
    :cond_c
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v9

    if-nez v9, :cond_d

    .line 741
    add-int/lit8 p1, v6, 0x1

    move v6, p1

    .line 742
    goto :goto_3

    .line 744
    :cond_d
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v9

    if-le v9, v5, :cond_a

    .line 746
    const/4 v8, 0x1

    goto :goto_7

    .line 759
    :cond_e
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    .line 760
    if-lt v2, v5, :cond_11

    .line 764
    :goto_8
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v5

    if-ge v5, v3, :cond_f

    .line 765
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    .line 768
    :cond_f
    sub-int v5, v2, v3

    .line 770
    if-le v5, v1, :cond_10

    move v1, v5

    .line 773
    :cond_10
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v5

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result p1

    add-int/2addr p1, v5

    sub-int/2addr p1, v4

    .line 775
    add-int/lit8 v5, v6, 0x1

    move v6, v7

    move v10, p1

    move p1, v1

    move v1, v10

    move v11, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto :goto_6

    :cond_11
    move v2, v5

    goto :goto_8

    :cond_12
    move v1, p1

    goto/16 :goto_1
.end method

.method public static getLastActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 3
    .parameter "activeAreas"
    .parameter "activeAreaType"

    .prologue
    .line 899
    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    const/4 v1, 0x0

    .line 908
    :goto_0
    return-object v1

    .line 902
    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 903
    .local v0, currentActiveArea:Lcom/mobipocket/common/library/reader/ActiveArea;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getGenericType()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 904
    goto :goto_0

    .line 906
    :cond_1
    invoke-static {p0, p1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLastNonEndedActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    move-object v1, v0

    .line 908
    goto :goto_0
.end method

.method private static getLastNonEndedActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 918
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v0

    move v0, v3

    .line 920
    :goto_0
    if-lez v1, :cond_1

    if-nez v0, :cond_1

    .line 922
    add-int/lit8 v1, v1, -0x1

    .line 923
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getGenericType()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 926
    :cond_1
    if-nez v0, :cond_2

    .line 929
    const/4 v0, 0x0

    .line 931
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/ActiveArea;

    move-object v0, p0

    goto :goto_1
.end method

.method protected static getPageObjectIndexesFromFilePositions(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/Range;)Lcom/mobipocket/common/library/reader/Range;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 937
    new-instance v3, Lcom/mobipocket/common/library/reader/Range;

    invoke-direct {v3, v1, v1}, Lcom/mobipocket/common/library/reader/Range;-><init>(II)V

    .line 938
    if-nez p0, :cond_0

    move-object v1, v3

    .line 1028
    :goto_0
    return-object v1

    .line 951
    :cond_0
    iget v1, p1, Lcom/mobipocket/common/library/reader/Range;->begin:I

    iget v2, p1, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-ne v1, v2, :cond_1

    .line 953
    iget v1, p1, Lcom/mobipocket/common/library/reader/Range;->begin:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/mobipocket/common/library/reader/Range;->begin:I

    .line 957
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 964
    if-lez v4, :cond_a

    .line 966
    invoke-virtual {p0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v1

    move v6, v1

    .line 968
    :goto_1
    if-ge v5, v4, :cond_3

    .line 974
    invoke-virtual {p0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 975
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v2, v0

    .line 978
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->getAbsoluteTableBeginPosition()I

    move-result v7

    iget v8, p1, Lcom/mobipocket/common/library/reader/Range;->begin:I

    if-gt v7, v8, :cond_2

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->getLastSubElementBookPosition()I

    move-result v2

    iget v7, p1, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-lt v2, v7, :cond_2

    move-object v1, v3

    .line 980
    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v1

    .line 987
    iget v2, p1, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-le v6, v2, :cond_4

    .line 1002
    :cond_3
    :goto_2
    iget v1, v3, Lcom/mobipocket/common/library/reader/Range;->begin:I

    if-gez v1, :cond_6

    move-object v1, v3

    .line 1005
    goto :goto_0

    .line 993
    :cond_4
    iget v2, p1, Lcom/mobipocket/common/library/reader/Range;->begin:I

    if-le v1, v2, :cond_5

    .line 996
    iput v5, v3, Lcom/mobipocket/common/library/reader/Range;->begin:I

    goto :goto_2

    .line 1000
    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v1

    .line 1001
    goto :goto_1

    .line 1008
    :cond_6
    iget v1, v3, Lcom/mobipocket/common/library/reader/Range;->begin:I

    iput v1, v3, Lcom/mobipocket/common/library/reader/Range;->end:I

    move v2, v5

    .line 1009
    :goto_3
    if-ge v2, v4, :cond_8

    .line 1014
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1015
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v1

    .line 1017
    iget v5, p1, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-gt v1, v5, :cond_7

    .line 1019
    iput v2, v3, Lcom/mobipocket/common/library/reader/Range;->end:I

    .line 1022
    :cond_7
    iget v5, p1, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-le v1, v5, :cond_9

    :cond_8
    move-object v1, v3

    .line 1028
    goto :goto_0

    .line 1026
    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 1027
    goto :goto_3

    :cond_a
    move v6, v5

    goto :goto_1
.end method

.method static lastActiveAreaEmpty(Ljava/util/Vector;ILjava/util/Vector;I)Z
    .locals 5
    .parameter "activeAreas"
    .parameter "activeAreaType"
    .parameter "pageObjects"
    .parameter "pageObjectIndex"

    .prologue
    .line 856
    const/4 v3, 0x1

    .line 857
    .local v3, isEmpty:Z
    invoke-static {p0, p1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLastActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 858
    .local v0, currentActiveArea:Lcom/mobipocket/common/library/reader/ActiveArea;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-gt v2, p3, :cond_1

    .line 861
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 862
    .local v1, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v4

    if-nez v4, :cond_0

    .line 863
    const/4 v3, 0x0

    .line 858
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    .end local v1           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    return v3
.end method


# virtual methods
.method clearElements()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 137
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 138
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 140
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    .line 141
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 143
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pIsEndOfFrame:Z

    .line 145
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginElements:Ljava/util/Vector;

    .line 146
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->resetDecorationList()V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endPosition:I

    .line 149
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 150
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 151
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->predrawed:Z

    .line 152
    return-void
.end method

.method drawAnnotations(Lcom/amazon/system/drawing/Graphics;IILjava/util/Vector;ZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    if-nez p4, :cond_1

    .line 805
    :cond_0
    return-void

    .line 790
    :cond_1
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 792
    invoke-virtual {p4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;

    move-object v2, v0

    .line 793
    new-instance v1, Lcom/mobipocket/common/library/reader/Range;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->getBeginPos()I

    move-result v3

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->getEndPos()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/mobipocket/common/library/reader/Range;-><init>(II)V

    .line 794
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-static {v3, v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageObjectIndexesFromFilePositions(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/Range;)Lcom/mobipocket/common/library/reader/Range;

    move-result-object v3

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawAnnotations begin:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Lcom/mobipocket/common/library/reader/Range;->begin:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " end:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Lcom/mobipocket/common/library/reader/Range;->end:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " x:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " y:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget v4, v3, Lcom/mobipocket/common/library/reader/Range;->begin:I

    iget v5, v3, Lcom/mobipocket/common/library/reader/Range;->end:I

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->getType()I

    move-result v8

    invoke-virtual {v1, v4, v5, v6, v8}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getDecoration(IILjava/util/Vector;I)Lcom/mobipocket/common/library/reader/Decoration;

    move-result-object v1

    .line 799
    iget v4, v3, Lcom/mobipocket/common/library/reader/Range;->begin:I

    if-ltz v4, :cond_2

    iget v3, v3, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-ltz v3, :cond_2

    .line 801
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->getDisplayableNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/Decoration;->setDisplayableNumber(I)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p6

    .line 802
    invoke-virtual/range {v1 .. v6}, Lcom/mobipocket/common/library/reader/Decoration;->draw(Lcom/amazon/system/drawing/Graphics;IIZI)V

    .line 790
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0
.end method

.method public declared-synchronized drawPage(Lcom/amazon/system/drawing/Graphics;III)V
    .locals 7
    .parameter "shownGraphics"
    .parameter "width"
    .parameter "height"
    .parameter "bgColor"

    .prologue
    .line 400
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized drawPage(Lcom/amazon/system/drawing/Graphics;IIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    .line 419
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    if-eqz v0, :cond_1

    move v8, v1

    .line 421
    :goto_0
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->predrawed:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 428
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/system/drawing/Graphics;->drawBufferedImage(Lcom/amazon/system/drawing/BufferedImage;II)V

    .line 429
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawAnnotations(Lcom/amazon/system/drawing/Graphics;IILjava/util/Vector;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v8, v2

    .line 419
    goto :goto_0

    .line 435
    :cond_2
    if-eqz v8, :cond_4

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImage;->getGraphics()Lcom/amazon/system/drawing/Graphics;

    move-result-object v0

    move-object v1, v0

    .line 445
    :goto_2
    if-eqz v1, :cond_0

    .line 450
    if-eqz v8, :cond_5

    move v3, v2

    .line 459
    :goto_3
    if-eqz v8, :cond_3

    .line 460
    invoke-interface {v1, p6}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 461
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, p4, p5}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 464
    :cond_3
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawAnnotations(Lcom/amazon/system/drawing/Graphics;IILjava/util/Vector;ZI)V

    .line 465
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v4, 0x0

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawText(Ljava/util/Vector;Lcom/amazon/system/drawing/Graphics;IIII)V

    .line 469
    if-eqz v8, :cond_0

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->predrawed:Z

    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    invoke-interface {p1, v0, p2, p3}, Lcom/amazon/system/drawing/Graphics;->drawBufferedImage(Lcom/amazon/system/drawing/BufferedImage;II)V

    .line 474
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawAnnotations(Lcom/amazon/system/drawing/Graphics;IILjava/util/Vector;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v1, p1

    .line 442
    goto :goto_2

    :cond_5
    move v3, p3

    move v2, p2

    .line 456
    goto :goto_3
.end method

.method public getBeginYOffset()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->beginYOffset:I

    return v0
.end method

.method getEndPosition()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endPosition:I

    return v0
.end method

.method getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    return-object v0
.end method

.method getFirstVisibleElementPosition()I
    .locals 7

    .prologue
    .line 813
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 815
    .local v3, objectCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 817
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 818
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v5

    .line 830
    .end local v0           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :goto_1
    return v5

    .line 822
    .restart local v0       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 824
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 825
    .local v4, pageBeginElement:Lcom/mobipocket/common/library/reader/FlowElement;
    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    .end local v0           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->getTableLayout()Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v2

    .line 826
    .local v2, layout:Lcom/mobipocket/common/library/reader/TableLayout;
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/mobipocket/common/library/reader/TableLayout;->getFirstVisibleElementPosition(I)I

    move-result v5

    goto :goto_1

    .line 815
    .end local v2           #layout:Lcom/mobipocket/common/library/reader/TableLayout;
    .end local v4           #pageBeginElement:Lcom/mobipocket/common/library/reader/FlowElement;
    .restart local v0       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    .end local v0           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getLineEndingPositions(I)I
    .locals 2
    .parameter "lineIndex"

    .prologue
    .line 1039
    const/4 v0, -0x1

    .line 1040
    .local v0, ret:I
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->computeScreenLineEndingFilePositions()V

    .line 1041
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1043
    if-gez p1, :cond_1

    .line 1045
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 1053
    :cond_0
    :goto_0
    return v0

    .line 1049
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    aget v0, v1, p1

    goto :goto_0
.end method

.method getNextPageBeginElements()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginElements:Ljava/util/Vector;

    return-object v0
.end method

.method public getNumberOfLineInScreen()I
    .locals 2

    .prologue
    .line 1123
    const/4 v0, -0x1

    .line 1124
    .local v0, ret:I
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->computeScreenLineEndingFilePositions()V

    .line 1125
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    if-eqz v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    array-length v0, v1

    .line 1128
    :cond_0
    return v0
.end method

.method getPageBeginPosition()I
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 239
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getPageBeginTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    return-object v0
.end method

.method isEndOfFlow()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pIsEndOfFrame:Z

    return v0
.end method

.method public isPreBufferingEnabled()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTablePresentOnNextPage()Z
    .locals 3

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, ret:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/TableElement;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const/4 v1, 0x1

    .line 216
    :cond_0
    return v1

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadPageImages()V
    .locals 5

    .prologue
    .line 376
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 379
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 381
    .local v1, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isImageElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/ImageElement;

    move-object v3, v0

    .line 385
    .local v3, imageElt:Lcom/mobipocket/common/library/reader/ImageElement;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ImageElement;->loadImage()V

    .line 376
    .end local v3           #imageElt:Lcom/mobipocket/common/library/reader/ImageElement;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v1           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    return-void
.end method

.method reInit([Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->clearElements()V

    .line 181
    new-instance v0, Ljava/util/Vector;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 182
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 185
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->saveEnd(Ljava/util/Vector;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 188
    return-void
.end method

.method declared-synchronized resetDecorationList()V
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setDecorationList(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resize(Lcom/amazon/system/drawing/ImageFactory;II)V
    .locals 1
    .parameter "imageFactory"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->clearElements()V

    .line 157
    iget v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    if-eq v0, p3, :cond_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->resetCurrentLayout()V

    .line 163
    :cond_1
    iput p2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->width:I

    .line 164
    iput p3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->height:I

    .line 165
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {p1, p2, p3}, Lcom/amazon/system/drawing/ImageFactory;->getBufferedImage(II)Lcom/amazon/system/drawing/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawedPage:Lcom/amazon/system/drawing/BufferedImage;

    .line 169
    :cond_2
    return-void
.end method

.method saveEnd(Ljava/util/Vector;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginElements:Ljava/util/Vector;

    .line 194
    invoke-virtual {p0, p2, p3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->saveEndInformation(ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 195
    return-void
.end method

.method saveEndInformation(ILcom/mobipocket/common/parser/TagAndAttributeStack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput p1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endPosition:I

    .line 201
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 202
    return-void
.end method

.method public setBeginYOffset(I)V
    .locals 0
    .parameter "beginYOffset"

    .prologue
    .line 295
    iput p1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->beginYOffset:I

    .line 296
    return-void
.end method

.method declared-synchronized setDecorationList(Ljava/util/Vector;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    move v1, v5

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 307
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    .line 311
    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableElement;->setDecorationList(Ljava/util/Vector;)V

    .line 302
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    if-eqz v0, :cond_7

    move v1, v5

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 329
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 327
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->getAnnotation()Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_3

    .line 337
    new-instance v3, Lcom/mobipocket/common/library/reader/ActiveArea;

    const/16 v0, 0xc

    invoke-direct {v3, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 338
    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/ActiveArea;->setAnnotationCallback(Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 339
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pdecorations:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;->getDisplayableNumber()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->setDisplayableAnnotationNumber(I)V

    .line 341
    new-instance v0, Lcom/mobipocket/common/library/reader/Range;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v4

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v2

    invoke-direct {v0, v4, v2}, Lcom/mobipocket/common/library/reader/Range;-><init>(II)V

    .line 342
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-static {v2, v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageObjectIndexesFromFilePositions(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/Range;)Lcom/mobipocket/common/library/reader/Range;

    move-result-object v0

    .line 343
    iget v2, v0, Lcom/mobipocket/common/library/reader/Range;->begin:I

    if-ltz v2, :cond_3

    iget v2, v0, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-ltz v2, :cond_3

    .line 345
    iget v2, v0, Lcom/mobipocket/common/library/reader/Range;->begin:I

    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/ActiveArea;->setBegin(I)V

    .line 346
    iget v0, v0, Lcom/mobipocket/common/library/reader/Range;->end:I

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->setActivAreaCuttingInfo(I)V

    move v2, v5

    .line 349
    :goto_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v4

    if-le v0, v4, :cond_6

    .line 353
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0, v3, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 367
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->predrawed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    monitor-exit p0

    return-void
.end method

.method setEndOfFlow()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pIsEndOfFrame:Z

    .line 265
    return-void
.end method

.method public setTableCache(Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V
    .locals 2
    .parameter "tableCache"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, p1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 130
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-boolean v1, p1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    iput-boolean v1, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    .line 132
    :cond_0
    return-void
.end method

.method public yTranslate(II)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1155
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v5, v9

    move v6, v10

    move v2, v9

    .line 1163
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v5, v1, :cond_2

    .line 1165
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1166
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/LineInformation;->setY(I)V

    move v7, v2

    .line 1168
    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v2

    if-ge v7, v2, :cond_1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v7, v2, :cond_1

    .line 1170
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1171
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 1174
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1176
    check-cast v2, Lcom/mobipocket/common/library/reader/TableElement;

    .line 1177
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->recomputeVisibleArea()Z

    move-result v3

    .line 1179
    if-eqz v3, :cond_0

    .line 1183
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/LineInformation;->setHeight(I)V

    .line 1188
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveUp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->getY()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/LineInformation;->setY(I)V

    .line 1197
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1198
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->getFirstDisplayedLine()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/mobipocket/common/library/reader/TableElement;->getLineBeginPosition(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/mobipocket/common/library/reader/FlowElement;->setLastSubElementBookPosition(I)V

    .line 1199
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/TableElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/FlowElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1168
    :cond_0
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 1206
    :cond_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v2

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getBottomMargin()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_d

    .line 1209
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/LineInformation;->getLastSelectableElement(Ljava/util/Vector;)I

    move-result v2

    .line 1210
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1211
    add-int/lit8 v3, v5, -0x1

    move v12, v3

    move v3, v2

    move v2, v12

    .line 1214
    :goto_2
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    .line 1163
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v6, v3

    move v2, v1

    goto/16 :goto_0

    .line 1218
    :cond_2
    if-lez v6, :cond_9

    .line 1223
    iput-object v11, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->screenlinesEndingFilePosition:[I

    .line 1227
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    move v5, v9

    move v3, v9

    .line 1231
    :goto_3
    if-gt v5, v6, :cond_5

    .line 1233
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1234
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1235
    add-int/lit8 v7, v3, 0x1

    .line 1238
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1241
    move-object v0, v2

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    move-object v3, v0

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v3

    if-gt v3, v6, :cond_4

    .line 1243
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    check-cast v2, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1231
    :cond_3
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v7

    goto :goto_3

    .line 1246
    :cond_4
    move-object v0, v2

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    move-object v3, v0

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 1250
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1255
    :cond_5
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v2

    .line 1256
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    .line 1259
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    new-instance v6, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v7, 0x6

    invoke-direct {v6, v7, v1, v2}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-virtual {v5, v6, v9}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1262
    add-int/lit8 v2, v3, -0x1

    move v3, v9

    .line 1269
    :goto_5
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_c

    .line 1271
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1272
    if-ne v10, v10, :cond_6

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    move-object v3, v1

    :goto_6
    move v6, v9

    .line 1281
    :goto_7
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v6, v1, :cond_7

    .line 1283
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 1284
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/ActiveArea;->setBegin(I)V

    .line 1285
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    .line 1281
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_7

    .line 1269
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_7
    move v6, v2

    move v2, v9

    .line 1289
    :goto_8
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 1291
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    .line 1292
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1293
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setLastSubElementBookPosition(I)V

    .line 1294
    iget-object v7, v1, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 1297
    invoke-virtual {v7, v5}, Lcom/mobipocket/common/library/reader/ActiveArea;->setBegin(I)V

    .line 1300
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v7, v1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1301
    add-int/lit8 v1, v6, -0x1

    .line 1289
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    goto :goto_8

    :cond_8
    move v2, v9

    .line 1307
    :goto_9
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 1309
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1310
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/LineInformation;->setNextLineFirstElementIndex(I)V

    .line 1307
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    .line 1316
    :cond_9
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1320
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1321
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1322
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getTableElement()Lcom/mobipocket/common/library/reader/TableElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableAbsoluteEndPosition()I

    move-result v1

    .line 1336
    :goto_a
    iput-object v11, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageBeginTagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 1338
    return v1

    .line 1324
    :cond_a
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v1

    goto :goto_a

    .line 1330
    :cond_b
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    goto :goto_a

    :cond_c
    move-object v3, v11

    move v5, v10

    goto/16 :goto_6

    :cond_d
    move v2, v5

    move v3, v6

    goto/16 :goto_2
.end method
