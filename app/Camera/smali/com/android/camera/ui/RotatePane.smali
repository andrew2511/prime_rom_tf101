.class Lcom/android/camera/ui/RotatePane;
.super Lcom/android/camera/ui/GLView;
.source "RotatePane.java"


# instance fields
.field private mChild:Lcom/android/camera/ui/GLView;

.field private mOrientation:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    return-void
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/ui/GLView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use setContent(GLView)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 99
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 100
    .local v4, y:F
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatePane;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 101
    .local v2, width:F
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatePane;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 102
    .local v0, height:F
    iget v5, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 107
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-virtual {v5, p1}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 108
    .local v1, result:Z
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 109
    return v1

    .line 103
    .end local v1           #result:Z
    :pswitch_0
    sub-float v5, v2, v3

    sub-float v6, v0, v4

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 104
    :pswitch_1
    sub-float v5, v0, v4

    invoke-virtual {p1, v5, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 105
    :pswitch_2
    sub-float v5, v2, v3

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 39
    sub-int v1, p4, p2

    .line 40
    .local v1, width:I
    sub-int v0, p5, p3

    .line 41
    .local v0, height:I
    iget v2, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-virtual {v2, v3, v3, v1, v0}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    .line 56
    .local v0, c:Lcom/android/camera/ui/GLView;
    iget v1, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 60
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/RotatePane;->setMeasuredSize(II)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-virtual {v1, p2, p1}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 65
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ui/RotatePane;->setMeasuredSize(II)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .parameter "view"
    .parameter "gl"

    .prologue
    const/high16 v5, 0x4000

    .line 72
    iget v3, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    if-nez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 94
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->pushTransform()Landroid/view/animation/Transformation;

    .line 78
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 79
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatePane;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 80
    .local v2, width:F
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatePane;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 81
    .local v0, height:F
    iget v3, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 92
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 93
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->popTransform()V

    goto :goto_0

    .line 83
    :pswitch_0
    const/high16 v3, 0x4334

    div-float v4, v2, v5

    div-float v5, v0, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_1

    .line 86
    :pswitch_1
    const/high16 v3, 0x4387

    div-float v4, v0, v5

    div-float v5, v0, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_1

    .line 89
    :pswitch_2
    const/high16 v3, 0x42b4

    div-float v4, v2, v5

    div-float v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContent(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    if-ne v0, p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    invoke-super {p0, v0}, Lcom/android/camera/ui/GLView;->removeComponent(Lcom/android/camera/ui/GLView;)Z

    .line 121
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/RotatePane;->mChild:Lcom/android/camera/ui/GLView;

    .line 122
    if-eqz p1, :cond_2

    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatePane;->requestLayout()V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/RotatePane;->mOrientation:I

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/RotatePane;->requestLayout()V

    goto :goto_0
.end method
