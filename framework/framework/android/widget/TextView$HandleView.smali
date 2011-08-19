.class Landroid/widget/TextView$HandleView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContainerPositionX:I

.field private mContainerPositionY:I

.field private final mController:Landroid/widget/TextView$CursorController;

.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHotspotX:F

.field private mIdealVerticalOffset:F

.field private mIsActive:Z

.field private mIsDragging:Z

.field private mIsInsertionHandle:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V
    .registers 9
    .parameter
    .parameter "controller"
    .parameter "pos"

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 8713
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 8714
    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$3900(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8661
    iput-boolean v4, p0, Landroid/widget/TextView$HandleView;->mIsActive:Z

    .line 8663
    iput-boolean v4, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    .line 8670
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    .line 8671
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    .line 8672
    iput v4, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 8673
    iput v4, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 8715
    iput-object p2, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    .line 8716
    new-instance v0, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$4000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 8718
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 8719
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 8720
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 8721
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8723
    invoke-direct {p0, p3}, Landroid/widget/TextView$HandleView;->setPosition(I)V

    .line 8724
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .registers 6
    .parameter "offset"

    .prologue
    .line 8681
    iget v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_d

    .line 8691
    :goto_c
    return-void

    .line 8687
    :cond_d
    iget v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 8688
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 8689
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 8690
    iget v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    goto :goto_c
.end method

.method private dismiss()V
    .registers 2

    .prologue
    .line 8796
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 8797
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8798
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hidePastePopupWindow()V

    .line 8799
    return-void
.end method

.method private filterOnTouchUp()V
    .registers 10

    .prologue
    .line 8694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 8695
    .local v3, now:J
    const/4 v0, 0x0

    .line 8696
    .local v0, i:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 8697
    .local v2, index:I
    iget v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8698
    .local v1, iMax:I
    :goto_e
    if-ge v0, v1, :cond_26

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_26

    .line 8699
    add-int/lit8 v0, v0, 0x1

    .line 8700
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_e

    .line 8703
    :cond_26
    if-lez v0, :cond_3f

    if-ge v0, v1, :cond_3f

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_3f

    .line 8705
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    iget-object v6, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    aget v6, v6, v2

    invoke-interface {v5, p0, v6}, Landroid/widget/TextView$CursorController;->updateOffset(Landroid/widget/TextView$HandleView;I)V

    .line 8707
    :cond_3f
    return-void
.end method

.method private isPositionVisible()Z
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 8816
    iget-boolean v10, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v10, :cond_8

    move v10, v13

    .line 8851
    :goto_7
    return v10

    .line 8820
    :cond_8
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v10

    if-eqz v10, :cond_12

    move v10, v12

    .line 8821
    goto :goto_7

    .line 8824
    :cond_12
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    .line 8825
    .local v5, extendedPaddingTop:I
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v4

    .line 8826
    .local v4, extendedPaddingBottom:I
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 8827
    .local v1, compoundPaddingLeft:I
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 8829
    .local v2, compoundPaddingRight:I
    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 8831
    .local v6, hostView:Landroid/widget/TextView;
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v10, v10, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v10, :cond_3b

    .line 8832
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v10, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 8834
    :cond_3b
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v10, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 8835
    .local v0, clip:Landroid/graphics/Rect;
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 8836
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 8837
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v2

    iput v10, v0, Landroid/graphics/Rect;->right:I

    .line 8838
    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v4

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 8840
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 8841
    .local v7, parent:Landroid/view/ViewParent;
    if-eqz v7, :cond_5e

    const/4 v10, 0x0

    invoke-interface {v7, v6, v0, v10}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v10

    if-nez v10, :cond_60

    :cond_5e
    move v10, v12

    .line 8842
    goto :goto_7

    .line 8845
    :cond_60
    iget-object v10, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v10, Landroid/widget/TextView;->mTempCoords:[I

    .line 8846
    .local v3, coords:[I
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 8847
    aget v10, v3, v12

    iget v11, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    float-to-int v11, v11

    add-int v8, v10, v11

    .line 8848
    .local v8, posX:I
    aget v10, v3, v13

    iget v11, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int v9, v10, v11

    .line 8851
    .local v9, posY:I
    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v13

    if-lt v8, v10, :cond_8d

    iget v10, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, 0x1

    if-gt v8, v10, :cond_8d

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_8d

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v10, :cond_8d

    move v10, v13

    goto/16 :goto_7

    :cond_8d
    move v10, v12

    goto/16 :goto_7
.end method

.method private moveTo(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8856
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mScrollX:I
    invoke-static {v0}, Landroid/widget/TextView;->access$4600(Landroid/widget/TextView;)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 8857
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mScrollY:I
    invoke-static {v0}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 8859
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_68

    .line 8860
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mTempCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 8861
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v3

    iget v1, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v4

    iget v1, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    if-eq v0, v1, :cond_65

    .line 8862
    :cond_37
    iget v0, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mTempCoords:[I

    aget v1, v1, v3

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 8863
    iget v0, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mTempCoords:[I

    aget v1, v1, v4

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 8864
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 8865
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mTempCoords:[I

    aget v0, v0, v4

    iput v0, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 8868
    :cond_65
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hidePastePopupWindow()V

    .line 8870
    :cond_68
    return-void
.end method

.method private setPosition(I)V
    .registers 8
    .parameter "pos"

    .prologue
    const/high16 v5, 0x4080

    .line 8728
    packed-switch p1, :pswitch_data_b4

    .line 8753
    :pswitch_5
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$4500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_22

    .line 8754
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #setter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$4502(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8757
    :cond_22
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$4500(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8758
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 8759
    .local v1, handleWidth:I
    int-to-float v2, v1

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    .line 8760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    .line 8765
    :goto_39
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 8766
    .local v0, handleHeight:I
    const v2, -0x41666666

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 8767
    const v2, 0x3f333333

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    .line 8769
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->invalidate()V

    .line 8770
    return-void

    .line 8730
    .end local v0           #handleHeight:I
    .end local v1           #handleWidth:I
    :pswitch_51
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_6e

    .line 8731
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleLeftRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$4200(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #setter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$4102(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8734
    :cond_6e
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8735
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 8736
    .restart local v1       #handleWidth:I
    int-to-float v2, v1

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    goto :goto_39

    .line 8741
    .end local v1           #handleWidth:I
    :pswitch_84
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$4300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_a1

    .line 8742
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRightRes:I
    invoke-static {v4}, Landroid/widget/TextView;->access$4400(Landroid/widget/TextView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #setter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v3}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8745
    :cond_a1
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$4300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8746
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 8747
    .restart local v1       #handleWidth:I
    int-to-float v2, v1

    div-float/2addr v2, v5

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    goto :goto_39

    .line 8728
    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_51
        :pswitch_5
        :pswitch_84
    .end packed-switch
.end method

.method private startTouchUpFilter(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 8676
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 8677
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 8678
    return-void
.end method

.method private updateContainerPosition()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8878
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    invoke-interface {v3, p0}, Landroid/widget/TextView$CursorController;->getCurrentOffset(Landroid/widget/TextView$HandleView;)I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/widget/TextView$CursorController;->updateOffset(Landroid/widget/TextView$HandleView;I)V

    .line 8879
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mTempCoords:[I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 8880
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mTempCoords:[I

    aget v2, v2, v4

    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int v0, v2, v3

    .line 8881
    .local v0, containerPositionX:I
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mTempCoords:[I

    aget v2, v2, v5

    iget v3, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int v1, v2, v3

    .line 8883
    .local v1, containerPositionY:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mContainerPositionX:I

    if-ne v0, v2, :cond_32

    iget v2, p0, Landroid/widget/TextView$HandleView;->mContainerPositionY:I

    if-eq v1, v2, :cond_38

    .line 8885
    :cond_32
    iput v0, p0, Landroid/widget/TextView$HandleView;->mContainerPositionX:I

    .line 8886
    iput v1, p0, Landroid/widget/TextView$HandleView;->mContainerPositionY:I

    move v2, v5

    .line 8889
    :goto_37
    return v2

    :cond_38
    move v2, v4

    goto :goto_37
.end method


# virtual methods
.method public hide()V
    .registers 3

    .prologue
    .line 8802
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    .line 8804
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/TextView$HandleView;->mIsActive:Z

    .line 8806
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8807
    .local v0, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8808
    return-void
.end method

.method hidePastePopupWindow()V
    .registers 2

    .prologue
    .line 9020
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    if-eqz v0, :cond_9

    .line 9021
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$PastePopupMenu;->hide()V

    .line 9023
    :cond_9
    return-void
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 8987
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 8811
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 8915
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8916
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8917
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8774
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    .line 8775
    return-void
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    .line 8893
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->updateContainerPosition()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8894
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->isPositionVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 8895
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mContainerPositionX:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mContainerPositionY:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v4, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v5, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 8898
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsActive:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 8899
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8908
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hidePastePopupWindow()V

    .line 8910
    :cond_2f
    const/4 v0, 0x1

    return v0

    .line 8902
    :cond_31
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8903
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    goto :goto_2c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    .line 8921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_ea

    .line 8983
    .end local p1
    :goto_7
    const/4 v11, 0x1

    return v11

    .line 8923
    .restart local p1
    :pswitch_9
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    invoke-interface {v11, p0}, Landroid/widget/TextView$CursorController;->getCurrentOffset(Landroid/widget/TextView$HandleView;)I

    move-result v11

    invoke-direct {p0, v11}, Landroid/widget/TextView$HandleView;->startTouchUpFilter(I)V

    .line 8924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iput v11, p0, Landroid/widget/TextView$HandleView;->mDownPositionX:F

    .line 8925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iput v11, p0, Landroid/widget/TextView$HandleView;->mDownPositionY:F

    .line 8926
    iget v11, p0, Landroid/widget/TextView$HandleView;->mDownPositionX:F

    iget v12, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 8927
    iget v11, p0, Landroid/widget/TextView$HandleView;->mDownPositionY:F

    iget v12, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 8929
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v0, v11, Landroid/widget/TextView;->mTempCoords:[I

    .line 8930
    .local v0, coords:[I
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 8931
    const/4 v11, 0x0

    aget v11, v0, v11

    iput v11, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 8932
    const/4 v11, 0x1

    aget v11, v0, v11

    iput v11, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 8933
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto :goto_7

    .line 8938
    .end local v0           #coords:[I
    :pswitch_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 8939
    .local v9, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 8942
    .local v10, rawY:F
    iget v11, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v12, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v8, v11, v12

    .line 8943
    .local v8, previousVerticalOffset:F
    iget v11, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v11, v11

    sub-float v11, v10, v11

    iget v12, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v1, v11, v12

    .line 8945
    .local v1, currentVerticalOffset:F
    iget v11, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    cmpg-float v11, v8, v11

    if-gez v11, :cond_93

    .line 8946
    iget v11, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 8947
    .local v7, newVerticalOffset:F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 8952
    :goto_6e
    iget v11, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v11, v11

    add-float/2addr v11, v7

    iput v11, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 8954
    iget v11, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    sub-float v11, v9, v11

    iget v12, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    add-float v5, v11, v12

    .line 8955
    .local v5, newPosX:F
    iget v11, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    sub-float v11, v10, v11

    iget v12, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    add-float v6, v11, v12

    .line 8957
    .local v6, newPosY:F
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-interface {v11, p0, v12, v13}, Landroid/widget/TextView$CursorController;->updatePosition(Landroid/widget/TextView$HandleView;II)V

    goto/16 :goto_7

    .line 8949
    .end local v5           #newPosX:F
    .end local v6           #newPosY:F
    .end local v7           #newVerticalOffset:F
    :cond_93
    iget v11, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 8950
    .restart local v7       #newVerticalOffset:F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_6e

    .line 8962
    .end local v1           #currentVerticalOffset:F
    .end local v7           #newVerticalOffset:F
    .end local v8           #previousVerticalOffset:F
    .end local v9           #rawX:F
    .end local v10           #rawY:F
    :pswitch_9e
    iget-boolean v11, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-eqz v11, :cond_d4

    .line 8963
    iget v11, p0, Landroid/widget/TextView$HandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    sub-float v2, v11, v12

    .line 8964
    .local v2, deltaX:F
    iget v11, p0, Landroid/widget/TextView$HandleView;->mDownPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float v3, v11, v12

    .line 8965
    .local v3, deltaY:F
    mul-float v11, v2, v2

    mul-float v12, v3, v3

    add-float v4, v11, v12

    .line 8966
    .local v4, distanceSquared:F
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSquaredTouchSlopDistance:I
    invoke-static {v11}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_d4

    .line 8967
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    if-eqz v11, :cond_dc

    iget-object v11, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    invoke-virtual {v11}, Landroid/widget/TextView$PastePopupMenu;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 8969
    iget-object v11, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    invoke-virtual {v11}, Landroid/widget/TextView$PastePopupMenu;->hide()V

    .line 8975
    .end local v2           #deltaX:F
    .end local v3           #deltaY:F
    .end local v4           #distanceSquared:F
    .end local p1
    :cond_d4
    :goto_d4
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->filterOnTouchUp()V

    .line 8976
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_7

    .line 8971
    .restart local v2       #deltaX:F
    .restart local v3       #deltaY:F
    .restart local v4       #distanceSquared:F
    .restart local p1
    :cond_dc
    iget-object p1, p0, Landroid/widget/TextView$HandleView;->mController:Landroid/widget/TextView$CursorController;

    .end local p1
    check-cast p1, Landroid/widget/TextView$InsertionPointCursorController;

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/widget/TextView$InsertionPointCursorController;->show(I)V

    goto :goto_d4

    .line 8980
    .end local v2           #deltaX:F
    .end local v3           #deltaY:F
    .end local v4           #distanceSquared:F
    .restart local p1
    :pswitch_e5
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_7

    .line 8921
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9e
        :pswitch_45
        :pswitch_e5
    .end packed-switch
.end method

.method positionAtCursor(I)V
    .registers 9
    .parameter "offset"

    .prologue
    .line 8991
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 8992
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 8993
    .local v4, width:I
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 8994
    .local v1, height:I
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 8995
    .local v2, line:I
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 8997
    .local v3, lineBottom:I
    invoke-static {}, Landroid/widget/TextView;->access$3400()Landroid/graphics/Rect;

    move-result-object v0

    .line 8998
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v5, v5, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    const/high16 v6, 0x3f00

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/TextView$HandleView;->mHotspotX:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mScrollX:I
    invoke-static {v6}, Landroid/widget/TextView;->access$4900(Landroid/widget/TextView;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 9000
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mScrollY:I
    invoke-static {v5}, Landroid/widget/TextView;->access$5000(Landroid/widget/TextView;)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 9002
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 9003
    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 9005
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    invoke-static {v5, v0}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;Landroid/graphics/Rect;)V

    .line 9006
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v5, v6}, Landroid/widget/TextView$HandleView;->moveTo(II)V

    .line 9007
    return-void
.end method

.method public show()V
    .registers 8

    .prologue
    .line 8778
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->updateContainerPosition()Z

    .line 8779
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 8780
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/TextView$HandleView;->mContainerPositionX:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mContainerPositionY:I

    iget v4, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v5, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v6, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 8783
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hidePastePopupWindow()V

    .line 8793
    :goto_1f
    return-void

    .line 8785
    :cond_20
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/TextView$HandleView;->mContainerPositionX:I

    iget v5, p0, Landroid/widget/TextView$HandleView;->mContainerPositionY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8788
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView$HandleView;->mIsActive:Z

    .line 8790
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8791
    .local v0, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1f
.end method

.method showPastePopupWindow()V
    .registers 3

    .prologue
    .line 9010
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsInsertionHandle:Z

    if-eqz v0, :cond_16

    .line 9011
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    if-nez v0, :cond_11

    .line 9013
    new-instance v0, Landroid/widget/TextView$PastePopupMenu;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView$PastePopupMenu;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    .line 9015
    :cond_11
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPastePopupWindow:Landroid/widget/TextView$PastePopupMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$PastePopupMenu;->show()V

    .line 9017
    :cond_16
    return-void
.end method
