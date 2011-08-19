.class Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TableViewPort"
.end annotation


# instance fields
.field private pCurrentViewPortX:I

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2739
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->pCurrentViewPortX:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 2743
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->pCurrentViewPortX:I

    .line 2745
    return-void
.end method

.method public setViewPortForTable(I)Lcom/mobipocket/common/library/reader/TableElement;
    .locals 7
    .parameter "x"

    .prologue
    .line 2750
    const/4 v3, 0x0

    .line 2752
    .local v3, retTableElt:Lcom/mobipocket/common/library/reader/TableElement;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2757
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 2761
    .local v1, elt:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2765
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v4, v0

    .line 2766
    .local v4, tableElt:Lcom/mobipocket/common/library/reader/TableElement;
    move-object v3, v4

    .line 2768
    neg-int v5, p1

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/library/reader/TableElement;->updateXDrawOffset(I)V

    .line 2752
    .end local v4           #tableElt:Lcom/mobipocket/common/library/reader/TableElement;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2772
    :cond_0
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v5

    iget v6, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->pCurrentViewPortX:I

    add-int/2addr v5, v6

    sub-int/2addr v5, p1

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/FlowElement;->setX(I)V

    goto :goto_1

    .line 2776
    .end local v1           #elt:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->reset()V

    .line 2777
    iget v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->pCurrentViewPortX:I

    if-eq p1, v5, :cond_2

    .line 2778
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->reset()V

    .line 2784
    :goto_2
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->pCurrentViewPortX:I

    .line 2785
    return-object v3

    .line 2781
    :cond_2
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setObjectPlacementAsDirty()V

    goto :goto_2
.end method
