.class Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;
.super Ljava/lang/Object;
.source "FrameConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/FrameConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfiniteMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/FrameConstructor;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBeginPosition(I)Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;
    .locals 14
    .parameter

    .prologue
    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getBeginPosition] Calculating the previous page Begin Position - current page BeginPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 728
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 731
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 732
    const/4 v2, 0x0

    .line 733
    const/4 v3, 0x0

    .line 734
    new-instance v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    invoke-direct {v4}, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;-><init>()V

    move v5, v2

    move v6, v1

    .line 735
    :goto_0
    if-nez v5, :cond_1

    if-ltz v6, :cond_1

    .line 737
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 738
    instance-of v2, v1, Lcom/mobipocket/common/library/reader/BreakElement;

    if-nez v2, :cond_0

    .line 740
    const/4 v2, 0x1

    .line 741
    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v5

    if-lez v5, :cond_24

    .line 743
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v7

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v5, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$602(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    move v1, v3

    .line 752
    :goto_1
    add-int/lit8 v3, v6, -0x1

    move v5, v2

    move v6, v3

    move v3, v1

    goto :goto_0

    .line 746
    :cond_0
    instance-of v2, v1, Lcom/mobipocket/common/library/reader/BreakElement;

    if-eqz v2, :cond_23

    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/BreakElement;

    move-object v2, v0

    iget v2, v2, Lcom/mobipocket/common/library/reader/BreakElement;->type:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_23

    .line 749
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v1

    invoke-static {v2, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$602(Lcom/mobipocket/common/library/reader/FrameConstructor;I)I

    .line 750
    const/4 v1, 0x1

    move v2, v5

    goto :goto_1

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$600(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$400(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$200(Lcom/mobipocket/common/library/reader/FrameConstructor;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 758
    if-gez v1, :cond_22

    .line 760
    const/4 v1, 0x0

    move v2, v1

    .line 762
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBeginPosition] Y position of the first line of the previous page should be:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 764
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 765
    if-gez v1, :cond_21

    .line 767
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v1

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 773
    const/4 v1, 0x0

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v1, v4

    .line 1054
    :goto_3
    return-object v1

    .line 778
    :cond_2
    const/4 v1, 0x0

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 780
    const/4 v1, 0x0

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v1, v4

    .line 781
    goto :goto_3

    .line 787
    :goto_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    if-lez v3, :cond_3

    .line 789
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_4

    .line 794
    :cond_3
    const/4 v5, 0x0

    .line 796
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v6, 0x1

    sub-int v6, v1, v6

    .line 798
    if-lez v3, :cond_4

    .line 799
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    const/4 v7, 0x1

    sub-int v7, v3, v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    :goto_5
    move v7, v1

    .line 804
    :goto_6
    if-gt v7, v6, :cond_20

    .line 806
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 808
    const/4 v1, 0x1

    .line 816
    :goto_7
    const/4 v5, 0x0

    .line 817
    if-nez v1, :cond_1f

    if-lez v3, :cond_1f

    .line 819
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 820
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v5

    add-int/2addr v1, v5

    .line 821
    add-int/lit8 v3, v3, -0x1

    .line 825
    :goto_8
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move v5, v3

    move v3, v1

    .line 828
    :goto_9
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v1

    if-lt v1, v2, :cond_6

    if-lez v5, :cond_6

    .line 830
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    .line 831
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v3

    add-int/2addr v1, v3

    .line 832
    add-int/lit8 v3, v5, -0x1

    .line 833
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move v5, v3

    move v3, v1

    goto :goto_9

    :cond_4
    move v1, v6

    .line 801
    goto :goto_5

    .line 804
    :cond_5
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_6

    .line 838
    :cond_6
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v6, 0x1

    sub-int v6, v1, v6

    .line 841
    if-lez v5, :cond_1e

    .line 844
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    const/4 v7, 0x1

    sub-int v7, v5, v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    move v7, v6

    move v6, v5

    move v5, v1

    .line 847
    :goto_a
    if-gt v5, v7, :cond_15

    .line 849
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 851
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/TableElement;

    .line 852
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableNumberOfLine()I

    move-result v8

    if-lez v8, :cond_14

    .line 854
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getAbsoluteTableBeginPosition()I

    move-result v8

    .line 855
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableFirstLineBeginningPosition()I

    move-result v9

    .line 856
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableLastLineClosingPosition()I

    move-result v10

    .line 857
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getBeginPosition] The previous line contains a table. Table absolute position:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Table first line beginning position:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Table last line closing position:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    if-lt p1, v8, :cond_8

    if-ge p1, v9, :cond_8

    .line 863
    if-lez v6, :cond_7

    .line 865
    add-int/lit8 v6, v6, -0x1

    .line 866
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v7, v1

    .line 869
    :goto_b
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v1

    if-lt v1, v8, :cond_7

    if-lez v6, :cond_7

    .line 871
    add-int/lit8 v6, v6, -0x1

    .line 872
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 874
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v7, v1

    goto :goto_b

    :cond_7
    move v1, v6

    move v6, v7

    .line 877
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getBeginPosition] The current page position is between the table absolute position and the table first element position. The previous line is regular, index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 847
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    move v6, v1

    goto/16 :goto_a

    .line 880
    :cond_8
    if-lt p1, v9, :cond_12

    .line 884
    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/TableElement;->getLineIndexFromPosition(I)I

    move-result v9

    .line 885
    if-gtz v9, :cond_9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_10

    .line 891
    :cond_9
    if-lez v9, :cond_a

    .line 893
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getHeight()I

    move-result v7

    invoke-virtual {v1, v9}, Lcom/mobipocket/common/library/reader/TableElement;->getLineYPosition(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 900
    :goto_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getBeginPosition] A part of the table is already displayed. The first line displayed on the current page:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "  the corresponding offset:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableNumberOfLine()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    .line 903
    :goto_e
    if-ltz v8, :cond_b

    invoke-virtual {v1, v8}, Lcom/mobipocket/common/library/reader/TableElement;->getLineRelativeYPosition(I)I

    move-result v10

    add-int/2addr v10, v7

    sub-int/2addr v10, v3

    if-lt v10, v2, :cond_b

    .line 905
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 897
    :cond_a
    const/4 v7, 0x0

    goto :goto_d

    .line 909
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 913
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableNumberOfLine()I

    move-result v10

    if-ne v8, v10, :cond_c

    .line 915
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableNumberOfLine()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    .line 922
    :cond_c
    if-ne v8, v9, :cond_d

    .line 924
    add-int/lit8 v8, v8, -0x1

    .line 928
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getBeginPosition] A part of the table is already displayed. Index of the first line of the table on the previous page:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 930
    const/4 v9, -0x1

    .line 931
    const/4 v10, 0x0

    .line 932
    const/4 v11, -0x1

    if-le v8, v11, :cond_1d

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getTableNumberOfLine()I

    move-result v11

    if-ge v8, v11, :cond_1d

    .line 934
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/library/reader/TableElement;->getLineBeginPosition(I)I

    move-result v9

    .line 937
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/library/reader/TableElement;->isLineSpanOnNextPage(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 938
    invoke-virtual {v1, v8}, Lcom/mobipocket/common/library/reader/TableElement;->getLineHeight(I)I

    move-result v1

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v8, v8, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v8

    sub-int/2addr v1, v8

    add-int/2addr v1, v3

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v8

    add-int/2addr v1, v8

    .line 940
    :goto_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getBeginPosition] A part of the table is already displayed. Previous page position:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v8, v9

    .line 943
    :goto_10
    if-lez v8, :cond_e

    .line 945
    iput v8, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 946
    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v1, v4

    .line 947
    goto/16 :goto_3

    .line 951
    :cond_e
    :goto_11
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v1

    add-int/2addr v1, v7

    if-lt v1, v2, :cond_f

    if-lez v6, :cond_f

    .line 955
    add-int/lit8 v1, v6, -0x1

    .line 956
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move v6, v1

    goto :goto_11

    .line 958
    :cond_f
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v13, v6

    move v6, v1

    move v1, v13

    .line 960
    goto/16 :goto_c

    .line 965
    :cond_10
    if-lez v6, :cond_11

    .line 967
    add-int/lit8 v6, v6, -0x1

    .line 968
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v7, v1

    .line 971
    :goto_12
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v1

    if-lt v1, v8, :cond_11

    if-lez v6, :cond_11

    .line 973
    add-int/lit8 v6, v6, -0x1

    .line 974
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 976
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v7, v1

    goto :goto_12

    :cond_11
    move v1, v6

    move v6, v7

    .line 979
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getBeginPosition] A part of the table is already displayed and the first table line is the first line of the page. Previous page first line is a regular one index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 987
    :cond_12
    :goto_13
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v1

    if-lt v1, v8, :cond_13

    if-lez v6, :cond_13

    .line 989
    add-int/lit8 v6, v6, -0x1

    .line 990
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v7, v1

    goto :goto_13

    .line 994
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getBeginPosition] The bottom of the table is already displayed. Previous page first line is a regular one index:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    move v1, v6

    move v6, v7

    goto/16 :goto_c

    :cond_15
    move v1, v6

    move v3, v7

    .line 1004
    :goto_14
    if-nez v1, :cond_1b

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 1006
    const/4 v5, 0x1

    .line 1007
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/LineInformation;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/LineInformation;->getNextLineFirstElementIndex()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v13, v6

    move v6, v5

    move v5, v13

    :goto_15
    if-ltz v5, :cond_17

    .line 1009
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v7

    if-ge v7, v2, :cond_16

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v7

    if-nez v7, :cond_16

    .line 1012
    const/4 v6, 0x0

    .line 1007
    :cond_16
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    .line 1015
    :cond_17
    if-eqz v6, :cond_1b

    .line 1017
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v1

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 1018
    const/4 v1, 0x0

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v1, v4

    .line 1019
    goto/16 :goto_3

    .line 1025
    :goto_16
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isActiveAreaElement()Z

    move-result v3

    if-eqz v3, :cond_18

    if-lez v2, :cond_18

    .line 1027
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1034
    :cond_18
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v3

    .line 1036
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_19

    .line 1039
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v5

    move v13, v3

    move v3, v2

    move v2, v13

    .line 1044
    :goto_17
    if-lez v3, :cond_1a

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v6

    if-eqz v6, :cond_1a

    if-ne v2, v5, :cond_1a

    .line 1046
    add-int/lit8 v2, v3, -0x1

    .line 1047
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v3

    move v13, v3

    move v3, v2

    move v2, v13

    goto :goto_17

    :cond_19
    move v13, v3

    move v3, v2

    move v2, v13

    .line 1051
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getBeginPosition] The Previous page first line is a regular line. Line found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", the previous page position:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " and the element index:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1052
    iput v2, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    .line 1053
    const/4 v1, 0x0

    iput v1, v4, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v1, v4

    .line 1054
    goto/16 :goto_3

    :cond_1b
    move v2, v3

    goto/16 :goto_16

    :cond_1c
    move v1, v10

    goto/16 :goto_f

    :cond_1d
    move v1, v10

    move v8, v9

    goto/16 :goto_10

    :cond_1e
    move v1, v5

    move v3, v6

    goto/16 :goto_14

    :cond_1f
    move v1, v5

    goto/16 :goto_8

    :cond_20
    move v1, v5

    goto/16 :goto_7

    :cond_21
    move v3, v1

    goto/16 :goto_4

    :cond_22
    move v2, v1

    goto/16 :goto_2

    :cond_23
    move v1, v3

    move v2, v5

    goto/16 :goto_1

    :cond_24
    move v1, v3

    goto/16 :goto_1
.end method

.method isInfiniteModeActivated()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$1300(Lcom/mobipocket/common/library/reader/FrameConstructor;)Z

    move-result v0

    return v0
.end method

.method setInfiniteMode()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->this$0:Lcom/mobipocket/common/library/reader/FrameConstructor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->access$1302(Lcom/mobipocket/common/library/reader/FrameConstructor;Z)Z

    .line 707
    return-void
.end method
