.class public Lcom/google/android/apps/books/widget/ScrubBar;
.super Landroid/widget/FrameLayout;
.source "ScrubBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;,
        Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
    }
.end annotation


# static fields
.field private static final ENABLE_GROUP_SNAPPING:Z = false

.field private static final TAG:Ljava/lang/String; = "ScrubBar"


# instance fields
.field private mCalloutArrowView:Landroid/widget/ImageView;

.field private mCalloutView:Landroid/widget/TextView;

.field private mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;"
        }
    .end annotation
.end field

.field private mItemPosition:I

.field private mKnobView:Landroid/widget/ImageView;

.field private mLastStartItem:I

.field private mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

.field private mScrubbing:Z

.field private mSummaryView:Landroid/widget/TextView;

.field private mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

.field private mUndoClick:Landroid/view/View$OnClickListener;

.field private mUndoItem:I

.field private mUndoTargetView:Landroid/view/View;

.field private mUndoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/books/widget/ScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/books/widget/ScrubBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    .line 90
    iput v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    .line 91
    iput v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastStartItem:I

    .line 92
    iput v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    .line 385
    new-instance v0, Lcom/google/android/apps/books/widget/ScrubBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/widget/ScrubBar$1;-><init>(Lcom/google/android/apps/books/widget/ScrubBar;)V

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoClick:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/widget/ScrubBar;)Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    return-object v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 383
    return-void
.end method

.method private dispatchScrub(ZZ)V
    .locals 2
    .parameter "activeScrub"
    .parameter "fromUser"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    iget v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;->onScrub(Lcom/google/android/apps/books/widget/ScrubBar;IZZ)V

    .line 183
    :cond_0
    return-void
.end method

.method private layoutChild(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 267
    .local v1, width:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 268
    .local v0, height:I
    add-int v2, p2, v1

    add-int v3, p3, v0

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 269
    return-void
.end method

.method private setPosition(IZZ)V
    .locals 4
    .parameter "itemIndex"
    .parameter "activeScrub"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v3, v1}, Lcom/google/android/apps/books/util/MathUtils;->constrain(III)I

    move-result p1

    .line 165
    iput p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v2, v0, p1, v3}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getCalloutLabel(Landroid/content/res/Resources;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mSummaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v2, v0, p1}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getSummaryLabel(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/widget/ScrubBar;->dispatchScrub(ZZ)V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    goto :goto_0
.end method

.method private snapIndex(I)I
    .locals 9
    .parameter "itemIndex"

    .prologue
    const/4 v8, 0x4

    .line 360
    iget-object v5, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v5, :cond_0

    move v5, p1

    .line 378
    :goto_0
    return v5

    .line 362
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v5}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getGroupCount()I

    move-result v2

    .line 364
    .local v2, groupCount:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v5, p1}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getGroupForItem(I)I

    move-result v0

    .line 365
    .local v0, currentGroup:I
    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sub-int v7, v2, v7

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/books/util/MathUtils;->constrain(III)I

    move-result v3

    .line 367
    .local v3, nextGroup:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v5, v0}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemForGroup(I)I

    move-result v1

    .line 368
    .local v1, currentStart:I
    iget-object v5, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v5, v3}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemForGroup(I)I

    move-result v4

    .line 371
    .local v4, nextStart:I
    sub-int v5, v1, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v8, :cond_1

    move v5, v1

    .line 372
    goto :goto_0

    .line 374
    :cond_1
    sub-int v5, v4, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v8, :cond_2

    move v5, v4

    .line 375
    goto :goto_0

    :cond_2
    move v5, p1

    .line 378
    goto :goto_0
.end method

.method private startScrub()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 315
    iput-boolean v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    .line 316
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastStartItem:I

    .line 318
    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/widget/ScrubBar;->setPressed(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 343
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v7}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getLeft()I

    move-result v2

    .line 344
    .local v2, left:I
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v7}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getWidth()I

    move-result v6

    .line 346
    .local v6, width:I
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v7, :cond_0

    move v4, v9

    .line 349
    .local v4, totalItems:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    sub-float/2addr v7, v8

    int-to-float v8, v4

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    float-to-int v1, v7

    .line 350
    .local v1, itemIndex:I
    sub-int v7, v4, v9

    invoke-static {v1, v10, v7}, Lcom/google/android/apps/books/util/MathUtils;->constrain(III)I

    move-result v5

    .line 352
    .local v5, validIndex:I
    move v3, v5

    .line 354
    .local v3, snapIndex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v9, :cond_1

    move v0, v9

    .line 356
    .local v0, activeScrub:Z
    :goto_1
    invoke-direct {p0, v3, v0, v9}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(IZZ)V

    .line 357
    return-void

    .line 346
    .end local v0           #activeScrub:Z
    .end local v1           #itemIndex:I
    .end local v3           #snapIndex:I
    .end local v4           #totalItems:I
    .end local v5           #validIndex:I
    :cond_0
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v7}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v7

    move v4, v7

    goto :goto_0

    .restart local v1       #itemIndex:I
    .restart local v3       #snapIndex:I
    .restart local v4       #totalItems:I
    .restart local v5       #validIndex:I
    :cond_1
    move v0, v10

    .line 354
    goto :goto_1
.end method


# virtual methods
.method public clearUndoPosition()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    .line 154
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 113
    const v0, 0x7f0e003a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/ScrubTrackView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    .line 114
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mSummaryView:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutView:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutArrowView:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mKnobView:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoView:Landroid/view/View;

    .line 122
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoTargetView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 41
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    move-object/from16 v25, v0

    .line 189
    .local v25, track:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mSummaryView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    .line 191
    .local v22, summary:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mKnobView:Landroid/widget/ImageView;

    move-object v15, v0

    .line 192
    .local v15, knob:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutView:Landroid/widget/TextView;

    move-object v5, v0

    .line 193
    .local v5, callout:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutArrowView:Landroid/widget/ImageView;

    move-object v6, v0

    .line 195
    .local v6, calloutArrow:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoView:Landroid/view/View;

    move-object/from16 v31, v0

    .line 196
    .local v31, undo:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoTargetView:Landroid/view/View;

    move-object/from16 v34, v0

    .line 198
    .local v34, undoTarget:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 200
    .local v28, trackParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getMeasuredWidth()I

    move-result v20

    .line 201
    .local v20, parentRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/widget/ScrubBar;->getMeasuredHeight()I

    move-result v19

    .line 203
    .local v19, parentBottom:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    sub-int v14, v19, v39

    .line 206
    .local v14, innerTop:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v39, v0

    add-int/lit8 v27, v39, 0x0

    .line 207
    .local v27, trackLeft:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    sub-int v39, v20, v39

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    sub-int v29, v39, v40

    .line 208
    .local v29, trackRight:I
    sub-int v30, v29, v27

    .line 209
    .local v30, trackWidth:I
    move-object/from16 v0, v25

    move/from16 v1, v27

    move v2, v14

    move/from16 v3, v29

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 212
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    sub-int v23, v20, v39

    .line 213
    .local v23, summaryLeft:I
    move-object/from16 v0, v22

    move/from16 v1, v23

    move v2, v14

    move/from16 v3, v20

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    move-object/from16 v39, v0

    if-nez v39, :cond_0

    const/16 v39, 0x1

    :goto_0
    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 218
    .local v24, totalItems:I
    move/from16 v17, v14

    .line 219
    .local v17, knobTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mItemPosition:I

    move/from16 v39, v0

    mul-int v39, v39, v30

    div-int v39, v39, v24

    add-int v16, v27, v39

    .line 220
    .local v16, knobLeft:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    sub-int v39, v39, v40

    div-int/lit8 v39, v39, 0x2

    add-int v17, v17, v39

    .line 221
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    sub-int v16, v16, v39

    .line 223
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 226
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    add-int v11, v16, v39

    .line 229
    .local v11, exactHoriz:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    div-int/lit8 v12, v39, 0x2

    .line 230
    .local v12, halfCallout:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    .line 232
    .local v13, horizMargin:I
    add-int v18, v12, v13

    .line 233
    .local v18, leftBound:I
    sub-int v39, v20, v12

    sub-int v21, v39, v13

    .line 235
    .local v21, rightBound:I
    const/4 v10, 0x0

    .line 236
    .local v10, calloutTop:I
    move v0, v11

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/MathUtils;->constrain(III)I

    move-result v39

    sub-int v9, v39, v12

    .line 238
    .local v9, calloutLeft:I
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v9

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 240
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    sub-int v8, v39, v40

    .line 241
    .local v8, calloutArrowTop:I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    sub-int v7, v11, v39

    .line 243
    .local v7, calloutArrowLeft:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 246
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    add-int v26, v14, v39

    .line 247
    .local v26, trackCenterTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    move/from16 v39, v0

    mul-int v39, v39, v30

    div-int v39, v39, v24

    add-int v32, v27, v39

    .line 250
    .local v32, undoExactLeft:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    sub-int v36, v26, v39

    .line 251
    .local v36, undoTargetTop:I
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    sub-int v35, v32, v39

    .line 252
    .local v35, undoTargetLeft:I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 255
    move/from16 v37, v26

    .line 256
    .local v37, undoTop:I
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    div-int/lit8 v39, v39, 0x2

    sub-int v33, v32, v39

    .line 257
    .local v33, undoLeft:I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->layoutChild(Landroid/view/View;II)V

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    move/from16 v39, v0

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    const/16 v39, 0x0

    move/from16 v38, v39

    .line 260
    .local v38, undoVisible:I
    :goto_1
    move-object/from16 v0, v31

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void

    .line 216
    .end local v7           #calloutArrowLeft:I
    .end local v8           #calloutArrowTop:I
    .end local v9           #calloutLeft:I
    .end local v10           #calloutTop:I
    .end local v11           #exactHoriz:I
    .end local v12           #halfCallout:I
    .end local v13           #horizMargin:I
    .end local v16           #knobLeft:I
    .end local v17           #knobTop:I
    .end local v18           #leftBound:I
    .end local v21           #rightBound:I
    .end local v24           #totalItems:I
    .end local v26           #trackCenterTop:I
    .end local v32           #undoExactLeft:I
    .end local v33           #undoLeft:I
    .end local v35           #undoTargetLeft:I
    .end local v36           #undoTargetTop:I
    .end local v37           #undoTop:I
    .end local v38           #undoVisible:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getItemCount()I

    move-result v39

    goto/16 :goto_0

    .line 259
    .restart local v7       #calloutArrowLeft:I
    .restart local v8       #calloutArrowTop:I
    .restart local v9       #calloutLeft:I
    .restart local v10       #calloutTop:I
    .restart local v11       #exactHoriz:I
    .restart local v12       #halfCallout:I
    .restart local v13       #horizMargin:I
    .restart local v16       #knobLeft:I
    .restart local v17       #knobTop:I
    .restart local v18       #leftBound:I
    .restart local v21       #rightBound:I
    .restart local v24       #totalItems:I
    .restart local v26       #trackCenterTop:I
    .restart local v32       #undoExactLeft:I
    .restart local v33       #undoLeft:I
    .restart local v35       #undoTargetLeft:I
    .restart local v36       #undoTargetTop:I
    .restart local v37       #undoTop:I
    :cond_1
    const/16 v39, 0x8

    move/from16 v38, v39

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return v3

    .line 275
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->startScrub()V

    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move v0, v3

    .line 282
    .local v0, validTouch:Z
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 284
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->stopScrub(Z)V

    .line 290
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 292
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->attemptClaimDrag()V

    goto :goto_0

    .end local v0           #validTouch:Z
    :cond_2
    move v0, v4

    .line 280
    goto :goto_1

    .line 285
    .restart local v0       #validTouch:Z
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->startScrub()V

    goto :goto_2

    .line 298
    .end local v0           #validTouch:Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    if-eqz v1, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/ScrubBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 300
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/widget/ScrubBar;->stopScrub(Z)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->stopScrub(Z)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnScrubListener(Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mListener:Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;

    .line 140
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "itemIndex"

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(IZZ)V

    .line 144
    return-void
.end method

.method public setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, index:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;,"Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex<**>;"
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/ScrubTrackView;->setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->requestLayout()V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mTrackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->invalidate()V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 136
    return-void
.end method

.method public setUndoPosition(I)V
    .locals 0
    .parameter "itemIndex"

    .prologue
    .line 147
    iput p1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mUndoItem:I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->requestLayout()V

    .line 149
    return-void
.end method

.method public stopScrub(Z)V
    .locals 4
    .parameter "cancel"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 326
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastStartItem:I

    if-eq v0, v1, :cond_0

    .line 328
    iget v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastStartItem:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V

    .line 331
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mScrubbing:Z

    .line 332
    iput v1, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mLastStartItem:I

    .line 334
    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/widget/ScrubBar;->setPressed(Z)V

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/books/widget/ScrubBar;->mCalloutArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 340
    return-void
.end method
