.class Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;
.super Ljava/lang/Object;
.source "FrameConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/FrameConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableEngine"
.end annotation


# instance fields
.field private backgroundColor:I

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private pDefaultCellPadding:I

.field private pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

.field private tableLimitReached:Z

.field tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/FrameConstructor;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->setCurrentPageTableData(Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/TableLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->getTableLayout()Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method private beginNewTable(IIIIISLcom/mobipocket/common/parser/AttributeStack;I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$900(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->createTableLayout(IIIIISLcom/mobipocket/common/parser/AttributeStack;ILcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    iput-object v0, v10, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 315
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    .line 318
    return-void
.end method

.method private closeInProgressTable(I)Z
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 452
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-nez v0, :cond_0

    move v0, v13

    .line 495
    :goto_0
    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->setAbsoluteTableEndPosition(I)V

    .line 458
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->infiniteMode:Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->isInfiniteModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const/4 v0, -0x1

    move v10, v0

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[closeInProgressTable] Creating table and adding to FrameConstructor. Table position between @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableBeginningPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \"Previous Page begin\" positon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    new-instance v0, Lcom/mobipocket/common/library/reader/TableElement;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$100(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$200(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v4

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$300(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v6}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$400(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v6

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$800(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v7

    iget v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->backgroundColor:I

    iget-object v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v9}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v9

    iget-object v11, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v11}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$1200(Lcom/mobipocket/common/library/reader/FrameConstructor;)Z

    move-result v11

    if-nez v11, :cond_2

    move v11, v13

    :goto_2
    invoke-direct/range {v0 .. v11}, Lcom/mobipocket/common/library/reader/TableElement;-><init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIILcom/mobipocket/common/parser/styles/StyleDescriptor;IIIZ)V

    .line 474
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iput-boolean v12, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    .line 476
    iput-boolean v12, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    .line 479
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v1

    .line 481
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->isEmergencyStoppedTable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->getLastSubElementBookPosition()I

    move-result v0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[closeInProgressTable] This is an emergency stopped table, so the break line following position is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 495
    goto/16 :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getAvailableHeight()I

    move-result v0

    move v10, v0

    goto/16 :goto_1

    :cond_2
    move v11, v12

    .line 469
    goto :goto_2

    .line 493
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeInProgressTable] Adding break line at the end of the table with position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private createTableLayout(IIIIISLcom/mobipocket/common/parser/AttributeStack;ILcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)Lcom/mobipocket/common/library/reader/TableLayout;
    .locals 5
    .parameter "padding"
    .parameter "border"
    .parameter "width"
    .parameter "tableBgColor"
    .parameter "borderColor"
    .parameter "tableStartTag"
    .parameter "tableStartAttributeStack"
    .parameter "tableStartPosition"
    .parameter "hyphenationManager"

    .prologue
    .line 334
    new-instance v0, Lcom/mobipocket/common/library/reader/TableLayout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$1000(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/HyphenationHelper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout;-><init>(Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/parser/HyphenationHelper;)V

    .line 335
    .local v0, localTableLayout:Lcom/mobipocket/common/library/reader/TableLayout;
    invoke-virtual {v0, p6, p7, p8}, Lcom/mobipocket/common/library/reader/TableLayout;->setStartTableTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 336
    invoke-virtual {v0, p2}, Lcom/mobipocket/common/library/reader/TableLayout;->setBorderWidth(I)V

    .line 337
    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->setCellPadding(I)V

    .line 338
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_SPACING:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->setParagraphSpacing(I)V

    .line 339
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_INDENT:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->setParagraphIndentation(I)V

    .line 340
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$700(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->setLineSpacing(I)V

    .line 341
    invoke-virtual {v0, p9}, Lcom/mobipocket/common/library/reader/TableLayout;->setHyphenationManager(Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)V

    .line 342
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$1100(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->setDefaultStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 343
    invoke-virtual {v0, p3}, Lcom/mobipocket/common/library/reader/TableLayout;->setMinTableWidth(I)V

    .line 344
    invoke-virtual {v0, p4}, Lcom/mobipocket/common/library/reader/TableLayout;->setBgColor(I)V

    .line 345
    invoke-virtual {v0, p5}, Lcom/mobipocket/common/library/reader/TableLayout;->setBorderColor(I)V

    .line 346
    return-object v0
.end method

.method private getTableLayout()Lcom/mobipocket/common/library/reader/TableLayout;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    goto :goto_0
.end method

.method private setCurrentPageTableData(Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V
    .locals 0
    .parameter "tableData"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    .line 232
    return-void
.end method

.method private updateTableTagStack(ZZSLcom/mobipocket/common/parser/AttributeStack;I)V
    .locals 1
    .parameter "isClosing"
    .parameter "stackNeutral"
    .parameter "tag"
    .parameter "currentAttrStack"
    .parameter "parserPosition"

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    if-eq p3, v0, :cond_0

    .line 668
    if-eqz p1, :cond_1

    .line 670
    if-nez p2, :cond_0

    .line 673
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p3, p5}, Lcom/mobipocket/common/library/reader/TableLayout;->closeTag(SI)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    if-nez p2, :cond_0

    .line 678
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p3, p4, p5}, Lcom/mobipocket/common/library/reader/TableLayout;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    goto :goto_0
.end method


# virtual methods
.method public addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 407
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->getTableLayout()Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$800(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 413
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->getAbsoluteTableBeginningPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 415
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;->limitReached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    :cond_0
    move v0, v2

    .line 420
    :cond_1
    return v0
.end method

.method public createTableBegin(IZZLcom/mobipocket/common/parser/AttributeStack;I)Lcom/mobipocket/common/library/reader/TableLayout;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 512
    const/4 v0, 0x0

    .line 514
    const/16 v1, 0x3f

    invoke-virtual {p4, v1}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v1

    .line 515
    const/16 v2, 0x3d

    invoke-virtual {p4, v2}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v2

    .line 516
    const/16 v3, 0x36

    invoke-virtual {p4, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v3

    .line 517
    const/16 v4, 0x35

    invoke-virtual {p4, v4}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v4

    .line 518
    const/16 v5, 0x88

    invoke-virtual {p4, v5}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v5

    .line 519
    const/16 v6, 0x5b

    invoke-virtual {p4, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 527
    :pswitch_0
    if-nez p2, :cond_0

    .line 528
    if-ne v1, v7, :cond_1

    .line 529
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pDefaultCellPadding:I

    move v1, v0

    .line 530
    :cond_1
    if-ne v2, v7, :cond_2

    move v2, v8

    .line 532
    :cond_2
    if-gtz v3, :cond_3

    move v3, v8

    .line 535
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertTableComponent] Inserting pending table beginning:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    int-to-short v6, p1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$900(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    move-result-object v9

    move-object v0, p0

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->createTableLayout(IIIIISLcom/mobipocket/common/parser/AttributeStack;ILcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method public flushInProgressTable()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 690
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    .line 691
    return-void
.end method

.method public getAbsoluteTableBeginningPosition()I
    .locals 2

    .prologue
    .line 355
    const/4 v0, -0x1

    .line 356
    .local v0, ret:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableBeginningPosition()I

    move-result v0

    .line 360
    :cond_0
    return v0
.end method

.method public getAbsoluteTableEndPosition()I
    .locals 2

    .prologue
    .line 371
    const/4 v0, -0x1

    .line 372
    .local v0, ret:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v0

    .line 376
    :cond_0
    return v0
.end method

.method public getTableExceedingLimitID()I
    .locals 2

    .prologue
    .line 392
    const/4 v0, -0x1

    .line 393
    .local v0, id:I
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->getAbsoluteTableBeginningPosition()I

    move-result v0

    .line 397
    :cond_0
    return v0
.end method

.method public insertTableComponent(IZZLcom/mobipocket/common/parser/AttributeStack;I)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    const/4 v9, 0x1

    .line 571
    const/16 v0, 0x3f

    invoke-virtual {p4, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 572
    const/16 v1, 0x3d

    invoke-virtual {p4, v1}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v2

    .line 573
    const/16 v1, 0x59

    invoke-virtual {p4, v1}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v1

    .line 574
    const/16 v3, 0x5a

    invoke-virtual {p4, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v3

    .line 575
    const/16 v4, 0x36

    invoke-virtual {p4, v4}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v6

    .line 576
    const/16 v4, 0x35

    invoke-virtual {p4, v4}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v4

    .line 577
    const/16 v5, 0x88

    invoke-virtual {p4, v5}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v5

    .line 578
    const/16 v7, 0x5b

    invoke-virtual {p4, v7}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v7

    .line 579
    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 580
    const/4 v7, 0x0

    .line 582
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    move v6, v9

    .line 647
    :goto_1
    int-to-short v3, p1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->updateTableTagStack(ZZSLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 651
    return v6

    :sswitch_0
    move v6, v9

    .line 588
    goto :goto_1

    .line 592
    :sswitch_1
    if-nez p2, :cond_3

    .line 593
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 594
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pDefaultCellPadding:I

    move v1, v0

    .line 595
    :goto_2
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 596
    const/4 v0, 0x0

    move v2, v0

    .line 597
    :cond_2
    if-gtz v6, :cond_9

    .line 598
    const/4 v0, 0x0

    move v3, v0

    .line 600
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertTableComponent] Creating table object. Table absolute begin position:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    int-to-short v6, p1

    move-object v0, p0

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->beginNewTable(IIIIISLcom/mobipocket/common/parser/AttributeStack;I)V

    move v6, v9

    goto :goto_1

    .line 605
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[insertTableComponent] End of the table. Table end position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {p0, p5}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->closeInProgressTable(I)Z

    move-result v0

    move v6, v0

    .line 609
    goto :goto_1

    .line 613
    :sswitch_2
    if-nez p2, :cond_5

    .line 615
    if-gtz v1, :cond_4

    .line 616
    const/4 v0, 0x1

    move v1, v0

    .line 617
    :cond_4
    if-gtz v3, :cond_8

    .line 618
    const/4 v0, 0x1

    move v2, v0

    .line 619
    :goto_4
    if-gtz v6, :cond_7

    .line 620
    const/4 v0, 0x0

    move v3, v0

    .line 622
    :goto_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    move v5, v7

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/TableLayout;->openCellNoImplicit(IIIIII)V

    move v6, v9

    goto :goto_1

    .line 625
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->closeCell()V

    move v6, v9

    goto :goto_1

    .line 632
    :sswitch_3
    if-nez p2, :cond_6

    .line 635
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, v4, p5}, Lcom/mobipocket/common/library/reader/TableLayout;->openLineNoImplicit(II)V

    move v6, v9

    goto :goto_1

    .line 638
    :cond_6
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, p5}, Lcom/mobipocket/common/library/reader/TableLayout;->closeLine(I)V

    goto/16 :goto_0

    :cond_7
    move v3, v6

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    move v3, v6

    goto :goto_3

    :cond_a
    move v1, v0

    goto :goto_2

    .line 582
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_3
        0x2e -> :sswitch_2
        0x2f -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method isTableInProgress()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    goto :goto_0
.end method

.method public isTableLimitExceeded()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimitReached:Z

    return v0
.end method

.method pageSettingsHasChanged()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 298
    :cond_0
    return-void
.end method

.method pageSizeHasChanged()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->resetCurrentLayout()V

    .line 283
    :cond_0
    return-void
.end method

.method public reuseAlreadyParsedTable(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z
    .locals 1
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 438
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->closeInProgressTable(I)Z

    .line 439
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->isEmergencyStoppedTable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDefaultValues(IILcom/amazon/system/drawing/ImageFactory;)V
    .locals 0
    .parameter "bgColor"
    .parameter "defaultCellPadding"
    .parameter "imageFact"

    .prologue
    .line 266
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->backgroundColor:I

    .line 267
    iput p2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pDefaultCellPadding:I

    .line 268
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 270
    return-void
.end method
