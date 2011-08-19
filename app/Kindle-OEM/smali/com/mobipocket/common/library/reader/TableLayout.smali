.class public Lcom/mobipocket/common/library/reader/TableLayout;
.super Ljava/lang/Object;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;,
        Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    }
.end annotation


# instance fields
.field private decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

.field private emergencyStoppedTable:Z

.field private hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

.field private pBgColor:I

.field private pBorderColor:I

.field public pBorderWidth:I

.field private pCellPadding:I

.field private pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

.field private pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

.field private pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field private pGotCellContext:Z

.field private pGotLineContext:Z

.field private pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

.field private pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private pImplicitCellContext:Z

.field private pImplicitLineContext:Z

.field private pLineList:Ljava/util/Vector;

.field private pLineSpacing:I

.field private pMaxNBCellHoriztontal:I

.field private pParagraphIndent:I

.field private pParagraphSpacing:I

.field private pRawRequestedTableWidthValue:I

.field private pTableAbsoluteEndPosition:I

.field private pTableWidth:I

.field private startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

.field private tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

.field private tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/parser/HyphenationHelper;)V
    .locals 2
    .parameter "imageFactory"
    .parameter "limiter"
    .parameter "decorationGenerator"
    .parameter "hyphenationHelper"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotCellContext:Z

    .line 24
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotLineContext:Z

    .line 25
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitCellContext:Z

    .line 26
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitLineContext:Z

    .line 27
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->emergencyStoppedTable:Z

    .line 42
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBgColor:I

    .line 43
    iput v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderColor:I

    .line 1434
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    .line 1435
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 1436
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    .line 1437
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 1438
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    .line 1439
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->emergencyStoppedTable:Z

    .line 1440
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    .line 1441
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/TableLayout;->hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

    .line 1442
    return-void
.end method

.method static synthetic access$100(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/DecorationGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getNextLine(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->getPreviousLine(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mobipocket/common/library/reader/TableLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/parser/HyphenationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mobipocket/common/library/reader/TableLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pParagraphSpacing:I

    return v0
.end method

.method static synthetic access$600(Lcom/mobipocket/common/library/reader/TableLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pParagraphIndent:I

    return v0
.end method

.method static synthetic access$700(Lcom/mobipocket/common/library/reader/TableLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineSpacing:I

    return v0
.end method

.method static synthetic access$800(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/amazon/system/drawing/ImageFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImageFactory:Lcom/amazon/system/drawing/ImageFactory;

    return-object v0
.end method

.method private calculateWidthHelper(II)I
    .locals 1
    .parameter "width"
    .parameter "screenSize"

    .prologue
    .line 2934
    if-ltz p1, :cond_0

    .line 2936
    sget v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->PERCENT_VALUE:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 2938
    sget v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->PERCENT_VALUE:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 2942
    mul-int v0, p1, p2

    div-int/lit8 p1, v0, 0x64

    .line 2945
    :cond_0
    return p1
.end method

.method private closeImplicitCell()V
    .locals 1

    .prologue
    .line 1754
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitCellContext:Z

    if-eqz v0, :cond_0

    .line 1755
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->closeCell()V

    .line 1757
    :cond_0
    return-void
.end method

.method private closeImplicitLine(I)V
    .locals 1
    .parameter "parserPosition"

    .prologue
    .line 1829
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitLineContext:Z

    if-eqz v0, :cond_0

    .line 1831
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->closeLine(I)V

    .line 1833
    :cond_0
    return-void
.end method

.method private computeHeightLayout(III)[I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2346
    if-gez p2, :cond_6

    .line 2347
    neg-int v0, p2

    move v1, v0

    .line 2360
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    move v3, v9

    move v4, v9

    move v5, v10

    move v6, v9

    move v7, v9

    .line 2361
    :goto_1
    if-ge v3, v2, :cond_4

    if-eqz v5, :cond_4

    .line 2363
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2366
    if-ltz p1, :cond_0

    if-gt v3, p1, :cond_0

    .line 2367
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1500(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)I

    move-result v7

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 2372
    :goto_2
    neg-int v8, v7

    invoke-static {v0, v8, v9, v9, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1600(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;IIII)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v3

    move v4, v5

    .line 2361
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move v4, v0

    goto :goto_1

    .line 2369
    :cond_0
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1500(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)I

    move-result v6

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v6, v7

    goto :goto_2

    .line 2377
    :cond_1
    invoke-static {v0, p3}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1700(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    move v4, v9

    .line 2380
    goto :goto_3

    .line 2388
    :cond_2
    if-gt v4, p1, :cond_3

    move v0, v3

    move v4, v10

    .line 2394
    goto :goto_3

    :cond_3
    move v0, v4

    move v4, v9

    .line 2400
    goto :goto_3

    .line 2405
    :cond_4
    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/TableLayout;->canMoveDown(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 2413
    :goto_4
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v9

    aput v0, v1, v10

    .line 2414
    return-object v1

    :cond_5
    move v0, v6

    .line 2411
    goto :goto_4

    :cond_6
    move v1, p2

    goto :goto_0
.end method

.method private getNextLine(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .locals 5
    .parameter "currentLine"

    .prologue
    .line 1866
    const/4 v2, 0x0

    .line 1868
    .local v2, nextLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1869
    .local v1, lineNumber:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1871
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1876
    :cond_0
    const/4 v3, 0x1

    sub-int v3, v1, v3

    if-ge v0, v3, :cond_1

    .line 1877
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #nextLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    check-cast v2, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 1878
    .restart local v2       #nextLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_1
    return-object v2

    .line 1869
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPreviousLine(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .locals 5
    .parameter "currentLine"

    .prologue
    const/4 v4, 0x1

    .line 1888
    const/4 v2, 0x0

    .line 1890
    .local v2, previousLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1891
    .local v1, lineNumber:I
    sub-int v0, v1, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1893
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1898
    :cond_0
    if-lt v0, v4, :cond_1

    .line 1899
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #previousLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    check-cast v2, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 1900
    .restart local v2       #previousLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_1
    return-object v2

    .line 1891
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getUpperCell(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1845
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1846
    .local v0, lineNumber:I
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    move-object v2, v4

    .line 1856
    :goto_0
    return-object v2

    .line 1850
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    const/4 v3, 0x2

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 1852
    .local v1, previousLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    move-object v2, v4

    .line 1853
    goto :goto_0

    .line 1856
    :cond_1
    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v2

    goto :goto_0
.end method

.method private final openCell(IIIIII)V
    .locals 18
    .parameter "colspan"
    .parameter "rowspan"
    .parameter "width"
    .parameter "bgColor"
    .parameter "vAlign"
    .parameter "bookPosition"

    .prologue
    .line 1659
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mobipocket/common/library/reader/TableLayout;->pGotCellContext:Z

    .line 1661
    const/4 v4, -0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getBgColor()I

    move-result p4

    .line 1666
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getUpperCell(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v17

    .line 1668
    .local v17, upperCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    if-eqz v17, :cond_1

    .line 1671
    move-object/from16 v0, v17

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move v4, v0

    const/4 v5, 0x1

    sub-int v15, v4, v5

    .line 1672
    .local v15, count:I
    if-lez v15, :cond_1

    .line 1676
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    move v4, v0

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_1

    .line 1677
    new-instance v2, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    move v4, v0

    sub-int v4, v4, v16

    move-object/from16 v0, v17

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCellPadding:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v12, v0

    move-object/from16 v3, p0

    move/from16 v11, p6

    invoke-direct/range {v2 .. v12}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;-><init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIIIZILcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1678
    .local v2, dummyCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->addCell(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)V

    .line 1676
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1683
    .end local v2           #dummyCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v15           #count:I
    .end local v16           #i:I
    :cond_1
    new-instance v3, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCellPadding:I

    move v7, v0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v13, v0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;-><init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIIIZILcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1684
    .local v3, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4, v3}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->addCell(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pMaxNBCellHoriztontal:I

    move v5, v0

    if-le v4, v5, :cond_2

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/library/reader/TableLayout;->pMaxNBCellHoriztontal:I

    .line 1689
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p1

    move v1, v4

    if-le v0, v1, :cond_4

    .line 1692
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_1
    const/4 v4, 0x1

    sub-int v4, p1, v4

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 1695
    new-instance v2, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    const/4 v4, 0x1

    sub-int v4, p1, v4

    sub-int v6, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCellPadding:I

    move v8, v0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v14, v0

    move-object v4, v2

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v13, p6

    invoke-direct/range {v4 .. v14}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;-><init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIIIZILcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1696
    .restart local v2       #dummyCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->addCell(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pMaxNBCellHoriztontal:I

    move v5, v0

    if-le v4, v5, :cond_3

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/library/reader/TableLayout;->pMaxNBCellHoriztontal:I

    .line 1692
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1703
    .end local v2           #dummyCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v16           #i:I
    :cond_4
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    .line 1704
    return-void
.end method

.method private openCellImplicit(I)V
    .locals 7
    .parameter "bookPosition"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1730
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->openLineImplicit(I)V

    .line 1732
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotCellContext:Z

    if-nez v0, :cond_0

    .line 1733
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitCellContext:Z

    .line 1734
    const/4 v4, -0x1

    move-object v0, p0

    move v2, v1

    move v5, v3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/TableLayout;->openCell(IIIIII)V

    .line 1736
    :cond_0
    return-void
.end method

.method private openLine(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotLineContext:Z

    .line 1771
    new-instance v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;-><init>(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout;II)V

    .line 1772
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1773
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 1774
    return-void
.end method

.method private openLineImplicit(I)V
    .locals 1
    .parameter "lineBeginningTagPosition"

    .prologue
    .line 1798
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotLineContext:Z

    if-nez v0, :cond_0

    .line 1800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitLineContext:Z

    .line 1801
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->openLine(II)V

    .line 1803
    :cond_0
    return-void
.end method


# virtual methods
.method public addElement(Lcom/mobipocket/common/library/reader/FlowElement;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 3
    .parameter "element"
    .parameter "style"

    .prologue
    .line 1910
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    if-nez v2, :cond_0

    .line 1911
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1912
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v1, v0

    .line 1914
    .local v1, breakElement:Lcom/mobipocket/common/library/reader/BreakElement;
    iget v2, v1, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v2, :cond_0

    .line 1923
    .end local v1           #breakElement:Lcom/mobipocket/common/library/reader/BreakElement;
    :goto_0
    return-void

    .line 1920
    :cond_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->openCellImplicit(I)V

    .line 1922
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    invoke-virtual {v2, p1, p2}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    goto :goto_0
.end method

.method public addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V
    .locals 1
    .parameter "tag"
    .parameter "attributeStack"
    .parameter "position"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 1471
    return-void
.end method

.method public beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V
    .locals 1
    .parameter "area"
    .parameter "position"

    .prologue
    .line 2752
    invoke-direct {p0, p2}, Lcom/mobipocket/common/library/reader/TableLayout;->openCellImplicit(I)V

    .line 2754
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 2755
    return-void
.end method

.method public canMoveDown(I)Z
    .locals 3
    .parameter "lastLineDisplayedIndex"

    .prologue
    .line 2780
    const/4 v0, 0x0

    .line 2781
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 2783
    const/4 v0, 0x1

    .line 2785
    :cond_0
    return v0
.end method

.method public canMoveUp(I)Z
    .locals 2
    .parameter "firstLineDisplayedIndex"

    .prologue
    .line 2795
    const/4 v0, 0x0

    .line 2796
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 2798
    const/4 v0, 0x1

    .line 2800
    :cond_0
    return v0
.end method

.method public closeCell()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    .line 1744
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotCellContext:Z

    .line 1745
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitCellContext:Z

    .line 1746
    return-void
.end method

.method public closeLine(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1811
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->closeLine(I)V

    .line 1816
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentLineCellsElt:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 1817
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pGotLineContext:Z

    .line 1818
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pImplicitLineContext:Z

    .line 1819
    return-void
.end method

.method public closeTag(SI)V
    .locals 1
    .parameter "tag"
    .parameter "position"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closeTag(SI)V

    .line 1481
    return-void
.end method

.method public computeHeightLayoutInfiniteMode()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2451
    .line 2453
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v4

    move v0, v4

    .line 2457
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2459
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2460
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1500(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)I

    move-result v3

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 2457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2464
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 2465
    return-object v1
.end method

.method public computeSelectableObjects(IIIIIIIIII)V
    .locals 18
    .parameter "objectIndex"
    .parameter "lineAdd"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v17

    .line 2595
    .local v17, lineNumber:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2597
    .local v16, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-static/range {v16 .. v16}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1800(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, v16

    move/from16 v1, p6

    move/from16 v2, p4

    move/from16 v3, p8

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1900(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2599
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v6

    if-ge v15, v6, :cond_1

    .line 2600
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v5

    .line 2601
    .local v5, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2602
    iget v6, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    add-int v6, v6, p5

    add-int v6, v6, p3

    iget v7, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    add-int v7, v7, p6

    add-int v7, v7, p4

    move-object v0, v5

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->computeSelectableObjects(IIII)V

    .line 2604
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getLineOffsetList()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int p2, p2, v6

    .line 2605
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getSelectableObjects()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int p1, p1, v6

    .line 2599
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2595
    .end local v5           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v15           #k:I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2610
    .end local v16           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_2
    return-void
.end method

.method public computeWidthLayout(I)V
    .locals 20
    .parameter

    .prologue
    .line 1961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pRawRequestedTableWidthValue:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->calculateWidthHelper(II)I

    move-result v15

    .line 1963
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellVertical()I

    move-result v16

    .line 1966
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-object v14, v0

    .line 1972
    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v3

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_2

    .line 1973
    invoke-virtual {v14}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->size()I

    move-result v3

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 1976
    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v3

    .line 1977
    iget v4, v3, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    add-int v4, v4, v17

    move v0, v4

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 1978
    sub-int v4, v16, v17

    iput v4, v3, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    .line 1972
    :cond_0
    :goto_2
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    goto :goto_1

    .line 1984
    :cond_1
    new-instance v3, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v13, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;-><init>(Lcom/mobipocket/common/library/reader/TableLayout;IIIIIIZILcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1985
    invoke-virtual {v14, v3}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->addCell(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)V

    goto :goto_2

    .line 1966
    :cond_2
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_0

    .line 1991
    :cond_3
    const/4 v3, 0x0

    move v4, v3

    :goto_3
    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 1997
    const/4 v5, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2000
    invoke-virtual {v3, v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v6

    .line 2001
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2002
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->computeWidth()V

    .line 1997
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1991
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 2009
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v3

    new-array v5, v3, [I

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v3

    new-array v6, v3, [I

    .line 2011
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v3

    new-array v7, v3, [I

    .line 2013
    const/4 v3, 0x0

    move v8, v3

    :goto_5
    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2019
    const/4 v4, 0x0

    move v9, v4

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v4

    if-ge v9, v4, :cond_f

    .line 2022
    invoke-virtual {v3, v9}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v10

    .line 2024
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_a

    .line 2027
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    aget v11, v5, v9

    if-le v4, v11, :cond_7

    .line 2028
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    aput v4, v5, v9

    .line 2030
    :cond_7
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    aget v11, v6, v9

    if-le v4, v11, :cond_8

    .line 2031
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    aput v4, v6, v9

    .line 2033
    :cond_8
    invoke-static {v10}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1400(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->calculateWidthHelper(II)I

    move-result v4

    .line 2034
    aget v10, v7, v9

    if-le v4, v10, :cond_9

    .line 2035
    aput v4, v7, v9

    .line 2019
    :cond_9
    :goto_7
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_6

    .line 2038
    :cond_a
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    const/4 v11, 0x1

    if-eq v4, v11, :cond_9

    .line 2042
    const/4 v11, 0x1

    .line 2045
    aget v4, v5, v9

    if-eqz v4, :cond_b

    aget v4, v6, v9

    if-nez v4, :cond_9

    :cond_b
    move v12, v9

    .line 2049
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v12, v4, :cond_34

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2051
    invoke-virtual {v4, v9}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v4

    .line 2052
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v13

    if-nez v13, :cond_e

    iget v4, v4, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    const/4 v13, 0x1

    if-ne v4, v13, :cond_e

    .line 2054
    const/4 v4, 0x0

    .line 2059
    :goto_9
    if-eqz v4, :cond_9

    .line 2061
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    aget v11, v5, v9

    if-le v4, v11, :cond_c

    .line 2062
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    aput v4, v5, v9

    .line 2064
    :cond_c
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    aget v11, v6, v9

    if-le v4, v11, :cond_d

    .line 2065
    iget v4, v10, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    aput v4, v6, v9

    .line 2067
    :cond_d
    invoke-static {v10}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1400(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->calculateWidthHelper(II)I

    move-result v4

    .line 2068
    aget v10, v7, v9

    if-le v4, v10, :cond_9

    .line 2069
    aput v4, v7, v9

    goto :goto_7

    .line 2049
    :cond_e
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_8

    .line 2013
    :cond_f
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_5

    .line 2079
    :cond_10
    const/4 v3, 0x0

    move v4, v3

    :goto_a
    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_19

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2085
    const/4 v8, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    if-ge v8, v9, :cond_18

    .line 2088
    invoke-virtual {v3, v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v9

    .line 2089
    invoke-virtual {v9}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v10

    if-nez v10, :cond_13

    iget v10, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_13

    .line 2094
    const/4 v10, 0x0

    .line 2095
    const/4 v11, 0x0

    .line 2097
    const/4 v12, 0x0

    move/from16 v19, v12

    move v12, v10

    move/from16 v10, v19

    :goto_c
    iget v13, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    if-ge v10, v13, :cond_11

    .line 2099
    add-int v13, v8, v10

    aget v13, v5, v13

    add-int/2addr v12, v13

    .line 2100
    add-int v13, v8, v10

    aget v13, v6, v13

    add-int/2addr v11, v13

    .line 2097
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 2103
    :cond_11
    iget v10, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    if-le v12, v10, :cond_14

    .line 2104
    iput v12, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    .line 2115
    :cond_12
    iget v10, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    if-le v11, v10, :cond_16

    .line 2116
    iput v11, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    .line 2085
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 2108
    :cond_14
    const/4 v10, 0x0

    :goto_d
    iget v13, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    if-ge v10, v13, :cond_12

    .line 2109
    add-int v13, v8, v10

    aget v13, v5, v13

    if-eqz v13, :cond_15

    .line 2110
    add-int v13, v8, v10

    add-int v14, v8, v10

    aget v14, v5, v14

    move-object v0, v9

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMinWidth:I

    move/from16 v17, v0

    mul-int v14, v14, v17

    div-int/2addr v14, v12

    aput v14, v5, v13

    .line 2108
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 2120
    :cond_16
    const/4 v10, 0x0

    :goto_e
    iget v12, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    if-ge v10, v12, :cond_13

    .line 2121
    add-int v12, v8, v10

    aget v12, v6, v12

    if-eqz v12, :cond_17

    .line 2122
    add-int v12, v8, v10

    add-int v13, v8, v10

    aget v13, v6, v13

    iget v14, v9, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellMaxWidth:I

    mul-int/2addr v13, v14

    div-int/2addr v13, v11

    aput v13, v6, v12

    .line 2120
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 2079
    :cond_18
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_a

    .line 2130
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v3, v0

    .line 2131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v4, v0

    .line 2132
    const/4 v8, 0x0

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    if-ge v8, v9, :cond_1a

    .line 2133
    aget v9, v5, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v10, v0

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 2134
    aget v9, v6, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v10, v0

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 2132
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 2137
    :cond_1a
    const/4 v8, 0x0

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    if-ge v8, v9, :cond_1c

    .line 2138
    aget v9, v7, v8

    aget v10, v5, v8

    if-ge v9, v10, :cond_1b

    .line 2139
    const/4 v9, 0x0

    aput v9, v7, v8

    .line 2137
    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 2143
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v8, v0

    .line 2144
    const/4 v9, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v10

    if-ge v9, v10, :cond_1e

    .line 2145
    aget v10, v7, v9

    if-lez v10, :cond_1d

    .line 2146
    aget v10, v7, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v11, v0

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 2144
    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 2149
    :cond_1d
    aget v10, v5, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v11, v0

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_12

    .line 2153
    :cond_1e
    move v0, v8

    move/from16 v1, p1

    if-gt v0, v1, :cond_20

    .line 2154
    const/4 v8, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    if-ge v8, v9, :cond_21

    .line 2155
    aget v9, v7, v8

    aget v10, v5, v8

    if-le v9, v10, :cond_1f

    .line 2156
    aget v9, v7, v8

    aput v9, v5, v8

    .line 2157
    aget v9, v6, v8

    aget v10, v5, v8

    if-ge v9, v10, :cond_1f

    .line 2158
    aget v9, v5, v8

    aput v9, v6, v8

    .line 2154
    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 2163
    :cond_20
    const/4 v8, 0x0

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    if-ge v8, v9, :cond_21

    .line 2164
    const/4 v9, 0x0

    aput v9, v7, v8

    .line 2163
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 2168
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v8

    new-array v8, v8, [I

    .line 2169
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TableMinWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TableMaxWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ScreenWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pMinTableWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2170
    move v0, v4

    move/from16 v1, p1

    if-lt v0, v1, :cond_22

    .line 2173
    const/4 v3, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 2174
    aget v4, v5, v3

    aput v4, v8, v3

    .line 2173
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2177
    :cond_22
    move v0, v3

    move/from16 v1, p1

    if-gt v0, v1, :cond_28

    .line 2181
    const/4 v3, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 2182
    aget v4, v6, v3

    aput v4, v8, v3

    .line 2181
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2187
    :cond_23
    if-lez v15, :cond_2b

    .line 2193
    const/4 v3, 0x0

    .line 2194
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move v3, v15

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v6

    if-ge v5, v6, :cond_25

    .line 2195
    aget v6, v7, v5

    if-nez v6, :cond_24

    .line 2196
    aget v6, v8, v5

    add-int/2addr v4, v6

    .line 2194
    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 2199
    :cond_24
    aget v6, v8, v5

    sub-int/2addr v3, v6

    goto :goto_18

    .line 2203
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v6

    div-int/2addr v5, v6

    .line 2204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    rem-int/2addr v6, v9

    if-eqz v6, :cond_26

    .line 2205
    add-int/lit8 v5, v5, 0x1

    .line 2207
    :cond_26
    const/4 v6, 0x0

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    if-ge v6, v9, :cond_2b

    .line 2208
    aget v9, v7, v6

    if-nez v9, :cond_27

    .line 2210
    aget v9, v8, v6

    if-eqz v9, :cond_27

    .line 2211
    aget v9, v8, v6

    mul-int/2addr v9, v3

    div-int/2addr v9, v4

    aput v9, v8, v6

    .line 2213
    aget v9, v8, v6

    if-le v9, v5, :cond_27

    .line 2214
    aget v9, v8, v6

    sub-int/2addr v9, v5

    aput v9, v8, v6

    .line 2207
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 2232
    :cond_28
    sub-int v7, p1, v4

    .line 2233
    sub-int/2addr v3, v4

    .line 2241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v9

    div-int/2addr v4, v9

    .line 2242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v10

    rem-int/2addr v9, v10

    if-eqz v9, :cond_29

    .line 2243
    add-int/lit8 v4, v4, 0x1

    .line 2245
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v9, v0

    add-int/2addr v4, v9

    .line 2246
    const/4 v9, 0x0

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v10

    if-ge v9, v10, :cond_2b

    .line 2249
    aget v10, v6, v9

    aget v11, v5, v9

    sub-int/2addr v10, v11

    .line 2250
    aget v11, v5, v9

    mul-int/2addr v10, v7

    div-int/2addr v10, v3

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 2252
    aget v10, v8, v9

    if-le v10, v4, :cond_2a

    .line 2253
    aget v10, v8, v9

    sub-int/2addr v10, v4

    aput v10, v8, v9

    .line 2246
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 2262
    :cond_2b
    const/4 v3, 0x0

    :goto_1b
    move v0, v3

    move/from16 v1, v16

    if-ge v0, v1, :cond_30

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2268
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 2271
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v5

    .line 2272
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 2273
    iget v6, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_2e

    .line 2277
    const/4 v6, 0x0

    .line 2279
    const/4 v7, 0x0

    :goto_1d
    iget v9, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    if-ge v7, v9, :cond_2c

    .line 2280
    add-int v9, v4, v7

    aget v9, v8, v9

    add-int/2addr v6, v9

    .line 2279
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 2284
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v7, v0

    iget v9, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->colspan:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    iput v6, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    .line 2268
    :cond_2d
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 2287
    :cond_2e
    aget v6, v8, v4

    iput v6, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellWidth:I

    goto :goto_1e

    .line 2262
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 2294
    :cond_30
    const/4 v3, 0x0

    .line 2295
    const/4 v4, 0x0

    :goto_1f
    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_33

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v3, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v3, v0

    .line 2302
    const/4 v5, 0x0

    move/from16 v19, v5

    move v5, v3

    move/from16 v3, v19

    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v6

    if-ge v3, v6, :cond_32

    .line 2305
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v6

    .line 2306
    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v7

    if-nez v7, :cond_31

    .line 2307
    iput v5, v6, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    .line 2309
    :cond_31
    aget v6, v8, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 2302
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2295
    :cond_32
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1f

    .line 2312
    :cond_33
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobipocket/common/library/reader/TableLayout;->pTableWidth:I

    .line 2314
    return-void

    :cond_34
    move v4, v11

    goto/16 :goto_9
.end method

.method public doesFirtLineFitInCurrentScreen(II)I
    .locals 6
    .parameter "nextScreenSize"
    .parameter "availableHeightSize"

    .prologue
    .line 2426
    const/4 v3, -0x1

    .line 2427
    .local v3, returnHeight:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2428
    .local v2, lineNumber:I
    if-lez v2, :cond_0

    .line 2430
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2431
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v4

    iget v5, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    add-int v1, v4, v5

    .line 2432
    .local v1, lineHeight:I
    if-lt v1, p2, :cond_0

    .line 2434
    if-le p1, p2, :cond_0

    .line 2436
    move v3, v1

    .line 2440
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .end local v1           #lineHeight:I
    :cond_0
    return v3
.end method

.method public drawInView(Lcom/amazon/system/drawing/Graphics;IIIIIIIII)I
    .locals 16
    .parameter "g"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"
    .parameter "bgColor"

    .prologue
    .line 2511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBgColor:I

    move v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBgColor:I

    move/from16 p10, v0

    .line 2515
    :cond_0
    const/4 v12, 0x1

    .line 2516
    .local v12, doAgain:Z
    const/4 v14, -0x1

    .line 2517
    .local v14, lastLineDisplayedIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v15

    .line 2519
    .local v15, lineNumber:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_2

    if-eqz v12, :cond_2

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .local v1, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    move-object/from16 v2, p1

    move/from16 v3, p10

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 2523
    invoke-virtual/range {v1 .. v11}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->drawLine(Lcom/amazon/system/drawing/Graphics;IIIIIIIII)Z

    move-result v12

    .line 2524
    if-eqz v12, :cond_1

    .line 2525
    move v14, v13

    .line 2519
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2527
    .end local v1           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_2
    return v14
.end method

.method public endOfActiveArea(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    if-nez v0, :cond_0

    .line 2771
    :goto_0
    return-void

    .line 2770
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->endOfActiveArea(I)V

    goto :goto_0
.end method

.method public getAbsoluteTableBeginningPosition()I
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagElementPositionAt(I)I

    move-result v0

    .line 1530
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAbsoluteTableEndPosition()I
    .locals 1

    .prologue
    .line 1551
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pTableAbsoluteEndPosition:I

    return v0
.end method

.method public getActiveAreaList(IIIIIIII)Ljava/util/Vector;
    .locals 13
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 2705
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 2707
    .local v12, result:Ljava/util/Vector;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v10

    .line 2708
    .local v10, lineNumber:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 2709
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    move/from16 v1, p3

    move/from16 v2, p4

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2711
    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getActiveAreaList(IIIIIIII)Ljava/util/Vector;

    move-result-object v11

    .line 2712
    .local v11, lineSelectableObject:Ljava/util/Vector;
    invoke-static {v12, v11}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2708
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2715
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .end local v11           #lineSelectableObject:Ljava/util/Vector;
    :cond_0
    return-object v12
.end method

.method public getBottomYOfLine(I)I
    .locals 4
    .parameter "lastLineDisplayedIndex"

    .prologue
    .line 2476
    const/4 v1, 0x0

    .line 2477
    .local v1, yMin:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2479
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2480
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1500(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)I

    move-result v2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v3

    add-int v1, v2, v3

    .line 2482
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_0
    return v1
.end method

.method getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 1

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCurrentCell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    return-object v0
.end method

.method public getFirstVisibleElementPosition(I)I
    .locals 4
    .parameter "beginFramePosition"

    .prologue
    .line 2980
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 2982
    const/4 v3, -0x1

    .line 3001
    :goto_0
    return v3

    .line 2986
    :cond_0
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2990
    .local v1, lineCount:I
    const/4 v2, 0x0

    .line 2991
    .local v2, lineIndex:I
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2992
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    add-int/lit8 v2, v2, 0x1

    .line 2994
    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getFirstVisibleElementPosition()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 2996
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2998
    .restart local v0       #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3001
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getFirstVisibleElementPosition()I

    move-result v3

    goto :goto_0
.end method

.method public getLineBeginningPosition(I)I
    .locals 3
    .parameter "lineIndex"

    .prologue
    .line 2858
    const/4 v1, 0x0

    .line 2859
    .local v1, position:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2861
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2862
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineBeginningTagPosition()I

    move-result v1

    .line 2864
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_0
    return v1
.end method

.method public getLineClosingPosition(I)I
    .locals 3
    .parameter "lineIndex"

    .prologue
    .line 2842
    const/4 v1, 0x0

    .line 2843
    .local v1, position:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2845
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2846
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineClosingTagPosition()I

    move-result v1

    .line 2848
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_0
    return v1
.end method

.method public getLineHeight(I)I
    .locals 2
    .parameter "lineIndex"

    .prologue
    .line 2967
    const/4 v0, -0x1

    .line 2968
    .local v0, lineHeight:I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 2969
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v0

    .line 2971
    :cond_0
    return v0
.end method

.method public getLineIndexFromPosition(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 2876
    .line 2877
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2881
    if-nez v1, :cond_1

    move v0, v3

    .line 2923
    :cond_0
    :goto_0
    return v0

    .line 2885
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineBeginningTagPosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    move v0, v3

    .line 2887
    goto :goto_0

    .line 2889
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineClosingTagPosition()I

    move-result v0

    if-lt p1, v0, :cond_3

    move v0, v4

    .line 2891
    goto :goto_0

    :cond_3
    move v2, v5

    .line 2895
    :goto_1
    if-ge v2, v1, :cond_6

    .line 2897
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2899
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineClosingTagPosition()I

    move-result v0

    .line 2906
    if-ge p1, v0, :cond_4

    move v0, v2

    .line 2909
    goto :goto_0

    .line 2911
    :cond_4
    if-ne p1, v0, :cond_5

    .line 2913
    add-int/lit8 v0, v2, 0x1

    .line 2915
    if-lt v0, v1, :cond_0

    move v0, v4

    .line 2917
    goto :goto_0

    .line 2895
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public getLineOffsetList(IIIIIIII)Ljava/util/Vector;
    .locals 13
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 2678
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 2680
    .local v12, result:Ljava/util/Vector;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v10

    .line 2681
    .local v10, lineNumber:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 2682
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    move/from16 v1, p3

    move/from16 v2, p4

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2684
    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineOffsetList(IIIIIIII)Ljava/util/Vector;

    move-result-object v11

    .line 2685
    .local v11, lineSelectableObject:Ljava/util/Vector;
    invoke-static {v12, v11}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2681
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2688
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .end local v11           #lineSelectableObject:Ljava/util/Vector;
    :cond_0
    return-object v12
.end method

.method public getLineYPosition(I)I
    .locals 3
    .parameter "lineIndex"

    .prologue
    .line 2726
    const/4 v1, -0x1

    .line 2727
    .local v1, retLineYPos:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2729
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2730
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1500(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)I

    move-result v1

    .line 2732
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_0
    return v1
.end method

.method public getMaxNBCellHorizontal()I
    .locals 1

    .prologue
    .line 1940
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pMaxNBCellHoriztontal:I

    return v0
.end method

.method public getMaxNBCellVertical()I
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getSelectableObjects(IIIIIIII)Ljava/util/Vector;
    .locals 13
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 2651
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 2653
    .local v12, result:Ljava/util/Vector;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v10

    .line 2654
    .local v10, lineNumber:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 2655
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    move/from16 v1, p3

    move/from16 v2, p4

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2657
    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getSelectableObjects(IIIIIIII)Ljava/util/Vector;

    move-result-object v11

    .line 2658
    .local v11, lineSelectableObject:Ljava/util/Vector;
    invoke-static {v12, v11}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 2654
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2661
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .end local v11           #lineSelectableObject:Ljava/util/Vector;
    :cond_0
    return-object v12
.end method

.method public getStartTableTag()Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    return-object v0
.end method

.method public getTableLineFirstElementPosition(I)I
    .locals 3
    .parameter "firstRowDisplayedIndex"

    .prologue
    .line 2810
    const/4 v1, 0x0

    .line 2811
    .local v1, position:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2813
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2814
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineFirstElementPosition()I

    move-result v1

    .line 2816
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_0
    return v1
.end method

.method public getTableLineLastElementPosition(I)I
    .locals 3
    .parameter "lastRowDisplayedIndex"

    .prologue
    .line 2826
    const/4 v1, 0x0

    .line 2827
    .local v1, position:I
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 2829
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2830
    .local v0, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineLastElementPosition()I

    move-result v1

    .line 2832
    .end local v0           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_0
    return v1
.end method

.method public getTableTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->tagAndAttributeStack:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    return-object v0
.end method

.method public final getTableWidth()I
    .locals 1

    .prologue
    .line 2491
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pTableWidth:I

    return v0
.end method

.method public isEmergencyStoppedTable()Z
    .locals 1

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->emergencyStoppedTable:Z

    return v0
.end method

.method public isTagInsideParsedTable(I)I
    .locals 2
    .parameter "tagPosition"

    .prologue
    .line 3011
    const/4 v0, -0x1

    .line 3012
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableBeginningPosition()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableEndPosition()I

    move-result v0

    .line 3017
    :cond_0
    return v0
.end method

.method public moveDown(III)[I
    .locals 1
    .parameter "lastLineDisplayedIndex"
    .parameter "heightMax"
    .parameter "screenHeight"

    .prologue
    .line 2327
    if-gez p2, :cond_0

    .line 2328
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->computeHeightLayoutInfiniteMode()[I

    move-result-object v0

    .line 2330
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/TableLayout;->computeHeightLayout(III)[I

    move-result-object v0

    goto :goto_0
.end method

.method public openCellNoImplicit(IIIIII)V
    .locals 0
    .parameter "colspan"
    .parameter "rowspan"
    .parameter "width"
    .parameter "bgColor"
    .parameter "vAlign"
    .parameter "bookPosition"

    .prologue
    .line 1717
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->closeImplicitCell()V

    .line 1719
    invoke-direct {p0, p6}, Lcom/mobipocket/common/library/reader/TableLayout;->openLineImplicit(I)V

    .line 1721
    invoke-direct/range {p0 .. p6}, Lcom/mobipocket/common/library/reader/TableLayout;->openCell(IIIIII)V

    .line 1722
    return-void
.end method

.method public openLineNoImplicit(II)V
    .locals 1
    .parameter "bgColor"
    .parameter "lineBeginningTagPosition"

    .prologue
    .line 1783
    invoke-direct {p0, p2}, Lcom/mobipocket/common/library/reader/TableLayout;->closeImplicitLine(I)V

    .line 1785
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1786
    iget p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBgColor:I

    .line 1788
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/TableLayout;->openLine(II)V

    .line 1789
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 2619
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 2620
    .local v4, lineNumber:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 2624
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2626
    .local v3, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2629
    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 2630
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2631
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->reset()V

    .line 2626
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2620
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2635
    .end local v2           #k:I
    .end local v3           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_2
    return-void
.end method

.method public resetCurrentLayout()V
    .locals 3

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2955
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2957
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->resetRendered()V

    .line 2955
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2959
    :cond_0
    return-void
.end method

.method public setAbsoluteTableEndPosition(I)V
    .locals 0
    .parameter "tableAbsoluteEndPosition"

    .prologue
    .line 1513
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pTableAbsoluteEndPosition:I

    .line 1514
    return-void
.end method

.method public setAsEmergencyStoppedTable(Z)V
    .locals 0
    .parameter "isEmergencyStopped"

    .prologue
    .line 1450
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->emergencyStoppedTable:Z

    .line 1451
    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1633
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBgColor:I

    .line 1634
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1642
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderColor:I

    .line 1643
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0
    .parameter "border"

    .prologue
    .line 1570
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    .line 1571
    return-void
.end method

.method public setCellPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 1561
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pCellPadding:I

    .line 1562
    return-void
.end method

.method public setDecorationList(Ljava/util/Vector;IIIIIIII)V
    .locals 17
    .parameter "list"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v16

    .line 2546
    .local v16, lineNumber:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2548
    .local v5, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-static {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1800(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    move/from16 v1, p5

    move/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1900(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 2550
    invoke-virtual/range {v5 .. v14}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->setDecorationList(Ljava/util/Vector;IIIIIIII)V

    .line 2546
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2553
    .end local v5           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_1
    return-void
.end method

.method public setDefaultStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 1616
    return-void
.end method

.method public setHyphenationManager(Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)V
    .locals 0
    .parameter "hyphenationManager"

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    .line 1607
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0
    .parameter "lineSpacing"

    .prologue
    .line 1597
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineSpacing:I

    .line 1598
    return-void
.end method

.method public setMinTableWidth(I)V
    .locals 0
    .parameter "minTableWidth"

    .prologue
    .line 1624
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pRawRequestedTableWidthValue:I

    .line 1625
    return-void
.end method

.method public setParagraphIndentation(I)V
    .locals 0
    .parameter "paragraphIndent"

    .prologue
    .line 1588
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pParagraphIndent:I

    .line 1589
    return-void
.end method

.method public setParagraphSpacing(I)V
    .locals 0
    .parameter "paragraphSpacing"

    .prologue
    .line 1579
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->pParagraphSpacing:I

    .line 1580
    return-void
.end method

.method public setStartTableTag(SLcom/mobipocket/common/parser/AttributeStack;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout;->startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->popAll()V

    .line 1503
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mobipocket/common/parser/AttributeStack;->cloneAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    .line 1504
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout;->startTableTag:Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-virtual {v1, p1, v0, p3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 1505
    return-void

    .line 1503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTemporaryDecorationList(Lcom/mobipocket/common/library/reader/Range;IIIIIIII)V
    .locals 17
    .parameter "deco"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v16

    .line 2570
    .local v16, lineNumber:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pLineList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    .line 2572
    .local v5, line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    invoke-static {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1800(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    move/from16 v1, p5

    move/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->access$1900(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 2574
    invoke-virtual/range {v5 .. v14}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->setTemporaryDecorationList(Lcom/mobipocket/common/library/reader/Range;IIIIIIII)V

    .line 2570
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2577
    .end local v5           #line:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    :cond_1
    return-void
.end method
