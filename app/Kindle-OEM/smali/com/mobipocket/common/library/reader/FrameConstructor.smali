.class public Lcom/mobipocket/common/library/reader/FrameConstructor;
.super Ljava/lang/Object;
.source "FrameConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;,
        Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;,
        Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;
    }
.end annotation


# static fields
.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_NONBREAK:I = 0x1

.field private static final STATE_ZWSPACE:I = 0x2


# instance fields
.field public PAR_INDENT:I

.field public PAR_SPACING:I

.field private bufferedTextElements:Ljava/util/Vector;

.field private canInsertMoreElement:Z

.field private changeHeightLine:Z

.field private contentInserted:Z

.field private currentBaselineHeight:I

.field private currentDescentHeight:I

.field private currentLineAlignment:I

.field private currentLineHeight:I

.field private currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

.field private defaultFontHeight:I

.field final disableJustifyIfWhitespaceAreTooBig:Z

.field final disableJustifyMaxSpaceWidth:I

.field private hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

.field final infiniteMode:Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

.field private lastBreakablePoint:I

.field private lastElementXPosition:I

.field private lastElementYPosition:I

.field final layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

.field layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

.field layoutedPageObjects:Ljava/util/Vector;

.field layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

.field private lineStartElementIndex:I

.field private pBreakableState:I

.field private pCannotEndLine:Z

.field private pCannotStartLine:Z

.field private pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field private pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

.field private pInfiniteHeightMode:Z

.field private pIsZWSpace:Z

.field private pLastCorrectBreakablePoint:I

.field private pLineSpacing:I

.field private pPreviousCannotEndLine:Z

.field private pXMax:I

.field private pXMin:I

.field private pYMax:I

.field private pYMin:I

.field tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/DecorationGenerator;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->disableJustifyIfWhitespaceAreTooBig:Z

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->disableJustifyMaxSpaceWidth:I

    .line 40
    const/16 v0, 0xf

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_INDENT:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_SPACING:I

    .line 62
    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 63
    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 68
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->changeHeightLine:Z

    .line 69
    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    .line 70
    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    .line 80
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->canInsertMoreElement:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    .line 95
    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    .line 107
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    .line 108
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

    .line 112
    new-instance v0, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;-><init>(Lcom/mobipocket/common/library/reader/FrameConstructor;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    .line 113
    new-instance v0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;-><init>(Lcom/mobipocket/common/library/reader/FrameConstructor;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->infiniteMode:Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

    .line 114
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    .line 115
    new-instance v0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;-><init>(Lcom/mobipocket/common/library/reader/FrameConstructor;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    .line 116
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    new-instance v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;-><init>()V

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$002(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    .line 117
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iput-object p1, v0, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    .line 118
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    .line 119
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    .line 121
    return-void
.end method

.method private NoDisplayedElementBeforeThisLine()Z
    .locals 4

    .prologue
    .line 2668
    const/4 v2, 0x1

    .line 2669
    .local v2, rep:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-ge v1, v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2671
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2672
    .local v0, currentElement:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2674
    const/4 v2, 0x0

    .line 2669
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2677
    .end local v0           #currentElement:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    return v2
.end method

.method static synthetic access$100(Lcom/mobipocket/common/library/reader/FrameConstructor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/HyphenationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mobipocket/common/library/reader/FrameConstructor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mobipocket/common/library/reader/FrameConstructor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mobipocket/common/library/reader/FrameConstructor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mobipocket/common/library/reader/FrameConstructor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    return v0
.end method

.method static synthetic access$202(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    return p1
.end method

.method static synthetic access$300(Lcom/mobipocket/common/library/reader/FrameConstructor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    return v0
.end method

.method static synthetic access$302(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    return p1
.end method

.method static synthetic access$400(Lcom/mobipocket/common/library/reader/FrameConstructor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    return v0
.end method

.method static synthetic access$402(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    return p1
.end method

.method static synthetic access$502(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/mobipocket/common/library/reader/FrameConstructor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/mobipocket/common/library/reader/FrameConstructor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLineSpacing:I

    return v0
.end method

.method static synthetic access$702(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLineSpacing:I

    return p1
.end method

.method static synthetic access$800(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mobipocket/common/library/reader/FrameConstructor;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mobipocket/common/library/reader/FrameConstructor;Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    return-object p1
.end method

.method private addBreakElement(Lcom/mobipocket/common/library/reader/BreakElement;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1330
    .line 1331
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->willSkipElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 1374
    :goto_0
    return v0

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 1337
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1339
    iget v0, p1, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    goto :goto_0

    .line 1342
    :pswitch_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BreakElement;->getWidth()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addSpace(ZI)Z

    move-result v0

    goto :goto_0

    .line 1347
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->newParagraph(Lcom/mobipocket/common/library/reader/BreakElement;)Z

    move-result v0

    goto :goto_0

    .line 1350
    :pswitch_2
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    if-eqz v0, :cond_1

    .line 1352
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addLineJump()Z

    move-result v0

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v0, v3

    .line 1358
    goto :goto_0

    .line 1360
    :pswitch_3
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    if-eqz v0, :cond_2

    .line 1362
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addPageJump()Z

    move-result v0

    goto :goto_0

    .line 1366
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v0, v3

    .line 1368
    goto :goto_0

    .line 1370
    :pswitch_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 1371
    new-instance v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BreakElement;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TextProperties;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 1372
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->initPage()V

    .line 1373
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    goto :goto_1

    .line 1339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private addElementInternal(Lcom/mobipocket/common/library/reader/FlowElement;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame created with a bad size :width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad frame location x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    check-cast p1, Lcom/mobipocket/common/library/reader/BreakElement;

    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addBreakElement(Lcom/mobipocket/common/library/reader/BreakElement;)Z

    move-result v0

    .line 1865
    if-eqz v0, :cond_0

    .line 1867
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    if-eqz v1, :cond_0

    .line 1869
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    packed-switch v1, :pswitch_data_0

    .line 1876
    iput v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    .line 1901
    :cond_0
    :goto_0
    return v0

    .line 1872
    :pswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    goto :goto_0

    .line 1884
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    packed-switch v0, :pswitch_data_1

    .line 1895
    :goto_1
    :pswitch_1
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotEndLine:Z

    .line 1896
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotStartLine:Z

    .line 1898
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addNonBreakElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    goto :goto_0

    .line 1892
    :pswitch_2
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotEndLine:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pPreviousCannotEndLine:Z

    goto :goto_1

    .line 1869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1884
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addFlowelementVector(Ljava/util/Vector;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2335
    .line 2336
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 2337
    :cond_0
    if-eqz p1, :cond_9

    .line 2339
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    move v10, v12

    move v2, v11

    .line 2341
    :goto_0
    if-ge v10, v9, :cond_8

    if-eqz v2, :cond_8

    .line 2343
    invoke-virtual {p1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    move-object v7, v0

    .line 2346
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2348
    move-object v0, v7

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    move-object v8, v0

    .line 2349
    iget-object v1, v8, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v1

    if-gez v1, :cond_1

    .line 2351
    iget-object v1, v8, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->setActivAreaCuttingInfo(I)V

    .line 2356
    :goto_1
    iget-object v1, v8, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->getLastSubElementBookPosition()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    move v1, v2

    .line 2393
    :goto_2
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 2341
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v2, v1

    goto :goto_0

    .line 2354
    :cond_1
    iget-object v1, v8, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v1, v11}, Lcom/mobipocket/common/library/reader/ActiveArea;->setActivAreaCuttingInfo(I)V

    goto :goto_1

    .line 2358
    :cond_2
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2361
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v4

    .line 2362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addFlowelementVector] Adding new TableElement view in the current page with current page begin position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2365
    new-instance v1, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v0, v7

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v2, v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getAvailableHeight()I

    move-result v3

    new-instance v5, Lcom/amazon/system/drawing/Dimension;

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v6

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v8

    invoke-direct {v5, v6, v8}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    iget-boolean v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    if-nez v6, :cond_3

    move v6, v11

    :goto_3
    invoke-direct/range {v1 .. v6}, Lcom/mobipocket/common/library/reader/TableElement;-><init>(Lcom/mobipocket/common/library/reader/TableElement;IILcom/amazon/system/drawing/Dimension;Z)V

    .line 2371
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableLayout()Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v3

    iput-object v3, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 2372
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-static {v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1400(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    .line 2374
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v1

    goto :goto_2

    :cond_3
    move v6, v12

    .line 2365
    goto :goto_3

    .line 2376
    :cond_4
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2378
    move-object v0, v7

    check-cast v0, Lcom/mobipocket/common/library/reader/WordElement;

    move-object v8, v0

    move v1, v12

    .line 2379
    :goto_4
    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/WordElement;->getNBTextElements()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2381
    invoke-virtual {v8, v1}, Lcom/mobipocket/common/library/reader/WordElement;->getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 2379
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v2

    .line 2383
    goto/16 :goto_2

    .line 2384
    :cond_6
    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->isHyphenElement()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    goto/16 :goto_2

    .line 2391
    :cond_7
    invoke-virtual {p0, v7}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v1

    goto/16 :goto_2

    :cond_8
    move v1, v2

    .line 2399
    :goto_5
    return v1

    :cond_9
    move v1, v11

    goto :goto_5
.end method

.method private addLineJump()Z
    .locals 2

    .prologue
    .line 2462
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getWhitespaceWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addSpace(ZI)Z

    .line 2463
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->doLineJump(Z)Z

    move-result v0

    return v0
.end method

.method private addNonBreakElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1394
    .line 1395
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 1397
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1399
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1402
    :cond_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/WordElement;

    move-object v1, v0

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v1, v1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v1, :cond_5

    .line 1404
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/WordElement;

    move-object v1, v0

    .line 1405
    iget-object v1, v1, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v1

    .line 1413
    :goto_0
    invoke-static {v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->cannotEndLine(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1415
    iput-boolean v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotEndLine:Z

    .line 1417
    :cond_1
    invoke-static {v1}, Lcom/mobipocket/common/parser/UnicodeUtils;->cannotStartLine(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1419
    iput-boolean v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotStartLine:Z

    .line 1423
    :cond_2
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    packed-switch v1, :pswitch_data_0

    .line 1436
    :cond_3
    :goto_1
    iput v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    .line 1438
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v1

    .line 1440
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1447
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1458
    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->checkLineInsertable(I)Z

    move-result v2

    .line 1461
    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 1462
    if-nez v2, :cond_7

    move v1, v6

    .line 1464
    :goto_3
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-le v2, v3, :cond_8

    if-eqz v1, :cond_8

    .line 1466
    invoke-direct {p0, v5}, Lcom/mobipocket/common/library/reader/FrameConstructor;->doLineJump(Z)Z

    move-result v1

    goto :goto_3

    .line 1407
    :cond_5
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/TextElement;

    move-object v1, v0

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    iget v1, v1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v1, :cond_f

    .line 1409
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/TextElement;

    move-object v1, v0

    .line 1410
    iget-object v1, v1, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1426
    :pswitch_0
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pPreviousCannotEndLine:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotStartLine:Z

    if-nez v1, :cond_3

    .line 1428
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    goto :goto_1

    .line 1453
    :cond_6
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    move v1, v5

    .line 1455
    goto :goto_2

    :cond_7
    move v1, v6

    .line 1470
    :cond_8
    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    if-nez v2, :cond_a

    .line 1473
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_a

    move v2, v5

    .line 1479
    :goto_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_e

    .line 1481
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1482
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    move v1, v5

    .line 1488
    :goto_5
    if-eqz v1, :cond_d

    .line 1490
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    move v1, v6

    .line 1500
    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1503
    invoke-direct {p0, v5}, Lcom/mobipocket/common/library/reader/FrameConstructor;->doLineJump(Z)Z

    .line 1506
    check-cast p1, Lcom/mobipocket/common/library/reader/TableElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveDown()Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, v5

    .line 1513
    :cond_b
    return v1

    .line 1479
    :cond_c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_d
    move v1, v5

    .line 1495
    goto :goto_6

    :cond_e
    move v1, v6

    goto :goto_5

    :cond_f
    move v1, v5

    goto/16 :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private addPageJump()Z
    .locals 3

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addLineJump()Z

    .line 2685
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2686
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 2687
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/LineInformation;->setBottomMargin(I)V

    .line 2689
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 2690
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    if-eqz v0, :cond_1

    .line 2692
    const/4 v0, 0x1

    .line 2694
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addSpace(ZI)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2416
    .line 2417
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    .line 2421
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-gt v0, v1, :cond_2

    .line 2432
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2434
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 2435
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    .line 2437
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    if-nez v1, :cond_5

    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    .line 2440
    :cond_2
    if-eqz p1, :cond_7

    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-lt v0, v1, :cond_7

    .line 2443
    if-lez p2, :cond_3

    .line 2444
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    .line 2447
    :cond_3
    invoke-direct {p0, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->doLineJump(Z)Z

    move-result v0

    .line 2449
    if-nez p2, :cond_4

    .line 2450
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    .line 2452
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    .line 2455
    :goto_2
    return v0

    :cond_5
    move v1, v4

    .line 2437
    goto :goto_0

    :cond_6
    move v2, v4

    .line 2452
    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method private checkLineInsertable(I)Z
    .locals 3
    .parameter "elementWidth"

    .prologue
    .line 1569
    const/4 v0, 0x1

    .line 1570
    .local v0, ret:Z
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-le v1, v2, :cond_0

    .line 1571
    const/4 v0, 0x0

    .line 1572
    :cond_0
    return v0
.end method

.method private doLineJump(Z)Z
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 2486
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2487
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    .line 2492
    :cond_0
    if-nez p1, :cond_d

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-gt v1, v2, :cond_d

    .line 2494
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {p0, v1, v11}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    .line 2498
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v1, v2

    if-ne v1, v11, :cond_b

    .line 2500
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2501
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2504
    check-cast v1, Lcom/mobipocket/common/library/reader/BreakElement;

    .line 2505
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v3, v1, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2506
    iput v7, v1, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    :cond_1
    move v9, v7

    .line 2550
    :goto_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v1, v9

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2551
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getWhitespaceWidth()I

    .line 2552
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v1

    .line 2553
    if-nez v1, :cond_2

    .line 2554
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v1

    .line 2557
    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    if-nez p1, :cond_10

    .line 2558
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->positionJustifiedElements()V

    .line 2562
    :goto_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_3

    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->NoDisplayedElementBeforeThisLine()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2564
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 2565
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_3

    .line 2567
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->redimensionTooBigCurrentLine()V

    .line 2571
    :cond_3
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->changeHeightLine:Z

    if-eqz v1, :cond_4

    .line 2572
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->repositionYElements()V

    .line 2578
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 2580
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 2581
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v2

    .line 2584
    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v4

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getBottomMargin()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 2588
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v1

    if-lez v1, :cond_14

    .line 2589
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v1

    sub-int v1, v3, v1

    move v8, v1

    move v10, v2

    .line 2594
    :goto_2
    new-instance v1, Lcom/mobipocket/common/library/reader/LineInformation;

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    invoke-direct/range {v1 .. v8}, Lcom/mobipocket/common/library/reader/LineInformation;-><init>(IIIIIII)V

    .line 2595
    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/LineInformation;->setVisible(Z)V

    move v4, v10

    .line 2599
    :goto_3
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-ge v4, v2, :cond_6

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    .line 2601
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2603
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2605
    move-object v0, v2

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v3, v0

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/LineInformation;->setLineTableElement(Lcom/mobipocket/common/library/reader/TableElement;)V

    .line 2608
    :cond_5
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v2

    if-lez v2, :cond_11

    .line 2610
    invoke-virtual {v1, v11}, Lcom/mobipocket/common/library/reader/LineInformation;->setVisible(Z)V

    .line 2616
    :cond_6
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2620
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    if-gt v2, v3, :cond_7

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    if-eqz v2, :cond_12

    .line 2631
    :cond_8
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v1

    if-lez v1, :cond_9

    .line 2634
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    if-eqz v1, :cond_9

    .line 2636
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 2639
    :cond_9
    iput-boolean v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->changeHeightLine:Z

    .line 2641
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    add-int v2, v1, v9

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2643
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    .line 2644
    if-eqz p1, :cond_a

    .line 2646
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {p0, v1, v11}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    :cond_a
    move v1, v11

    .line 2660
    :goto_4
    return v1

    :cond_b
    move v1, v7

    .line 2513
    :goto_5
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-lez v2, :cond_17

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-le v2, v3, :cond_17

    .line 2515
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    sub-int/2addr v1, v11

    invoke-direct {p0, v1, v11}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    .line 2518
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    move v2, v1

    move v3, v7

    :goto_6
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_c

    .line 2520
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 2518
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_6

    .line 2522
    :cond_c
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-nez v1, :cond_16

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-le v1, v2, :cond_16

    .line 2524
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v1, v2

    goto :goto_5

    .line 2533
    :cond_d
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    move v2, v1

    move v3, v7

    :goto_7
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_e

    .line 2535
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 2533
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_7

    .line 2538
    :cond_e
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-lez v1, :cond_f

    .line 2540
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    sub-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2541
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2543
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v2, v0

    iget v2, v2, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v2, :cond_f

    .line 2545
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    :cond_f
    move v9, v3

    goto/16 :goto_0

    .line 2560
    :cond_10
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->positionXElements()V

    goto/16 :goto_1

    .line 2599
    :cond_11
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_3

    .line 2655
    :cond_12
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    .line 2657
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v1, v7

    .line 2658
    goto/16 :goto_4

    :cond_13
    move v1, v7

    .line 2660
    goto/16 :goto_4

    :cond_14
    move v8, v3

    move v10, v2

    goto/16 :goto_2

    :cond_15
    move v8, v7

    move v10, v7

    goto/16 :goto_2

    :cond_16
    move v1, v3

    goto/16 :goto_5

    :cond_17
    move v9, v1

    goto/16 :goto_0
.end method

.method private getNaturalHyphenationPosition(Lcom/mobipocket/common/library/reader/WordElement;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1631
    .line 1632
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/WordElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1633
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1635
    add-int/lit8 v0, v0, 0x1

    .line 1636
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private getPositionOfLastElement()I
    .locals 3

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 3064
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private hyphenateAndProcessTextElementBuffer(IZ)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 1656
    const/4 v0, 0x0

    .line 1657
    const/4 v1, 0x0

    .line 1659
    const/4 v2, 0x0

    .line 1662
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getTextProperties()Lcom/mobipocket/common/parser/TextProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getLanguageID()I

    move-result v3

    .line 1664
    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return v0

    .line 1669
    :cond_1
    new-instance v4, Lcom/mobipocket/common/library/reader/WordElement;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-direct {v4, v5}, Lcom/mobipocket/common/library/reader/WordElement;-><init>(Ljava/util/Vector;)V

    .line 1670
    const/4 v5, 0x0

    .line 1672
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    if-eqz v6, :cond_6

    .line 1674
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    invoke-virtual {v5, v3}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->getHyphenationEngine(I)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;

    move-result-object v3

    .line 1677
    invoke-interface {v3}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;->getHyphenSymbol()Ljava/lang/String;

    move-result-object v5

    .line 1678
    if-nez v5, :cond_2

    .line 1680
    const-string v5, ""

    .line 1682
    :cond_2
    new-instance v6, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v6, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 1694
    :goto_1
    invoke-direct {p0, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getNaturalHyphenationPosition(Lcom/mobipocket/common/library/reader/WordElement;)I

    move-result v6

    .line 1698
    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 1699
    const/4 v1, 0x1

    .line 1701
    :cond_3
    if-eqz p2, :cond_9

    .line 1704
    const/4 v3, 0x0

    move v10, v3

    move v3, v2

    move v2, v10

    :goto_2
    iget-object v7, v4, Lcom/mobipocket/common/library/reader/WordElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v7

    if-ge v2, v7, :cond_14

    .line 1706
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Lcom/mobipocket/common/library/reader/WordElement;->getNthElementStyleDescriptor(I)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    .line 1707
    const/4 v7, 0x0

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/mobipocket/common/library/reader/WordElement;->getTextWidth(II)I

    move-result v7

    .line 1708
    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mobipocket/common/library/reader/TextElement;->textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I

    move-result v3

    .line 1711
    if-eqz v1, :cond_4

    const/4 v8, 0x1

    sub-int v8, v6, v8

    if-ne v2, v8, :cond_4

    .line 1713
    const/4 v3, 0x0

    .line 1715
    :cond_4
    add-int/2addr v7, v3

    if-le v7, p1, :cond_8

    .line 1717
    if-lez v2, :cond_7

    .line 1720
    if-lt v2, v6, :cond_5

    if-gtz v6, :cond_14

    .line 1723
    :cond_5
    const/4 v1, 0x0

    move v10, v2

    move v2, v3

    move v3, v1

    move v1, v10

    .line 1763
    :goto_3
    if-ltz v1, :cond_0

    .line 1773
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Lcom/mobipocket/common/library/reader/WordElement;->getTextWidth(II)I

    move-result v1

    .line 1775
    add-int/2addr v2, v1

    if-gt v2, p1, :cond_0

    .line 1779
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1780
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/WordElement;->getNBTextElements()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 1782
    invoke-virtual {v4, v2}, Lcom/mobipocket/common/library/reader/WordElement;->getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;

    move-result-object v6

    .line 1783
    new-instance v7, Lcom/mobipocket/common/library/reader/TextElement;

    iget-object v8, v6, Lcom/mobipocket/common/library/reader/TextElement;->_text:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/TextElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/TextElement;->getFirstSubElementBookPosition()I

    move-result v6

    invoke-direct {v7, v8, v9, v6}, Lcom/mobipocket/common/library/reader/TextElement;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1780
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1687
    :cond_6
    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    const-string v6, ""

    invoke-direct {v3, v6}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Ljava/lang/String;)V

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    goto :goto_1

    :cond_7
    move v2, v3

    move v3, v1

    move v1, v6

    .line 1728
    goto :goto_3

    .line 1704
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1739
    :cond_9
    const/4 v7, -0x1

    if-gt v6, v7, :cond_13

    if-eqz v3, :cond_13

    .line 1742
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/WordElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;->hyphenate(Ljava/lang/String;)Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;

    move-result-object v1

    .line 1743
    const/4 v3, 0x0

    .line 1744
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v7

    move v10, v3

    move v3, v2

    move v2, v10

    .line 1745
    :goto_5
    array-length v8, v7

    if-ge v2, v8, :cond_a

    .line 1747
    aget v3, v7, v2

    .line 1748
    invoke-virtual {v4, v3}, Lcom/mobipocket/common/library/reader/WordElement;->getNthElementStyleDescriptor(I)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v8

    .line 1751
    const/4 v9, 0x0

    invoke-virtual {v4, v9, v3}, Lcom/mobipocket/common/library/reader/WordElement;->getTextWidth(II)I

    move-result v3

    .line 1752
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mobipocket/common/library/reader/TextElement;->textWidth(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/amazon/system/drawing/Font;)I

    move-result v8

    .line 1753
    add-int/2addr v3, v8

    if-le v3, p1, :cond_b

    move v3, v8

    .line 1758
    :cond_a
    if-lez v2, :cond_12

    .line 1760
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v1

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    aget v1, v1, v2

    .line 1762
    :goto_6
    const/4 v2, 0x0

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_3

    .line 1745
    :cond_b
    add-int/lit8 v2, v2, 0x1

    move v3, v8

    goto :goto_5

    .line 1785
    :cond_c
    new-instance v2, Lcom/mobipocket/common/library/reader/WordElement;

    invoke-direct {v2, v0}, Lcom/mobipocket/common/library/reader/WordElement;-><init>(Ljava/util/Vector;)V

    .line 1786
    new-instance v0, Lcom/mobipocket/common/library/reader/WordElement;

    invoke-direct {v0, v2, v1}, Lcom/mobipocket/common/library/reader/WordElement;-><init>(Lcom/mobipocket/common/library/reader/WordElement;I)V

    .line 1790
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/WordElement;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v6

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/WordElement;->getLastSubElementBookPosition()I

    move-result v7

    invoke-virtual {v1, v4, v6, v7}, Lcom/mobipocket/common/parser/HyphenationHelper;->getEndPosition(Ljava/lang/String;II)I

    move-result v1

    .line 1794
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v4

    if-le v1, v4, :cond_d

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/WordElement;->getLastSubElementBookPosition()I

    .line 1797
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find hyphenate occurence "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/WordElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    const/4 v4, -0x1

    if-ne v1, v4, :cond_e

    .line 1803
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/WordElement;->getLastSubElementBookPosition()I

    move-result v1

    .line 1806
    :cond_e
    invoke-virtual {v2, v1}, Lcom/mobipocket/common/library/reader/WordElement;->setLastSubElementBookPosition(I)V

    .line 1807
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/WordElement;->getNBTextElements()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/mobipocket/common/library/reader/WordElement;->getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mobipocket/common/library/reader/TextElement;->setLastSubElementBookPosition(I)V

    .line 1809
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1811
    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElementInternal(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v1

    .line 1813
    if-eqz v3, :cond_10

    .line 1815
    new-instance v3, Lcom/mobipocket/common/library/reader/HyphenElement;

    new-instance v4, Lcom/mobipocket/common/parser/StrDescriptor;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/WordElement;->getLastElementStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/mobipocket/common/library/reader/HyphenElement;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .line 1821
    :goto_7
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/WordElement;->getLastSubElementBookPosition()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/HyphenElement;->setLastSubElementBookPosition(I)V

    .line 1823
    if-eqz v1, :cond_f

    .line 1825
    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElementInternal(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v1

    .line 1827
    :cond_f
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    .line 1828
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/WordElement;->getNBTextElements()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 1830
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/WordElement;->getTextElements(I)Lcom/mobipocket/common/library/reader/TextElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1828
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1819
    :cond_10
    new-instance v3, Lcom/mobipocket/common/library/reader/HyphenElement;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/WordElement;->getLastElementStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/mobipocket/common/library/reader/HyphenElement;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    goto :goto_7

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :cond_12
    move v1, v6

    goto/16 :goto_6

    :cond_13
    move v3, v1

    move v1, v6

    goto/16 :goto_3

    :cond_14
    move v2, v3

    move v3, v1

    move v1, v6

    goto/16 :goto_3
.end method

.method private newParagraph(Lcom/mobipocket/common/library/reader/BreakElement;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2701
    .line 2702
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2703
    const/4 v0, 0x0

    move v2, v7

    move v3, v0

    .line 2708
    :goto_0
    if-lt v1, v2, :cond_4

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2710
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .line 2711
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BreakElement;->getX()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/mobipocket/common/library/reader/BreakElement;->setX(I)V

    .line 2712
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BreakElement;->getY()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/mobipocket/common/library/reader/BreakElement;->setY(I)V

    .line 2713
    iget v4, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v4, :cond_0

    .line 2715
    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BreakElement;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    move v0, v3

    .line 2708
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 2717
    :cond_0
    iget v4, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-eq v4, v7, :cond_1

    iget v4, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-eq v4, v6, :cond_1

    iget v4, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-ne v4, v5, :cond_4

    .line 2724
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BreakElement;->containsDefaultParagraphSpacing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2726
    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_SPACING:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 2728
    :cond_2
    iget v0, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-ne v0, v6, :cond_3

    .line 2730
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    :cond_3
    move v0, v5

    goto :goto_1

    .line 2743
    :cond_4
    add-int/lit8 v0, v1, 0x1

    if-le v2, v0, :cond_8

    .line 2744
    add-int/lit8 v0, v1, 0x1

    .line 2746
    :goto_2
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->setSize(I)V

    .line 2747
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2748
    if-eqz v3, :cond_6

    .line 2750
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setLastBreakablePoint(IZ)V

    .line 2751
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v0, v5

    .line 2759
    :goto_3
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BreakElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 2760
    iget v1, p1, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-ne v1, v6, :cond_7

    .line 2762
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    iget v2, p1, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BreakElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2763
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-lt v1, v2, :cond_5

    .line 2765
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BreakElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2766
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-le v1, v2, :cond_5

    .line 2768
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2780
    :cond_5
    :goto_4
    return v0

    .line 2756
    :cond_6
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addLineJump()Z

    move-result v0

    goto :goto_3

    .line 2774
    :cond_7
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BreakElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 2775
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    if-lt v1, v2, :cond_5

    .line 2777
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method private positionJustifiedElements()V
    .locals 10

    .prologue
    const/high16 v9, -0x8000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2138
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    .line 2148
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v2, v0

    move v3, v8

    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-ge v2, v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2150
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v4

    if-eqz v4, :cond_f

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    iget v0, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v0, :cond_f

    .line 2151
    add-int/lit8 v0, v3, 0x1

    .line 2148
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 2155
    :cond_0
    if-le v3, v7, :cond_3

    .line 2157
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    sub-int v2, v3, v7

    div-int/2addr v0, v2

    move v2, v0

    .line 2177
    :goto_2
    iput v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2178
    iput v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2179
    iput v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2180
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    sub-int v3, v0, v7

    .line 2183
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-lt v3, v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2188
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 2189
    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 2190
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    :cond_1
    move v4, v3

    move v5, v1

    move v1, v8

    .line 2194
    :goto_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-lt v4, v0, :cond_4

    if-nez v1, :cond_4

    .line 2196
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 2197
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2198
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v7

    .line 2200
    :cond_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 2201
    invoke-virtual {v0, v5}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 2203
    iget v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {v0, v6}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 2205
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->updateLineHeights(Lcom/mobipocket/common/library/reader/FlowElement;)V

    .line 2194
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_3

    :cond_3
    move v2, v8

    .line 2159
    goto :goto_2

    .line 2211
    :cond_4
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-le v0, v4, :cond_e

    .line 2213
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    .line 2214
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-gt v0, v3, :cond_d

    .line 2216
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 2218
    :goto_4
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v4, v0

    :goto_5
    if-gt v1, v3, :cond_5

    .line 2220
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 2221
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2222
    invoke-virtual {v0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 2224
    iget v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {v0, v5}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 2225
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 2218
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_5

    .line 2232
    :cond_5
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v0, v7

    move v1, v0

    .line 2235
    :goto_6
    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    .line 2236
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-gt v0, v3, :cond_c

    .line 2238
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v0

    .line 2241
    :goto_7
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v0, v7

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2244
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v4, v7

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .line 2247
    iget v0, v0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    add-int/2addr v0, v3

    .line 2251
    :goto_8
    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v4, v8

    move v5, v0

    :goto_9
    if-gt v3, v1, :cond_7

    .line 2253
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2254
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2256
    add-int/lit8 v4, v4, 0x1

    .line 2259
    :cond_6
    mul-int v6, v4, v2

    shr-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 2261
    iget v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {v0, v6}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 2262
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 2265
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->updateLineHeights(Lcom/mobipocket/common/library/reader/FlowElement;)V

    .line 2266
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    .line 2268
    :cond_7
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    if-ne v0, v9, :cond_8

    .line 2270
    iput v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2272
    :cond_8
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    if-ne v0, v9, :cond_9

    .line 2274
    iput v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2276
    :cond_9
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    if-ne v0, v9, :cond_a

    .line 2278
    iput v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2280
    :cond_a
    return-void

    :cond_b
    move v0, v3

    goto :goto_8

    :cond_c
    move v3, v4

    goto :goto_7

    :cond_d
    move v0, v1

    goto/16 :goto_4

    :cond_e
    move v1, v4

    goto/16 :goto_6

    :cond_f
    move v0, v3

    goto/16 :goto_1
.end method

.method private positionXElements()V
    .locals 1

    .prologue
    .line 2126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->positionXElements(I)V

    .line 2127
    return-void
.end method

.method private positionXElements(I)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, -0x8000

    .line 2037
    .line 2038
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    .line 2040
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int v2, v0, v10

    .line 2042
    if-ltz v2, :cond_6

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 2044
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2045
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v3

    .line 2046
    if-nez v3, :cond_0

    .line 2047
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v3

    .line 2049
    :cond_0
    if-eq v3, v10, :cond_1

    if-ne v3, v12, :cond_4

    .line 2050
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v4

    iget v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 2053
    :goto_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2056
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .line 2057
    iget v2, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-ne v2, v11, :cond_6

    .line 2059
    if-eq v3, v10, :cond_2

    if-ne v3, v12, :cond_5

    .line 2060
    :cond_2
    iget v0, v0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    add-int/2addr v0, v1

    .line 2068
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 2070
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v1, v2

    .line 2079
    :goto_2
    iput v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2080
    iput v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2081
    iput v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2084
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v3, v0

    :goto_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 2086
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 2087
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2089
    add-int v4, v3, v1

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    .line 2091
    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->setY(I)V

    .line 2092
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 2094
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2095
    add-int/2addr v3, p1

    .line 2099
    :cond_3
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->updateLineHeights(Lcom/mobipocket/common/library/reader/FlowElement;)V

    .line 2084
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 2052
    :cond_4
    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getStyleDescriptor()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    iget v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    goto :goto_0

    .line 2062
    :cond_5
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    iget v0, v0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    :cond_6
    move v0, v1

    goto :goto_1

    .line 2071
    :cond_7
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2073
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 2101
    :cond_8
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    if-eq v0, v8, :cond_9

    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    if-eq v0, v8, :cond_9

    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    if-ne v0, v8, :cond_a

    .line 2105
    :cond_9
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 2107
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2108
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2109
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2110
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2119
    :cond_a
    :goto_4
    return-void

    .line 2114
    :cond_b
    iput v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2115
    iput v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2116
    iput v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    goto :goto_4

    :cond_c
    move v1, v9

    goto/16 :goto_2
.end method

.method private redimensionTooBigCurrentLine()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/high16 v2, -0x8000

    .line 1908
    .line 1913
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v3, v2

    move v4, v2

    move v5, v2

    move v2, v1

    :goto_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-ge v2, v1, :cond_2

    .line 1915
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1916
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v6

    if-nez v6, :cond_d

    instance-of v6, v1, Lcom/mobipocket/common/library/reader/ImageElement;

    if-nez v6, :cond_d

    .line 1918
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v6

    if-le v6, v5, :cond_0

    .line 1919
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v5

    .line 1920
    :cond_0
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v6

    if-le v6, v4, :cond_1

    .line 1921
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v4

    .line 1922
    :cond_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v6

    if-le v6, v3, :cond_c

    .line 1923
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v1

    .line 1925
    :goto_1
    add-int v3, v4, v1

    if-ge v5, v3, :cond_b

    .line 1926
    add-int v3, v4, v1

    move v9, v4

    move v4, v3

    move v3, v9

    .line 1913
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 1937
    :cond_2
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    sub-int v6, v1, v2

    .line 1938
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    if-le v1, v4, :cond_7

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    if-le v1, v3, :cond_7

    .line 1940
    sub-int v1, v6, v4

    sub-int/2addr v1, v3

    .line 1941
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v2, v7

    if-nez v2, :cond_6

    move v1, v8

    move v2, v8

    .line 1952
    :goto_3
    if-ge v2, v4, :cond_3

    .line 1954
    sub-int v2, v4, v2

    sub-int/2addr v1, v2

    move v2, v4

    .line 1957
    :cond_3
    if-ge v1, v3, :cond_4

    .line 1959
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    move v2, v1

    move v1, v3

    :cond_4
    move v7, v1

    move v8, v2

    .line 1975
    :goto_4
    iput v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 1980
    iput v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 1981
    iput v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 1983
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v3, v1

    :goto_5
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-ge v3, v1, :cond_9

    .line 1985
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1986
    instance-of v2, v1, Lcom/mobipocket/common/library/reader/ImageElement;

    if-eqz v2, :cond_5

    .line 1988
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/ImageElement;

    move-object v2, v0

    invoke-virtual {v2, v8, v7, v6}, Lcom/mobipocket/common/library/reader/ImageElement;->redimension(III)V

    .line 1989
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->updateLineHeights(Lcom/mobipocket/common/library/reader/FlowElement;)V

    .line 1983
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 1949
    :cond_6
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    mul-int/2addr v2, v1

    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v7, v8

    div-int/2addr v2, v7

    .line 1950
    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    mul-int/2addr v1, v7

    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v7, v8

    div-int/2addr v1, v7

    goto :goto_3

    .line 1964
    :cond_7
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    if-le v1, v4, :cond_8

    .line 1966
    sub-int v1, v6, v3

    move v7, v3

    move v8, v1

    goto :goto_4

    .line 1969
    :cond_8
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    if-le v1, v3, :cond_a

    .line 1971
    sub-int v1, v6, v4

    move v7, v1

    move v8, v4

    goto :goto_4

    .line 1992
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->changeHeightLine:Z

    .line 1993
    return-void

    :cond_a
    move v7, v3

    move v8, v4

    goto :goto_4

    :cond_b
    move v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_c
    move v1, v3

    goto/16 :goto_1

    :cond_d
    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_2
.end method

.method private repositionYElements()V
    .locals 5

    .prologue
    .line 2291
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 2293
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 2304
    :pswitch_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2309
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2318
    :cond_0
    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    if-ge v1, v0, :cond_1

    .line 2320
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 2321
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/mobipocket/common/library/reader/FlowElement;->reposition(III)V

    .line 2318
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2298
    :pswitch_1
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    goto :goto_0

    .line 2301
    :pswitch_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    goto :goto_0

    .line 2312
    :pswitch_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2313
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    goto :goto_0

    .line 2324
    :cond_1
    return-void

    .line 2293
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private resetBreakableState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1169
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotEndLine:Z

    .line 1170
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pCannotStartLine:Z

    .line 1171
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pIsZWSpace:Z

    .line 1172
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    .line 1173
    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pBreakableState:I

    .line 1174
    return-void
.end method

.method private final setLastBreakablePoint(IZ)V
    .locals 0
    .parameter "value"
    .parameter "correct"

    .prologue
    .line 1197
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    .line 1198
    if-eqz p2, :cond_0

    .line 1199
    iput p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    .line 1201
    :cond_0
    return-void
.end method

.method private updateLineHeights(Lcom/mobipocket/common/library/reader/FlowElement;)V
    .locals 4
    .parameter "currentFlowElement"

    .prologue
    const/high16 v3, -0x8000

    .line 1999
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2001
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2002
    .local v0, oldCurrentLineHeight:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    if-eq v1, v3, :cond_1

    .line 2008
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->changeHeightLine:Z

    .line 2009
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    if-le v1, v2, :cond_2

    .line 2010
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2011
    :cond_2
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    if-le v1, v2, :cond_3

    .line 2012
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getBaseLineHeight()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    .line 2013
    :cond_3
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    if-le v1, v2, :cond_4

    .line 2014
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getDescentHeight()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    .line 2016
    :cond_4
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 2017
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    .line 2019
    :cond_5
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentBaselineHeight:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentDescentHeight:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineHeight:I

    if-le v1, v0, :cond_6

    .line 2025
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getAlignment()I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentLineAlignment:I

    .line 2028
    .end local v0           #oldCurrentLineHeight:I
    :cond_6
    return-void
.end method

.method private willSkipElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z
    .locals 12
    .parameter "element"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1260
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v11

    .line 1316
    .end local p1
    :goto_0
    return v7

    .line 1264
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v2, v0

    .line 1266
    .local v2, breakElement:Lcom/mobipocket/common/library/reader/BreakElement;
    const/4 v6, 0x0

    .line 1267
    .local v6, previousElementIsSpace:Z
    const/4 v3, 0x0

    .line 1268
    .local v3, elementIsSpace:Z
    const/4 v1, 0x0

    .line 1269
    .local v1, atBeginningOfLine:Z
    const/4 v5, 0x0

    .line 1271
    .local v5, previousElementIsActiveArea:Z
    iget v7, v2, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v7, :cond_1

    .line 1272
    const/4 v3, 0x1

    .line 1275
    :cond_1
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1278
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1279
    .local v4, previousElement:Lcom/mobipocket/common/library/reader/FlowElement;
    if-eqz v3, :cond_4

    .line 1282
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1283
    move-object v0, v4

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v7, v0

    iget v7, v7, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v7, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/BreakElement;->getWidth()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1286
    const/4 v6, 0x1

    .line 1290
    :cond_2
    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v7, v8, :cond_3

    .line 1292
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1293
    const/4 v5, 0x1

    .line 1297
    :cond_3
    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 1298
    const/4 v1, 0x1

    .line 1303
    .end local v4           #previousElement:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    move v7, v10

    .line 1305
    goto :goto_0

    .line 1307
    :cond_5
    if-eqz v3, :cond_7

    if-nez v1, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    move v7, v10

    .line 1309
    goto :goto_0

    .line 1312
    :cond_7
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v7, v0

    iget v7, v7, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    check-cast p1, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local p1
    iget v7, p1, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v9, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_8

    move v7, v10

    .line 1313
    goto/16 :goto_0

    :cond_8
    move v7, v11

    .line 1316
    goto/16 :goto_0
.end method


# virtual methods
.method addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z
    .locals 2
    .parameter "element"

    .prologue
    .line 1584
    const/4 v0, 0x1

    .line 1585
    .local v0, ret:Z
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->canInsertMoreElement:Z

    if-nez v1, :cond_1

    .line 1587
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1588
    const/4 v0, 0x0

    .line 1616
    :goto_0
    if-nez v0, :cond_0

    .line 1618
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->canInsertMoreElement:Z

    .line 1620
    :cond_0
    return v0

    .line 1592
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1594
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    .line 1597
    :cond_2
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1599
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1603
    :cond_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->processBufferedTextElement()Z

    move-result v0

    .line 1604
    if-nez v0, :cond_4

    .line 1608
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1612
    :cond_4
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElementInternal(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    goto :goto_0
.end method

.method beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1500(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/TableLayout;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 2859
    :goto_0
    return-void

    .line 2854
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->processBufferedTextElement()Z

    .line 2856
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->beginningOfActiveArea(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 2857
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    new-instance v1, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v1, p1, v2, p2}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;-><init>(Lcom/mobipocket/common/library/reader/ActiveArea;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public canStopParsing(I)Z
    .locals 2
    .parameter "parserPosition"

    .prologue
    .line 1213
    const/4 v0, 0x1

    .line 1214
    .local v0, ret:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    const/4 v0, 0x0

    .line 1218
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$000(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    move-result-object v1

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$000(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    move-result-object v1

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getAbsoluteTableBeginningPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1220
    const/4 v0, 0x1

    .line 1223
    :cond_0
    return v0
.end method

.method endOfActiveArea(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2866
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2868
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1500(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout;->endOfActiveArea(I)V

    .line 2894
    :cond_0
    :goto_0
    return-void

    .line 2876
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->processBufferedTextElement()Z

    .line 2880
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLastActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 2881
    if-eqz v0, :cond_2

    .line 2882
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_2

    .line 2883
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 2889
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v1, p1, v2, v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->endOfActiveArea(Ljava/util/Vector;ILjava/util/Vector;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2891
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    goto :goto_0
.end method

.method endOfFlow()V
    .locals 1

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setEndOfFlow()V

    .line 2909
    return-void
.end method

.method finishPage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2472
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->processBufferedTextElement()Z

    .line 2473
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getWhitespaceWidth()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addSpace(ZI)Z

    .line 2474
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->doLineJump(Z)Z

    .line 2475
    return-void
.end method

.method public getAvailableHeight()I
    .locals 2

    .prologue
    .line 3081
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMax:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 3

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1500(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;)Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout;->getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 2831
    .end local p0
    :goto_0
    return-object v0

    .line 2825
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2827
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/ActiveArea;

    move-object v0, p0

    goto :goto_0

    .line 2831
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineSpacing()I
    .locals 2

    .prologue
    .line 3090
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->defaultFontHeight:I

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLineSpacing:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getOnGoingActiveArea(I)Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 2
    .parameter "activeAreaType"

    .prologue
    .line 2902
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-static {v1, p1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLastActiveArea(Ljava/util/Vector;I)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 2903
    .local v0, currentActiveArea:Lcom/mobipocket/common/library/reader/ActiveArea;
    return-object v0
.end method

.method initPage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1178
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBQIndent(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    .line 1179
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pYMin:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 1180
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->changeHeightLine:Z

    .line 1181
    iput v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    .line 1182
    iput v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    .line 1183
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    .line 1184
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    .line 1185
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1186
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->resetBreakableState()V

    .line 1187
    return-void
.end method

.method public isLastElementASpace()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1232
    const/4 v3, 0x0

    .line 1234
    .local v3, res:Z
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1236
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1237
    .local v2, el:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1239
    move-object v0, v2

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v1, v0

    .line 1240
    .local v1, be:Lcom/mobipocket/common/library/reader/BreakElement;
    iget v4, v1, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-nez v4, :cond_1

    move v3, v6

    .line 1243
    .end local v1           #be:Lcom/mobipocket/common/library/reader/BreakElement;
    .end local v2           #el:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_0
    :goto_0
    return v3

    .line 1240
    .restart local v1       #be:Lcom/mobipocket/common/library/reader/BreakElement;
    .restart local v2       #el:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0
.end method

.method processBufferedTextElement()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1523
    move v0, v4

    .line 1524
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1528
    new-instance v1, Lcom/mobipocket/common/library/reader/WordElement;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/WordElement;-><init>(Ljava/util/Vector;)V

    .line 1530
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/WordElement;->getWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->checkLineInsertable(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1532
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/WordElement;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1534
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->hyphenateAndProcessTextElementBuffer(IZ)Z

    move-result v1

    .line 1544
    :goto_1
    if-nez v1, :cond_0

    .line 1548
    new-instance v0, Lcom/mobipocket/common/library/reader/WordElement;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/WordElement;-><init>(Ljava/util/Vector;)V

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElementInternal(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    .line 1549
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0

    .line 1539
    :cond_1
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v2

    div-int/2addr v1, v2

    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 1541
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pXMax:I

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementXPosition:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->hyphenateAndProcessTextElementBuffer(IZ)Z

    move-result v1

    goto :goto_1

    .line 1554
    :cond_2
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElementInternal(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    .line 1555
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0

    .line 1558
    :cond_3
    return v0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method reInit(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V
    .locals 2
    .parameter "newPage"

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1061
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->clearElements()V

    .line 1062
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1400(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    .line 1064
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    .line 1065
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    .line 1066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->canInsertMoreElement:Z

    .line 1067
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1068
    return-void
.end method

.method public reinitWithPartialPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setDefaultStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1092
    invoke-virtual {p0, p3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 1093
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->initPage()V

    .line 1095
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1096
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1400(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    .line 1097
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    .line 1098
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    .line 1100
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->canInsertMoreElement:Z

    .line 1101
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->bufferedTextElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1102
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    .line 1103
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastBreakablePoint:I

    .line 1104
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pLastCorrectBreakablePoint:I

    move v1, v3

    .line 1107
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1109
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1110
    iput-boolean v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    :cond_0
    move v1, v3

    .line 1116
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1118
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 1119
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->isEndingOnPage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1121
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    .line 1116
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1107
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1126
    :cond_3
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1129
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1131
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getBottomMargin()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 1135
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v1

    if-lez v1, :cond_4

    .line 1136
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 1140
    :cond_4
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->getTableElement()Lcom/mobipocket/common/library/reader/TableElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveDown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1142
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    .line 1148
    :cond_5
    iget v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lastElementYPosition:I

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v1

    if-ge v0, v1, :cond_6

    move v0, v4

    .line 1153
    :goto_2
    return v0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method releaseAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3069
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 3070
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    .line 3071
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    .line 3072
    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 3073
    return-void
.end method

.method setDefaultStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 1
    .parameter "defaultStyle"

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pDefaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 1163
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 1164
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->defaultFontHeight:I

    .line 1165
    return-void
.end method

.method setEndInformations(ILcom/mobipocket/common/parser/TagAndAttributeStack;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 2925
    move v2, v10

    move v3, v9

    move v4, v9

    move v5, v10

    .line 2931
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 2933
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2934
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2936
    check-cast v1, Lcom/mobipocket/common/library/reader/TableElement;

    .line 2939
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveDown()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->isLastLineSpanOnNextPage()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2941
    :cond_0
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->isLastLineSpanOnNextPage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2945
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v8

    if-ge v2, v6, :cond_1

    iget v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-ge v2, v6, :cond_1

    .line 2947
    add-int/lit8 v3, v2, 0x1

    move v4, v3

    .line 2954
    :cond_1
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->isTableMovedOnNextScreen()Z

    move-result v1

    if-nez v1, :cond_12

    move v1, v3

    move v3, v4

    move v4, v8

    .line 2959
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 2964
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 2966
    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-le v1, v2, :cond_11

    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-lez v1, :cond_11

    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->pInfiniteHeightMode:Z

    if-nez v1, :cond_11

    .line 2969
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2972
    if-ne v3, v9, :cond_10

    .line 2976
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BreakElement;->isLineBreakContextDependant()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2977
    :cond_4
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    sub-int/2addr v1, v8

    .line 2981
    :goto_2
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    move v2, v1

    move v1, v8

    .line 2989
    :goto_3
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move v4, v1

    move v1, v3

    move v3, v10

    .line 2990
    :goto_4
    if-nez v3, :cond_a

    if-lez v1, :cond_a

    .line 2992
    add-int/lit8 v5, v1, -0x1

    .line 2994
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v6

    .line 2995
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v1

    .line 2996
    if-ge v6, v2, :cond_5

    if-ne v6, v9, :cond_9

    .line 2999
    :cond_5
    if-ltz v6, :cond_7

    iget v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    if-ge v6, v7, :cond_7

    .line 3001
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/ActiveArea;

    sub-int v6, v2, v8

    invoke-virtual {v1, v6}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    move v1, v3

    move v3, v4

    :goto_5
    move v4, v3

    move v3, v1

    move v1, v5

    .line 3020
    goto :goto_4

    .line 2979
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->lineStartElementIndex:I

    goto :goto_2

    .line 3003
    :cond_7
    if-lt v1, v2, :cond_8

    .line 3005
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v1, v6}, Ljava/util/Vector;->setSize(I)V

    move v1, v3

    move v3, v4

    goto :goto_5

    .line 3009
    :cond_8
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 3010
    sub-int v4, v2, v8

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/library/reader/ActiveArea;->setEnd(I)V

    .line 3011
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getActiveAreaCutInfo()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/library/reader/ActiveArea;->setActivAreaCuttingInfo(I)V

    move v1, v3

    move v3, v8

    .line 3014
    goto :goto_5

    :cond_9
    move v1, v8

    move v3, v4

    .line 3018
    goto :goto_5

    :cond_a
    move v1, v2

    move v2, v4

    .line 3023
    :goto_6
    if-eq v1, v9, :cond_b

    .line 3025
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->setSize(I)V

    .line 3028
    :cond_b
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getPositionOfLastElement()I

    move-result v1

    .line 3029
    if-gez v1, :cond_e

    move v3, p1

    .line 3036
    :goto_7
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 3038
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/library/reader/LineInformation;->setNextLineFirstElementIndex(I)V

    .line 3041
    :goto_8
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v8, :cond_c

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v4

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    if-gt v4, v1, :cond_c

    .line 3045
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 3047
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/library/reader/LineInformation;->setNextLineFirstElementIndex(I)V

    goto :goto_8

    .line 3051
    :cond_c
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1, v3, p2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->saveEndInformation(ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 3052
    if-nez v2, :cond_d

    move v1, v8

    :goto_9
    return v1

    :cond_d
    move v1, v10

    goto :goto_9

    :cond_e
    move v3, v1

    goto :goto_7

    :cond_f
    move v2, v1

    move v1, v5

    goto/16 :goto_3

    :cond_10
    move v2, v4

    move v1, v5

    goto/16 :goto_3

    :cond_11
    move v1, v4

    move v2, v5

    goto/16 :goto_6

    :cond_12
    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_1
.end method

.method public setExpressionSearcher(Lcom/mobipocket/common/parser/HyphenationHelper;)V
    .locals 0
    .parameter "expressionSearcher"

    .prologue
    .line 3095
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->hyphenationHelper:Lcom/mobipocket/common/parser/HyphenationHelper;

    .line 3097
    return-void
.end method

.method setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z
    .locals 6
    .parameter "style"

    .prologue
    .line 2792
    const/4 v2, 0x1

    .line 2796
    .local v2, ret:Z
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v3

    invoke-virtual {p1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getParagraphStyle()S

    move-result v4

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->contentInserted:Z

    if-eqz v3, :cond_1

    .line 2799
    const/4 v1, 0x1

    .line 2800
    .local v1, insertElement:Z
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2802
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .line 2803
    .local v0, be:Lcom/mobipocket/common/library/reader/BreakElement;
    iget v3, v0, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    if-eqz v3, :cond_0

    .line 2805
    const/4 v1, 0x0

    .line 2808
    .end local v0           #be:Lcom/mobipocket/common/library/reader/BreakElement;
    :cond_0
    if-eqz v1, :cond_1

    .line 2810
    new-instance v3, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getPositionOfLastElement()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-virtual {p0, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v2

    .line 2813
    .end local v1           #insertElement:Z
    :cond_1
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->currentStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 2814
    return v2
.end method

.method setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Ljava/util/Vector;)Z
    .locals 2
    .parameter "newPage"
    .parameter "pageBeginElement"

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1073
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    .line 1074
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjectsCachedActiveAreas:Ljava/util/Vector;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjectsCachedActiveAreas:Ljava/util/Vector;

    .line 1075
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->access$1400(Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    .line 1079
    invoke-direct {p0, p2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addFlowelementVector(Ljava/util/Vector;)Z

    move-result v0

    return v0
.end method
