.class public Lcom/amazon/kcp/reader/ui/SelectionButtons;
.super Landroid/widget/FrameLayout;
.source "SelectionButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/SelectionButtons$6;,
        Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;
    }
.end annotation


# instance fields
.field private final bottomMarkerInsetPix:I

.field private buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private contentLeft:I

.field private contentTop:I

.field private desiredLocation:Landroid/graphics/Rect;

.field private firstLine:Landroid/graphics/Rect;

.field private lastLine:Landroid/graphics/Rect;

.field private markerBottom:Landroid/widget/ImageView;

.field private markerTop:Landroid/widget/ImageView;

.field private position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

.field private selectionAreaCallback:Lcom/amazon/foundation/ICallback;

.field private selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

.field private selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field private selectionStateCallback:Lcom/amazon/foundation/ICallback;

.field private targetArea:Landroid/graphics/Rect;

.field private final topMarkerInsetPix:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$1;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionStateCallback:Lcom/amazon/foundation/ICallback;

    .line 62
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$2;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionAreaCallback:Lcom/amazon/foundation/ICallback;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttons:Ljava/util/List;

    .line 121
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 122
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    .line 123
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    .line 124
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->onSelectionStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->onSelectionAreaChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/SelectionButtons;)Lcom/amazon/kcp/reader/ObjectSelectionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    return-object v0
.end method

.method private adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "layoutRect"
    .parameter "boundsRect"

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 687
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 690
    .local v0, height:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2

    .line 692
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 698
    :cond_0
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 701
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    .line 703
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 709
    :cond_1
    :goto_1
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 710
    return-void

    .line 694
    :cond_2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    .line 696
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 705
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_1

    .line 707
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method private layoutOnScreen(IIII)V
    .locals 9
    .parameter "width"
    .parameter "buttonHeight"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 606
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 607
    .local v1, layoutRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 613
    .local v3, windowRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p2

    iget v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_0

    .line 616
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 619
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 624
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p2

    iget v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 627
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 629
    .local v0, centerX:I
    sget-object v4, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Above:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    .line 667
    :goto_0
    div-int/lit8 v4, p1, 0x2

    sub-int v4, v0, v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 668
    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 671
    invoke-direct {p0, v1, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 673
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    .line 674
    return-void

    .line 632
    .end local v0           #centerX:I
    :cond_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p2

    iget v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_1

    .line 635
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 638
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 643
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p2

    iget v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 646
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 648
    .restart local v0       #centerX:I
    sget-object v4, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    goto :goto_0

    .line 653
    .end local v0           #centerX:I
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    div-int/lit8 v2, v4, 0x2

    .line 658
    .local v2, layoutTop:I
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 660
    .restart local v0       #centerX:I
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 661
    add-int v4, v2, p2

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 663
    sget-object v4, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    goto/16 :goto_0
.end method

.method private onSelectionAreaChanged()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->tryToSetSelectionArea(Ljava/util/Vector;)Z

    .line 574
    :cond_0
    return-void
.end method

.method private onSelectionStateChanged()V
    .locals 2

    .prologue
    .line 551
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-nez v1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    .line 558
    .local v0, state:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setVisibility(I)V

    goto :goto_0

    .line 564
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSelectedArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "firstLine"
    .parameter "lastLine"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 539
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    .line 540
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    .line 542
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->requestLayout()V

    .line 543
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryToSetSelectionArea(Ljava/util/Vector;)Z
    .locals 9
    .parameter "selectionRectangles"

    .prologue
    .line 587
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 589
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/system/drawing/Rectangle;

    .line 590
    .local v1, firstRectangle:Lcom/amazon/system/drawing/Rectangle;
    new-instance v0, Landroid/graphics/Rect;

    iget v4, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentTop:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentLeft:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v8, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentTop:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 594
    .local v0, firstLine:Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/system/drawing/Rectangle;

    .line 595
    .local v3, lastRectangle:Lcom/amazon/system/drawing/Rectangle;
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentLeft:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentTop:I

    add-int/2addr v5, v6

    iget v6, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentLeft:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v8, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentTop:I

    add-int/2addr v7, v8

    iget v8, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 599
    .local v2, lastLine:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setSelectedArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    .line 601
    .end local v0           #firstLine:Landroid/graphics/Rect;
    .end local v1           #firstRectangle:Lcom/amazon/system/drawing/Rectangle;
    .end local v2           #lastLine:Landroid/graphics/Rect;
    .end local v3           #lastRectangle:Lcom/amazon/system/drawing/Rectangle;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateButtons()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 460
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canPerformInDocumentSearch()Z

    move-result v2

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canSendTextToWebService()Z

    move-result v3

    .line 464
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isHighlightSelected()Z

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->isOnlyImageSelected()Z

    move-result v4

    .line 466
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canAnnotate()Z

    move-result v5

    .line 468
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v5, :cond_3

    move v6, v9

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 470
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    move v6, v9

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 471
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    move v0, v9

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 473
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    move v1, v9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v5, :cond_7

    if-eqz v4, :cond_7

    move v1, v9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 477
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 479
    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 480
    if-eqz v5, :cond_a

    if-nez v4, :cond_a

    .line 484
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    if-nez v2, :cond_0

    if-eqz v3, :cond_8

    :cond_0
    move v1, v6

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 486
    if-nez v2, :cond_1

    if-eqz v3, :cond_9

    :cond_1
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 493
    :goto_7
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 494
    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 495
    const v8, 0x7f0c000b

    invoke-virtual {p0, v8}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 497
    if-nez v5, :cond_e

    if-nez v4, :cond_e

    .line 499
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    if-eqz v2, :cond_b

    move v4, v6

    :goto_8
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 501
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 503
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    if-eqz v3, :cond_c

    move v0, v6

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 505
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 507
    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    if-eqz v3, :cond_d

    move v0, v6

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 509
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 518
    :cond_2
    :goto_b
    return-void

    :cond_3
    move v6, v10

    .line 468
    goto/16 :goto_0

    :cond_4
    move v6, v10

    .line 470
    goto/16 :goto_1

    :cond_5
    move v0, v10

    .line 471
    goto/16 :goto_2

    :cond_6
    move v1, v10

    .line 473
    goto/16 :goto_3

    :cond_7
    move v1, v10

    .line 474
    goto/16 :goto_4

    :cond_8
    move v1, v7

    .line 485
    goto :goto_5

    :cond_9
    move v1, v9

    .line 486
    goto :goto_6

    .line 490
    :cond_a
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    :cond_b
    move v4, v7

    .line 500
    goto :goto_8

    :cond_c
    move v0, v7

    .line 504
    goto :goto_9

    :cond_d
    move v0, v7

    .line 508
    goto :goto_a

    .line 513
    :cond_e
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 514
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    invoke-virtual {p0, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_b
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->hasSelectionOnScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->tryToSetSelectionArea(Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public layout()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not properly measured/laid out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->addNote()V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->addHighlight()V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->deleteHighlight()V

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0

    .line 216
    :pswitch_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->showImageZoom()V

    goto :goto_0

    .line 220
    :pswitch_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInDocument()V

    goto :goto_0

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInGoogle()V

    goto :goto_0

    .line 226
    :pswitch_7
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionController;->searchInWikipedia()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 243
    :cond_0
    const v1, 0x7f0b00ff

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 244
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$3;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 262
    :goto_1
    const v0, 0x7f0b0100

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 265
    const v1, 0x7f0b0101

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->canSendTextToWebService()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    new-instance v2, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$4;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 279
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons$5;-><init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 258
    :cond_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 291
    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 292
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 299
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 301
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    .line 302
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    .line 304
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 306
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 309
    instance-of v1, v2, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 311
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttons:Ljava/util/List;

    move-object v0, v2

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0c0007

    if-ne v1, v4, :cond_0

    .line 317
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 304
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 363
    if-eqz p1, :cond_3

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p5

    if-eq v0, v1, :cond_1

    .line 368
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Did not pass in the desired location from getDesiredLocation()"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 376
    :cond_1
    sget-object v18, Lcom/amazon/kcp/reader/ui/SelectionButtons$6;->$SwitchMap$com$amazon$kcp$reader$ui$SelectionButtons$Position:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 400
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "SelectionButtons not laid out correctly"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 379
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    sub-int v13, v18, p2

    .line 380
    .local v13, markerCenterX:I
    const/16 v16, 0x0

    .line 381
    .local v16, topOfButtons:I
    sub-int v18, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 382
    .local v17, topOfMarker:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    move-object v12, v0

    .line 404
    .local v12, marker:Landroid/view/View;
    :goto_0
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 405
    .local v14, markerLayout:Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v13, v18

    move/from16 v0, v18

    move-object v1, v14

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 406
    move/from16 v0, v17

    move-object v1, v14

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 407
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object v1, v14

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 408
    invoke-virtual {v12}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v18

    add-int v18, v18, v17

    move/from16 v0, v18

    move-object v1, v14

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 411
    new-instance v5, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    sub-int v20, p4, p2

    sub-int v21, p5, p3

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 412
    .local v5, boundsRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 414
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 417
    const/4 v15, 0x0

    .line 418
    .local v15, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttons:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 420
    .local v6, button:Landroid/widget/Button;
    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v18

    if-nez v18, :cond_2

    .line 422
    move v8, v15

    .line 423
    .local v8, buttonLeft:I
    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v18

    add-int v9, v8, v18

    .line 424
    .local v9, buttonRight:I
    move/from16 v10, v16

    .line 425
    .local v10, buttonTop:I
    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v18

    add-int v7, v16, v18

    .line 427
    .local v7, buttonBottom:I
    invoke-virtual {v6, v8, v10, v9, v7}, Landroid/widget/Button;->layout(IIII)V

    .line 430
    move v15, v9

    goto :goto_1

    .line 386
    .end local v5           #boundsRect:Landroid/graphics/Rect;
    .end local v6           #button:Landroid/widget/Button;
    .end local v7           #buttonBottom:I
    .end local v8           #buttonLeft:I
    .end local v9           #buttonRight:I
    .end local v10           #buttonTop:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #marker:Landroid/view/View;
    .end local v13           #markerCenterX:I
    .end local v14           #markerLayout:Landroid/graphics/Rect;
    .end local v15           #offset:I
    .end local v16           #topOfButtons:I
    .end local v17           #topOfMarker:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    sub-int v13, v18, p2

    .line 387
    .restart local v13       #markerCenterX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    .line 388
    .restart local v16       #topOfButtons:I
    const/16 v17, 0x0

    .line 389
    .restart local v17       #topOfMarker:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    move-object v12, v0

    .line 390
    .restart local v12       #marker:Landroid/view/View;
    goto/16 :goto_0

    .line 393
    .end local v12           #marker:Landroid/view/View;
    .end local v13           #markerCenterX:I
    .end local v16           #topOfButtons:I
    .end local v17           #topOfMarker:I
    :pswitch_2
    sub-int v18, p4, p2

    div-int/lit8 v13, v18, 0x2

    .line 394
    .restart local v13       #markerCenterX:I
    const/16 v16, 0x0

    .line 395
    .restart local v16       #topOfButtons:I
    sub-int v18, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 396
    .restart local v17       #topOfMarker:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    move-object v12, v0

    .line 397
    .restart local v12       #marker:Landroid/view/View;
    goto/16 :goto_0

    .line 434
    .end local v12           #marker:Landroid/view/View;
    .end local v13           #markerCenterX:I
    .end local v16           #topOfButtons:I
    .end local v17           #topOfMarker:I
    :cond_3
    return-void

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, -0x8000

    .line 326
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->updateButtons()V

    .line 329
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 330
    .local v4, maxWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 333
    .local v3, maxHeight:I
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v6, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 334
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v6, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 337
    const/4 v5, 0x0

    .line 338
    .local v5, width:I
    const/4 v1, 0x0

    .line 339
    .local v1, height:I
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->buttons:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 341
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 343
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/Button;->measure(II)V

    .line 345
    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 346
    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 347
    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v4, v6

    goto :goto_0

    .line 352
    .end local v0           #button:Landroid/widget/Button;
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-direct {p0, v5, v1, v6, v7}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->layoutOnScreen(IIII)V

    .line 355
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    sget-object v7, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    invoke-virtual {v6, v7}, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->bottomMarkerInsetPix:I

    sub-int/2addr v6, v7

    :goto_1
    add-int/2addr v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setMeasuredDimension(II)V

    .line 358
    return-void

    .line 355
    :cond_2
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->topMarkerInsetPix:I

    sub-int/2addr v6, v7

    goto :goto_1
.end method

.method public setObjectSelectionController(Lcom/amazon/kcp/reader/ObjectSelectionController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionController:Lcom/amazon/kcp/reader/ObjectSelectionController;

    .line 162
    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionStateCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionAreaCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionStateCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionAreaCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 152
    :cond_1
    return-void
.end method

.method public setSelectionContentOffset(II)V
    .locals 0
    .parameter "left"
    .parameter "top"

    .prologue
    .line 172
    iput p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentLeft:I

    .line 173
    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->contentTop:I

    .line 174
    return-void
.end method
