.class Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectableObject"
.end annotation


# instance fields
.field private ownerDrawOffsetX:I

.field private ownerDrawOffsetY:I

.field private pBeginOffset:I

.field private pEndOffset:I

.field private pLineIndex:I

.field private pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field private pPageObjectsBeginIndex:I

.field private pPageObjectsEndIndex:I

.field private pVisible:Z

.field private renderedElement:Lcom/mobipocket/common/library/reader/IRenderedPageElement;

.field final synthetic this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;Lcom/mobipocket/common/library/reader/DisplayableFrame;IIIII)V
    .locals 0
    .parameter
    .parameter "owner"
    .parameter "wordBeginIndex"
    .parameter "wordEndIndex"
    .parameter "lineIndex"
    .parameter "beginOffset"
    .parameter "endOffset"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 568
    iput p3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    .line 569
    iput p4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    .line 570
    iput p5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pLineIndex:I

    .line 572
    iput p6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pBeginOffset:I

    .line 573
    iput p7, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pEndOffset:I

    .line 574
    return-void
.end method

.method static synthetic access$1000(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pVisible:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pVisible:Z

    return p1
.end method

.method static synthetic access$702(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pLineIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 538
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 538
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    return v0
.end method

.method private final distance(IIII)I
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 820
    sub-int v0, p1, p3

    .line 821
    .local v0, diffX:I
    sub-int v1, p2, p4

    .line 823
    .local v1, diffY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method

.method private inBounds(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 859
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, v1

    .line 871
    :goto_0
    return v0

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v0

    if-lt p1, v0, :cond_1

    move v0, v1

    .line 863
    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v0

    if-ge p2, v0, :cond_2

    move v0, v1

    .line 866
    goto :goto_0

    .line 868
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v0

    if-lt p2, v0, :cond_3

    move v0, v1

    .line 869
    goto :goto_0

    .line 871
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public computePlacement(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 578
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->ownerDrawOffsetX:I

    .line 579
    iput p2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->ownerDrawOffsetY:I

    .line 581
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 584
    const/4 v1, 0x0

    .line 586
    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_0

    .line 588
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v1

    .line 592
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isImageElement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    new-instance v2, Lcom/mobipocket/common/library/reader/PageElementImage;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    iget v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    invoke-static {v4, v5, v6, p1, p2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v4

    check-cast v0, Lcom/mobipocket/common/library/reader/ImageElement;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ImageElement;->getImageRecordIndex()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/mobipocket/common/library/reader/PageElementImage;-><init>(IILjava/util/Vector;I)V

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->renderedElement:Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    .line 617
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    new-instance v2, Lcom/mobipocket/common/library/reader/PageElementTable;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/mobipocket/common/library/reader/PageElementTable;-><init>(IILjava/util/Vector;)V

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->renderedElement:Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    goto :goto_0

    .line 609
    :cond_2
    new-instance v2, Lcom/mobipocket/common/library/reader/PageElementWord;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getCorrespondingRectangles(Ljava/util/Vector;IIII)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/mobipocket/common/library/reader/PageElementWord;-><init>(IILjava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->renderedElement:Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    goto :goto_0
.end method

.method public distance(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 831
    const v1, 0x7fffffff

    .line 832
    .local v1, minDistance:I
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->inBounds(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    const/4 v2, 0x0

    .line 852
    :goto_0
    return v2

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->distance(IIII)I

    move-result v0

    .line 837
    .local v0, distance:I
    if-ge v0, v1, :cond_1

    .line 838
    move v1, v0

    .line 840
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getTop()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->distance(IIII)I

    move-result v0

    .line 841
    if-ge v0, v1, :cond_2

    .line 842
    move v1, v0

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->distance(IIII)I

    move-result v0

    .line 845
    if-ge v0, v1, :cond_3

    .line 846
    move v1, v0

    .line 848
    :cond_3
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getBottom()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->distance(IIII)I

    move-result v0

    .line 849
    if-ge v0, v1, :cond_4

    .line 850
    move v1, v0

    :cond_4
    move v2, v1

    .line 852
    goto :goto_0
.end method

.method public final getBeginOffset()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pBeginOffset:I

    return v0
.end method

.method public final getBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 711
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 712
    .local v1, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v0, v3, v4

    .line 714
    .local v0, bottom:I
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    add-int/lit8 v2, v3, 0x1

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    if-gt v2, v3, :cond_1

    .line 716
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 718
    .restart local v1       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v0, :cond_0

    .line 720
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v0, v3, v4

    .line 714
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 724
    :cond_1
    return v0
.end method

.method public final getEndOffset()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pEndOffset:I

    return v0
.end method

.method public final getLeft()I
    .locals 5

    .prologue
    .line 636
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 637
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v3

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->ownerDrawOffsetX:I

    add-int v2, v3, v4

    .line 639
    .local v2, left:I
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    add-int/lit8 v1, v3, 0x1

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    if-gt v1, v3, :cond_1

    .line 641
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 643
    .restart local v0       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v2, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v2, v3, v4

    .line 639
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_1
    return v2
.end method

.method public final getLineIndex()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pLineIndex:I

    return v0
.end method

.method public final getOwner()Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    return-object v0
.end method

.method getOwnerDrawOffsetX()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->ownerDrawOffsetX:I

    return v0
.end method

.method getOwnerDrawOffsetY()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->ownerDrawOffsetY:I

    return v0
.end method

.method final getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->renderedElement:Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    return-object v0
.end method

.method public final getRight()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 661
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 662
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v3

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v2, v3, v4

    .line 664
    .local v2, right:I
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    add-int/lit8 v1, v3, 0x1

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    if-gt v1, v3, :cond_1

    .line 666
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 668
    .restart local v0       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v3

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 670
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v3

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v2, v3, v4

    .line 664
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_1
    return v2
.end method

.method public final getTop()I
    .locals 5

    .prologue
    .line 686
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 687
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v2, v3, v4

    .line 689
    .local v2, top:I
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    add-int/lit8 v1, v3, 0x1

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    if-gt v1, v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 693
    .restart local v0       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 695
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I

    move-result v4

    add-int v2, v3, v4

    .line 689
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_1
    return v2
.end method

.method public final getWordBeginIndex()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    return v0
.end method

.method public final getWordEndIndex()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    return v0
.end method

.method public final isImage()Z
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 812
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    instance-of v1, v0, Lcom/mobipocket/common/library/reader/ImageElement;

    return v1
.end method

.method public final isWord()Z
    .locals 4

    .prologue
    .line 801
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    iget v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 803
    .local v0, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 804
    .local v1, ret:Z
    :goto_0
    return v1

    .line 803
    .end local v1           #ret:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->toStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->isWord()Z

    .line 780
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 782
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsBeginIndex:I

    move v2, v0

    :goto_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pPageObjectsEndIndex:I

    if-gt v2, v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->pOwner:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 788
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isTextElement()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FlowElement;->isWordElement()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 794
    :cond_2
    return-object v1
.end method
