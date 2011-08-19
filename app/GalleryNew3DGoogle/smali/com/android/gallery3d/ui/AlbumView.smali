.class public Lcom/android/gallery3d/ui/AlbumView;
.super Lcom/android/gallery3d/ui/SlotView;
.source "AlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumView$1;,
        Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumView$ModelListener;,
        Lcom/android/gallery3d/ui/AlbumView$Model;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mIsActive:Z

.field private mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mTinyImageSize:I

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;IIIII)V
    .locals 2
    .parameter "activity"
    .parameter "slotWidth"
    .parameter "slotHeight"
    .parameter "horizontalGap"
    .parameter "verticalGap"
    .parameter "tinyImageSize"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/SlotView;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    .line 39
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mIsActive:Z

    .line 57
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumView;->mSlotWidth:I

    .line 58
    iput p3, p0, Lcom/android/gallery3d/ui/AlbumView;->mSlotHeight:I

    .line 59
    iput p6, p0, Lcom/android/gallery3d/ui/AlbumView;->mTinyImageSize:I

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/ui/AlbumView;->setSlotSize(II)V

    .line 61
    invoke-virtual {p0, p4, p5}, Lcom/android/gallery3d/ui/AlbumView;->setSlotGaps(II)V

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/AlbumView;->updateVisibleRange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumView;ILcom/android/gallery3d/ui/DisplayItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/AlbumView;->putSlotContent(ILcom/android/gallery3d/ui/DisplayItem;)V

    return-void
.end method

.method private putSlotContent(ILcom/android/gallery3d/ui/DisplayItem;)V
    .locals 5
    .parameter "slotIndex"
    .parameter "item"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 95
    .local v1, rect:Landroid/graphics/Rect;
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>(FFF)V

    .line 97
    .local v0, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    invoke-virtual {p0, v0, v0, p2}, Lcom/android/gallery3d/ui/AlbumView;->putDisplayItem(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 98
    return-void
.end method

.method private updateVisibleRange(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 101
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    if-ne p2, v3, :cond_0

    .line 139
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mIsActive:Z

    if-nez v3, :cond_1

    .line 104
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .line 105
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    .line 106
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    goto :goto_0

    .line 110
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    if-ge p1, v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    if-lt v3, p2, :cond_5

    .line 111
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .local v0, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 112
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v1

    .line 113
    .local v1, item:Lcom/android/gallery3d/ui/DisplayItem;
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/AlbumView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 111
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v1           #item:Lcom/android/gallery3d/ui/DisplayItem;
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 116
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_b

    .line 117
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/gallery3d/ui/AlbumView;->putSlotContent(ILcom/android/gallery3d/ui/DisplayItem;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 120
    .end local v0           #i:I
    .end local v2           #n:I
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_7

    .line 121
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v1

    .line 122
    .restart local v1       #item:Lcom/android/gallery3d/ui/DisplayItem;
    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/AlbumView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 120
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 124
    .end local v1           #item:Lcom/android/gallery3d/ui/DisplayItem;
    :cond_7
    move v0, p2

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    .restart local v2       #n:I
    :goto_4
    if-ge v0, v2, :cond_9

    .line 125
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v1

    .line 126
    .restart local v1       #item:Lcom/android/gallery3d/ui/DisplayItem;
    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/AlbumView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 124
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 128
    .end local v1           #item:Lcom/android/gallery3d/ui/DisplayItem;
    :cond_9
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 129
    move v0, p1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    :goto_5
    if-ge v0, v2, :cond_a

    .line 130
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/gallery3d/ui/AlbumView;->putSlotContent(ILcom/android/gallery3d/ui/DisplayItem;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 132
    :cond_a
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    :goto_6
    if-ge v0, p2, :cond_b

    .line 133
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/gallery3d/ui/AlbumView;->putSlotContent(ILcom/android/gallery3d/ui/DisplayItem;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 137
    :cond_b
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .line 138
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected onLayoutChanged(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0, v0}, Lcom/android/gallery3d/ui/AlbumView;->updateVisibleRange(II)V

    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->updateVisibleRange(II)V

    .line 146
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->updateVisibleRange(II)V

    .line 152
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 189
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mIsActive:Z

    .line 190
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/AlbumView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 194
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionDrawer;->prepareDrawing()V

    .line 157
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 158
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 181
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mIsActive:Z

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 183
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/DisplayItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumView;->putSlotContent(ILcom/android/gallery3d/ui/DisplayItem;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public setFocusIndex(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setFocusIndex(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/AlbumView$Model;)V
    .locals 8
    .parameter "model"

    .prologue
    const/4 v7, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumView;->setSlotCount(I)Z

    .line 74
    iput-object v7, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/16 v3, 0x40

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumView;->mSlotWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumView;->mSlotHeight:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumView;->mTinyImageSize:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/AlbumView$Model;IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumView;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;

    invoke-direct {v1, p0, v7}, Lcom/android/gallery3d/ui/AlbumView$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumView;Lcom/android/gallery3d/ui/AlbumView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 82
    invoke-interface {p1}, Lcom/android/gallery3d/ui/AlbumView$Model;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumView;->setSlotCount(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->updateVisibleRange(II)V

    .line 85
    :cond_1
    return-void
.end method

.method public setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V
    .locals 1
    .parameter "drawer"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumView;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 68
    :cond_0
    return-void
.end method
