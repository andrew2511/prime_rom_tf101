.class Landroid/widget/TextView$PastePopupMenu;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePopupMenu"
.end annotation


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private final mPasteViewLayouts:[I

.field private final mPasteViews:[Landroid/view/View;

.field private mPositionX:I

.field private mPositionY:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 8515
    iput-object p1, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8510
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    .line 8511
    new-array v0, v1, [I

    iget-object v1, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextEditPasteWindowLayout:I
    invoke-static {v1}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextEditNoPasteWindowLayout:I
    invoke-static {v1}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextEditSidePasteWindowLayout:I
    invoke-static {v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextEditSideNoPasteWindowLayout:I
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mPasteViewLayouts:[I

    .line 8516
    new-instance v0, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    .line 8518
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 8519
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 8520
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 8522
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8523
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8524
    return-void
.end method

.method private updateContent(Z)V
    .registers 11
    .parameter "onTop"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 8531
    invoke-direct {p0, p1}, Landroid/widget/TextView$PastePopupMenu;->viewIndex(Z)I

    move-result v4

    .line 8532
    .local v4, viewIndex:I
    iget-object v5, p0, Landroid/widget/TextView$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aget-object v3, v5, v4

    .line 8534
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_45

    .line 8535
    iget-object v5, p0, Landroid/widget/TextView$PastePopupMenu;->mPasteViewLayouts:[I

    aget v1, v5, v4

    .line 8536
    .local v1, layout:I
    iget-object v5, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 8538
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_25

    .line 8539
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 8542
    :cond_25
    if-nez v3, :cond_2f

    .line 8543
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to inflate TextEdit paste window"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 8546
    :cond_2f
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 8547
    .local v2, size:I
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8549
    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 8551
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8553
    iget-object v5, p0, Landroid/widget/TextView$PastePopupMenu;->mPasteViews:[Landroid/view/View;

    aput-object v3, v5, v4

    .line 8556
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:I
    .end local v2           #size:I
    :cond_45
    iget-object v5, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8557
    return-void
.end method

.method private viewIndex(Z)I
    .registers 5
    .parameter "onTop"

    .prologue
    const/4 v2, 0x0

    .line 8527
    if-eqz p1, :cond_f

    move v0, v2

    :goto_4
    iget-object v1, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_4

    :cond_11
    const/4 v1, 0x1

    goto :goto_d
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 8565
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8566
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 8569
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 8574
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canPaste()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8575
    iget-object v0, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    #calls: Landroid/widget/TextView;->paste(II)V
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;II)V

    .line 8577
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView$PastePopupMenu;->hide()V

    .line 8578
    return-void
.end method

.method positionAtCursor()V
    .registers 22

    .prologue
    .line 8581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 8582
    .local v3, contentView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 8583
    .local v15, width:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 8584
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 8585
    .local v12, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 8586
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 8587
    .local v11, lineTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v13

    .line 8589
    .local v13, primaryHorizontal:F
    invoke-static {}, Landroid/widget/TextView;->access$3400()Landroid/graphics/Rect;

    move-result-object v2

    .line 8590
    .local v2, bounds:Landroid/graphics/Rect;
    move v0, v15

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v16, v13, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 8591
    sub-int v16, v11, v7

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 8593
    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v16, v16, v15

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 8594
    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v16, v16, v7

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 8596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v2

    #calls: Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;Landroid/graphics/Rect;)V

    .line 8598
    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$PastePopupMenu;->mPositionX:I

    .line 8599
    move-object v0, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$PastePopupMenu;->mPositionY:I

    .line 8602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    move-object v4, v0

    .line 8603
    .local v4, coords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 8604
    const/16 v16, 0x0

    aget v17, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$PastePopupMenu;->mPositionX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v4, v16

    .line 8605
    const/16 v16, 0x1

    aget v17, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$PastePopupMenu;->mPositionY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v4, v16

    .line 8607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 8608
    .local v14, screenWidth:I
    const/16 v16, 0x1

    aget v16, v4, v16

    if-gez v16, :cond_1a7

    .line 8609
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/TextView$PastePopupMenu;->updateContent(Z)V

    .line 8611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 8612
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 8613
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 8617
    const/16 v16, 0x1

    aget v17, v4, v16

    add-int v17, v17, v7

    aput v17, v4, v16

    .line 8618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    .line 8619
    .local v9, lineBottom:I
    sub-int v10, v9, v11

    .line 8620
    .local v10, lineHeight:I
    const/16 v16, 0x1

    aget v17, v4, v16

    add-int v17, v17, v10

    aput v17, v4, v16

    .line 8623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v16, v0

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8624
    .local v5, handle:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    div-int/lit8 v6, v16, 0x2

    .line 8626
    .local v6, handleHalfWidth:I
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v13

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_19a

    .line 8627
    const/16 v16, 0x0

    aget v17, v4, v16

    div-int/lit8 v18, v15, 0x2

    add-int v18, v18, v6

    add-int v17, v17, v18

    aput v17, v4, v16

    .line 8637
    .end local v5           #handle:Landroid/graphics/drawable/Drawable;
    .end local v6           #handleHalfWidth:I
    .end local v9           #lineBottom:I
    .end local v10           #lineHeight:I
    :goto_180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$PastePopupMenu;->this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget v19, v4, v19

    const/16 v20, 0x1

    aget v20, v4, v20

    invoke-virtual/range {v16 .. v20}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8638
    return-void

    .line 8629
    .restart local v5       #handle:Landroid/graphics/drawable/Drawable;
    .restart local v6       #handleHalfWidth:I
    .restart local v9       #lineBottom:I
    .restart local v10       #lineHeight:I
    :cond_19a
    const/16 v16, 0x0

    aget v17, v4, v16

    div-int/lit8 v18, v15, 0x2

    add-int v18, v18, v6

    sub-int v17, v17, v18

    aput v17, v4, v16

    goto :goto_180

    .line 8633
    .end local v5           #handle:Landroid/graphics/drawable/Drawable;
    .end local v6           #handleHalfWidth:I
    .end local v9           #lineBottom:I
    .end local v10           #lineHeight:I
    :cond_1a7
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, v4, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v4, v16

    .line 8634
    const/16 v16, 0x0

    sub-int v17, v14, v15

    const/16 v18, 0x0

    aget v18, v4, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    aput v17, v4, v16

    goto :goto_180
.end method

.method public show()V
    .registers 2

    .prologue
    .line 8560
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView$PastePopupMenu;->updateContent(Z)V

    .line 8561
    invoke-virtual {p0}, Landroid/widget/TextView$PastePopupMenu;->positionAtCursor()V

    .line 8562
    return-void
.end method
