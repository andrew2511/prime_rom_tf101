.class public Lcom/google/android/voicesearch/actioneditor/ArrowPopup;
.super Landroid/widget/FrameLayout;
.source "ArrowPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArrowPopup"


# instance fields
.field private mArrowPoint:Landroid/graphics/Point;

.field private mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mFilterDpad:Z

.field private mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mOutsideListener:Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;

.field private mOutsideTouchable:Z

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPopupRect:Landroid/graphics/Rect;

.field private mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mTouchStartedOutside:Z

.field private mTypingCancels:Z

.field private mVisible:Z

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideTouchable:Z

    .line 58
    iput-boolean v2, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mFilterDpad:Z

    .line 59
    iput-boolean v2, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mTypingCancels:Z

    .line 65
    iput-boolean v2, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mTouchStartedOutside:Z

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    const v0, 0x7f02007d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 98
    const v0, 0x7f02007b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 100
    const v0, 0x7f02007e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 103
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->setBackgroundColor(I)V

    .line 104
    return-void
.end method

.method private calculatePopupRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/high16 v4, -0x8000

    .line 111
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 112
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 116
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->measure(II)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getMeasuredWidth()I

    move-result v1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getMeasuredHeight()I

    move-result v2

    .line 125
    int-to-float v3, v1

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 127
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v3, v4, v3

    .line 128
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 131
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr v2, v3

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 371
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 372
    if-nez v0, :cond_0

    .line 373
    const-string v0, "ArrowPopup"

    const-string v1, "Trying to calculate popup position with null layout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 407
    :goto_0
    return-object v0

    .line 376
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 378
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 380
    aget v2, v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 381
    aget v1, v1, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    .line 382
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 383
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 385
    if-ne p1, p2, :cond_2

    .line 387
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 388
    sub-int v5, p1, v7

    invoke-virtual {v0, v5, p2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 389
    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 390
    iget v0, v3, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    add-int/2addr v0, v2

    .line 397
    :goto_1
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    move v8, v1

    move v1, v0

    move v0, v8

    .line 407
    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    .line 392
    :cond_1
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v0, p1, v5, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 393
    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 394
    iget v0, v3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 400
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5, p2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 401
    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 403
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v4

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v2

    .line 404
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_2
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 203
    return-object p0
.end method

.method private initLayout(Landroid/graphics/Point;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    .line 167
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->calculatePopupRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mPopupRect:Landroid/graphics/Rect;

    .line 168
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mPopupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 169
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->dismiss()V

    .line 288
    return-void
.end method

.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 145
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 146
    const v4, 0x20100

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 148
    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 150
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 151
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v4, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 152
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 154
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 159
    const/16 v0, 0x3ea

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 160
    const/4 v0, -0x3

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 162
    return-object v3
.end method

.method public disableArrow()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 303
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    .line 296
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 298
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->cancel()V

    .line 310
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideListener:Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;

    if-eqz v1, :cond_3

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    .line 320
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mTypingCancels:Z

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->cancel()V

    .line 323
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mFilterDpad:Z

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideListener:Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;->onUnhandledKeyEvent(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/view/KeyEvent;)V

    .line 326
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 334
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideTouchable:Z

    if-nez v0, :cond_0

    .line 335
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 340
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 341
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 346
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 347
    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mTouchStartedOutside:Z

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideListener:Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mTouchStartedOutside:Z

    if-eqz v0, :cond_4

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->cancel()V

    .line 353
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 355
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideListener:Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;

    invoke-interface {v1, p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;->onOutsideTouch(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/view/MotionEvent;)V

    move v0, v3

    .line 356
    goto :goto_0

    .line 345
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideTouchable:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    return v0
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->requestLayout()V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->invalidate()V

    .line 271
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 173
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getLocationOnScreen([I)V

    .line 178
    aget v0, v0, v8

    .line 179
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWidth()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getHeight()I

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v3

    .line 182
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v4

    .line 183
    iget-object v5, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v5

    .line 185
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    .line 186
    sub-int v5, v1, v5

    sub-int/2addr v5, v4

    .line 188
    sub-int v0, v6, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 190
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v0, v4

    invoke-direct {v5, v0, v8, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v0, v4

    invoke-direct {v5, v0, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mLeftDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mCenterDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mRightDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    return-void
.end method

.method public refreshLayout()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mArrowPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 254
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->requestLayout()V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->invalidate()V

    .line 258
    :cond_0
    return-void
.end method

.method public setFilterDpad(Z)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mFilterDpad:Z

    .line 220
    return-void
.end method

.method public setOnOutsideTouchListener(Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideListener:Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;

    .line 212
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mOutsideTouchable:Z

    .line 246
    return-void
.end method

.method public setTypingCancels(Z)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mTypingCancels:Z

    .line 227
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mWindowToken:Landroid/os/IBinder;

    .line 208
    return-void
.end method

.method public showAt(Landroid/graphics/Point;)V
    .locals 2
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->initLayout(Landroid/graphics/Point;)V

    .line 280
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->mVisible:Z

    .line 284
    return-void
.end method
