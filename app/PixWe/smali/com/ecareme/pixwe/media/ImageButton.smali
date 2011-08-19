.class public final Lcom/ecareme/pixwe/media/ImageButton;
.super Lcom/ecareme/pixwe/media/Layer;
.source "ImageButton.java"


# static fields
.field private static final TRACKING_MARGIN:F = 30.0f


# instance fields
.field private mAction:Ljava/lang/Runnable;

.field private mCurrentImage:I

.field private final mFade:Lcom/ecareme/pixwe/media/FloatAnim;

.field private mImage:I

.field private mPressed:Z

.field private mPressedImage:I

.field private mPreviousImage:I

.field private final mTransparent:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 31
    iput v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mImage:I

    .line 32
    iput v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressedImage:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mAction:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/ecareme/pixwe/media/FloatAnim;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/FloatAnim;-><init>(F)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mFade:Lcom/ecareme/pixwe/media/FloatAnim;

    .line 39
    iput v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mCurrentImage:I

    .line 40
    iput v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPreviousImage:I

    .line 41
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressed:Z

    .line 43
    const v0, 0x7f02008e

    iput v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mTransparent:I

    .line 27
    return-void
.end method

.method private containsPoint(FFZ)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "addTrackingMargin"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41f0

    .line 58
    iget v4, p0, Lcom/ecareme/pixwe/media/ImageButton;->mImage:I

    if-eqz v4, :cond_2

    .line 59
    iget v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mX:F

    .line 60
    .local v2, minX:F
    iget v3, p0, Lcom/ecareme/pixwe/media/ImageButton;->mY:F

    .line 61
    .local v3, minY:F
    iget v4, p0, Lcom/ecareme/pixwe/media/ImageButton;->mWidth:F

    add-float v0, v2, v4

    .line 62
    .local v0, maxX:F
    iget v4, p0, Lcom/ecareme/pixwe/media/ImageButton;->mHeight:F

    add-float v1, v3, v4

    .line 63
    .local v1, maxY:F
    if-eqz p3, :cond_0

    .line 64
    sub-float/2addr v2, v5

    .line 65
    sub-float/2addr v3, v5

    .line 66
    add-float/2addr v0, v5

    .line 67
    add-float/2addr v1, v5

    .line 69
    :cond_0
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_1

    cmpl-float v4, p2, v3

    if-ltz v4, :cond_1

    cmpg-float v4, p1, v0

    if-gez v4, :cond_1

    cmpg-float v4, p2, v1

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 71
    .end local v0           #maxX:F
    .end local v1           #maxY:F
    .end local v2           #minX:F
    .end local v3           #minY:F
    :goto_0
    return v4

    .restart local v0       #maxX:F
    .restart local v1       #maxY:F
    .restart local v2       #minX:F
    .restart local v3       #minY:F
    :cond_1
    move v4, v6

    .line 69
    goto :goto_0

    .end local v0           #maxX:F
    .end local v1           #maxY:F
    .end local v2           #minX:F
    .end local v3           #minY:F
    :cond_2
    move v4, v6

    .line 71
    goto :goto_0
.end method

.method private setImage(IZ)V
    .locals 5
    .parameter "image"
    .parameter "animate"

    .prologue
    const/high16 v4, 0x3f80

    .line 131
    iget v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mCurrentImage:I

    if-eq v0, p1, :cond_0

    .line 132
    if-eqz p2, :cond_1

    .line 133
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mFade:Lcom/ecareme/pixwe/media/FloatAnim;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    .line 134
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mFade:Lcom/ecareme/pixwe/media/FloatAnim;

    const/high16 v1, 0x3e80

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ecareme/pixwe/media/FloatAnim;->animateValue(FFJ)V

    .line 138
    iget v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mCurrentImage:I

    iput v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPreviousImage:I

    .line 142
    :goto_0
    iput p1, p0, Lcom/ecareme/pixwe/media/ImageButton;->mCurrentImage:I

    .line 144
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mFade:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-virtual {v0, v4}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    goto :goto_0
.end method


# virtual methods
.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 76
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 104
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return v4

    .line 107
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3, v4}, Lcom/ecareme/pixwe/media/ImageButton;->containsPoint(FFZ)Z

    move-result v1

    .line 108
    .local v1, hit:Z
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressed:Z

    .line 109
    if-eqz v1, :cond_0

    .line 110
    iget v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressedImage:I

    invoke-direct {p0, v2, v5}, Lcom/ecareme/pixwe/media/ImageButton;->setImage(IZ)V

    goto :goto_0

    .line 112
    :cond_0
    iget v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mImage:I

    invoke-direct {p0, v2, v4}, Lcom/ecareme/pixwe/media/ImageButton;->setImage(IZ)V

    goto :goto_0

    .line 116
    .end local v1           #hit:Z
    :pswitch_1
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressed:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 121
    :cond_1
    :pswitch_2
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressed:Z

    .line 122
    iget v2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mImage:I

    invoke-direct {p0, v2, v4}, Lcom/ecareme/pixwe/media/ImageButton;->setImage(IZ)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 10
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mFade:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->getFrameTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ecareme/pixwe/media/FloatAnim;->getValue(J)F

    move-result v3

    .line 85
    .local v3, ratio:F
    iget v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mCurrentImage:I

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v2

    .line 86
    .local v2, currentImage:Lcom/ecareme/pixwe/media/Texture;
    iget v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPreviousImage:I

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v1

    .line 87
    .local v1, previousImage:Lcom/ecareme/pixwe/media/Texture;
    iget v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mTransparent:I

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v9

    .line 88
    .local v9, transparent:Lcom/ecareme/pixwe/media/Texture;
    if-nez v2, :cond_0

    .line 89
    move-object v2, v9

    .line 91
    :cond_0
    if-nez v1, :cond_1

    .line 92
    move-object v1, v9

    .line 94
    :cond_1
    const v0, 0x3f7d70a4

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_2

    .line 95
    iget v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mX:F

    iget v4, p0, Lcom/ecareme/pixwe/media/ImageButton;->mY:F

    invoke-virtual {p1, v2, v0, v4}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_2
    iget v4, p0, Lcom/ecareme/pixwe/media/ImageButton;->mX:F

    iget v5, p0, Lcom/ecareme/pixwe/media/ImageButton;->mY:F

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v0

    int-to-float v8, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ecareme/pixwe/media/RenderView;->drawMixed2D(Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/Texture;FFFFFF)V

    goto :goto_0
.end method

.method public final setAction(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ImageButton;->mAction:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public setImages(II)V
    .locals 1
    .parameter "image"
    .parameter "pressedImage"

    .prologue
    .line 46
    iput p1, p0, Lcom/ecareme/pixwe/media/ImageButton;->mImage:I

    .line 47
    iput p2, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressedImage:I

    .line 48
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/ImageButton;->mPressed:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ecareme/pixwe/media/ImageButton;->setImage(IZ)V

    .line 51
    :cond_0
    return-void
.end method
