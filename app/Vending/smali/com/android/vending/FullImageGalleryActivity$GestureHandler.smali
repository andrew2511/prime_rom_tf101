.class Lcom/android/vending/FullImageGalleryActivity$GestureHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullImageGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FullImageGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field private mViewId:I

.field final synthetic this$0:Lcom/android/vending/FullImageGalleryActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/FullImageGalleryActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->mViewId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/FullImageGalleryActivity;Lcom/android/vending/FullImageGalleryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;-><init>(Lcom/android/vending/FullImageGalleryActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x1

    .line 424
    iget v6, p0, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->mViewId:I

    packed-switch v6, :pswitch_data_0

    .line 445
    const/4 v6, 0x0

    :goto_0
    return v6

    .line 429
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 430
    .local v0, x1:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 431
    .local v1, x2:F
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    sub-float v6, v0, v1

    move v2, v6

    .line 432
    .local v2, xDelta:F
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 433
    .local v3, y1:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 434
    .local v4, y2:F
    cmpl-float v6, v3, v4

    if-lez v6, :cond_2

    sub-float v6, v3, v4

    move v5, v6

    .line 435
    .local v5, yDelta:F
    :goto_2
    const/high16 v6, 0x4120

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_0

    div-float v6, v5, v2

    const/high16 v7, 0x3f80

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 437
    const/4 v6, 0x0

    cmpl-float v6, p3, v6

    if-lez v6, :cond_3

    .line 438
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/android/vending/FullImageGalleryActivity;->access$900(Lcom/android/vending/FullImageGalleryActivity;I)V

    :cond_0
    :goto_3
    move v6, v8

    .line 443
    goto :goto_0

    .line 431
    .end local v2           #xDelta:F
    .end local v3           #y1:F
    .end local v4           #y2:F
    .end local v5           #yDelta:F
    :cond_1
    sub-float v6, v1, v0

    move v2, v6

    goto :goto_1

    .line 434
    .restart local v2       #xDelta:F
    .restart local v3       #y1:F
    .restart local v4       #y2:F
    :cond_2
    sub-float v6, v4, v3

    move v5, v6

    goto :goto_2

    .line 440
    .restart local v5       #yDelta:F
    :cond_3
    iget-object v6, p0, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->this$0:Lcom/android/vending/FullImageGalleryActivity;

    invoke-static {v6, v8}, Lcom/android/vending/FullImageGalleryActivity;->access$900(Lcom/android/vending/FullImageGalleryActivity;I)V

    goto :goto_3

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800d7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setViewId(I)V
    .locals 0
    .parameter "viewId"

    .prologue
    .line 418
    iput p1, p0, Lcom/android/vending/FullImageGalleryActivity$GestureHandler;->mViewId:I

    .line 419
    return-void
.end method
