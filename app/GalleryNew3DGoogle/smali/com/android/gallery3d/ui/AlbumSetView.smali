.class public Lcom/android/gallery3d/ui/AlbumSetView;
.super Lcom/android/gallery3d/ui/SlotView;
.source "AlbumSetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetView$1;,
        Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;,
        Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;,
        Lcom/android/gallery3d/ui/AlbumSetView$ModelListener;,
        Lcom/android/gallery3d/ui/AlbumSetView$Model;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

.field private final mDisplayItemSize:I

.field private final mLabelFontSize:I

.field private final mLabelOffsetY:I

.field private mRandom:Ljava/util/Random;

.field private mSeed:J

.field private mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

.field private final mSlotWidth:I

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionDrawer;IIIIIII)V
    .locals 2
    .parameter "activity"
    .parameter "drawer"
    .parameter "slotWidth"
    .parameter "slotHeight"
    .parameter "horizontalGap"
    .parameter "verticalGap"
    .parameter "displayItemSize"
    .parameter "labelFontSize"
    .parameter "labelOffsetY"

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/SlotView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mRandom:Ljava/util/Random;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mSeed:J

    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/AlbumSetView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 74
    invoke-virtual {p0, p3, p4}, Lcom/android/gallery3d/ui/AlbumSetView;->setSlotSize(II)V

    .line 75
    invoke-virtual {p0, p5, p6}, Lcom/android/gallery3d/ui/AlbumSetView;->setSlotGaps(II)V

    .line 76
    iput p3, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mSlotWidth:I

    .line 77
    iput p7, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDisplayItemSize:I

    .line 78
    iput p8, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mLabelFontSize:I

    .line 79
    iput p9, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mLabelOffsetY:I

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetView;->updateVisibleRange(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSetView;ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetView;->freeSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetView;ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetView;->putSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    return-void
.end method

.method private freeSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V
    .locals 5
    .parameter "index"
    .parameter "entry"

    .prologue
    .line 141
    if-nez p2, :cond_0

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p2, Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    .local v0, arr$:[Lcom/android/gallery3d/ui/DisplayItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 143
    .local v2, item:Lcom/android/gallery3d/ui/DisplayItem;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v2           #item:Lcom/android/gallery3d/ui/DisplayItem;
    :cond_1
    iget-object v4, p2, Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;->labelItem:Lcom/android/gallery3d/ui/DisplayItem;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetView;->removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V

    goto :goto_0
.end method

.method private putSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V
    .locals 23
    .parameter "slotIndex"
    .parameter "entry"

    .prologue
    .line 107
    if-eqz p2, :cond_1

    const/16 v18, 0x1

    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 108
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/ui/AlbumSetView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v14

    .line 110
    .local v14, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;->covers:[Lcom/android/gallery3d/ui/DisplayItem;

    move-object v10, v0

    .line 111
    .local v10, items:[Lcom/android/gallery3d/ui/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetView;->mRandom:Ljava/util/Random;

    move-object/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/ui/AlbumSetView;->mSeed:J

    move-wide/from16 v21, v0

    xor-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/util/Random;->setSeed(J)V

    .line 113
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v16, v18, 0x2

    .line 114
    .local v16, x:I
    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v17, v18, 0x2

    .line 116
    .local v17, y:I
    new-instance v4, Lcom/android/gallery3d/ui/PositionRepository$Position;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v4

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>(FFF)V

    .line 120
    .local v4, basePosition:Lcom/android/gallery3d/ui/PositionRepository$Position;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/AlbumSetView;->mLabelOffsetY:I

    move/from16 v18, v0

    add-int v18, v18, v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;->labelItem:Lcom/android/gallery3d/ui/DisplayItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/ui/DisplayItem;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v11, v18, v19

    .line 121
    .local v11, labelY:I
    new-instance v13, Lcom/android/gallery3d/ui/PositionRepository$Position;

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>(FFF)V

    .line 122
    .local v13, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;->labelItem:Lcom/android/gallery3d/ui/DisplayItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v13

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetView;->putDisplayItem(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 124
    const/4 v8, 0x0

    .local v8, i:I
    array-length v12, v10

    .local v12, n:I
    :goto_1
    if-ge v8, v12, :cond_2

    .line 125
    aget-object v9, v10, v8

    .line 126
    .local v9, item:Lcom/android/gallery3d/ui/DisplayItem;
    const/4 v5, 0x0

    .line 127
    .local v5, dx:F
    const/4 v6, 0x0

    .line 128
    .local v6, dy:F
    const/4 v7, 0x0

    .line 129
    .local v7, dz:F
    const/4 v15, 0x0

    .line 130
    .local v15, theta:F
    if-eqz v8, :cond_0

    .line 131
    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x420c

    mul-float v7, v18, v19

    .line 133
    :cond_0
    new-instance v13, Lcom/android/gallery3d/ui/PositionRepository$Position;

    .end local v13           #position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v6

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>(FFF)V

    .line 134
    .restart local v13       #position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    iput v15, v13, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    .line 135
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v4

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetView;->putDisplayItem(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/DisplayItem;)V

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 107
    .end local v4           #basePosition:Lcom/android/gallery3d/ui/PositionRepository$Position;
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v7           #dz:F
    .end local v8           #i:I
    .end local v9           #item:Lcom/android/gallery3d/ui/DisplayItem;
    .end local v10           #items:[Lcom/android/gallery3d/ui/DisplayItem;
    .end local v11           #labelY:I
    .end local v12           #n:I
    .end local v13           #position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    .end local v14           #rect:Landroid/graphics/Rect;
    .end local v15           #theta:F
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 138
    .restart local v4       #basePosition:Lcom/android/gallery3d/ui/PositionRepository$Position;
    .restart local v8       #i:I
    .restart local v10       #items:[Lcom/android/gallery3d/ui/DisplayItem;
    .restart local v11       #labelY:I
    .restart local v12       #n:I
    .restart local v13       #position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    .restart local v14       #rect:Landroid/graphics/Rect;
    .restart local v16       #x:I
    .restart local v17       #y:I
    :cond_2
    return-void
.end method

.method private updateVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 165
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    if-ne p2, v2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 166
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    if-lt v2, p2, :cond_3

    .line 167
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->freeSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 171
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 172
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->putSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 176
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->freeSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 178
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 179
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->freeSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 181
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 182
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 183
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->putSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 185
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 186
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->putSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 189
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    .line 190
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onLayoutChanged(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, v0}, Lcom/android/gallery3d/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 155
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 156
    return-void
.end method

.method public onScrollPositionChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 162
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 222
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->freeSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 226
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionDrawer;->prepareDrawing()V

    .line 198
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 199
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 230
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->putSlotContent(ILcom/android/gallery3d/ui/AlbumSetView$AlbumSetItem;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/AlbumSetView$Model;)V
    .locals 9
    .parameter "model"

    .prologue
    const/4 v8, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetView;->setSlotCount(I)Z

    .line 93
    iput-object v8, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mSlotWidth:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDisplayItemSize:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mLabelFontSize:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    const/16 v7, 0x20

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;IIILcom/android/gallery3d/ui/SelectionDrawer;Lcom/android/gallery3d/ui/AlbumSetView$Model;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;

    invoke-direct {v1, p0, v8}, Lcom/android/gallery3d/ui/AlbumSetView$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetView;Lcom/android/gallery3d/ui/AlbumSetView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetView;->setSlotCount(I)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetView;->getVisibleEnd()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->updateVisibleRange(II)V

    .line 103
    :cond_1
    return-void
.end method

.method public setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V
    .locals 1
    .parameter "drawer"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mSelectionDrawer:Lcom/android/gallery3d/ui/SelectionDrawer;

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetView;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 87
    :cond_0
    return-void
.end method
