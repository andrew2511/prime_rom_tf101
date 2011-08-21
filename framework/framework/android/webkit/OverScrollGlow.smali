.class public Landroid/webkit/OverScrollGlow;
.super Ljava/lang/Object;
.source "OverScrollGlow.java"


# instance fields
.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mHostView:Landroid/webkit/WebView;

.field private mOverScrollDeltaX:I

.field private mOverScrollDeltaY:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 7
    .parameter "host"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    .line 44
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 46
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10803e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    .local v1, edge:Landroid/graphics/drawable/Drawable;
    const v4, 0x10803e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, glow:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/widget/EdgeGlow;

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 49
    new-instance v4, Landroid/widget/EdgeGlow;

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 50
    new-instance v4, Landroid/widget/EdgeGlow;

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 51
    new-instance v4, Landroid/widget/EdgeGlow;

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/EdgeGlow;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 52
    return-void
.end method


# virtual methods
.method public absorbGlow(IIIIII)V
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"
    .parameter "rangeX"
    .parameter "rangeY"

    .prologue
    .line 126
    if-gtz p6, :cond_a

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_29

    .line 127
    :cond_a
    if-gez p2, :cond_4b

    if-ltz p4, :cond_4b

    .line 128
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 129
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    .line 130
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 140
    :cond_29
    :goto_29
    if-lez p5, :cond_4a

    .line 141
    if-gez p1, :cond_6b

    if-ltz p3, :cond_6b

    .line 142
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 143
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 144
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 153
    :cond_4a
    :goto_4a
    return-void

    .line 132
    :cond_4b
    if-le p2, p6, :cond_29

    if-gt p4, p6, :cond_29

    .line 133
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 134
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    .line 135
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_29

    .line 146
    :cond_6b
    if-le p1, p5, :cond_4a

    if-gt p3, p5, :cond_4a

    .line 147
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 148
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 149
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_4a
.end method

.method public drawEdgeGlows(Landroid/graphics/Canvas;)Z
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 162
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    .line 163
    .local v3, scrollX:I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    .line 164
    .local v4, scrollY:I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    .line 165
    .local v5, width:I
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 167
    .local v0, height:I
    const/4 v1, 0x0

    .line 168
    .local v1, invalidateForGlow:Z
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_45

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 171
    .local v2, restoreCount:I
    int-to-float v6, v3

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 172
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 173
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 174
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 176
    .end local v2           #restoreCount:I
    :cond_45
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_79

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 179
    .restart local v2       #restoreCount:I
    neg-int v6, v5

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    const/high16 v6, 0x4334

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 182
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 183
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 184
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 186
    .end local v2           #restoreCount:I
    :cond_79
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a4

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 189
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 190
    neg-int v6, v0

    sub-int/2addr v6, v4

    int-to-float v6, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 192
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 193
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 195
    .end local v2           #restoreCount:I
    :cond_a4
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_d5

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 198
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 199
    int-to-float v6, v4

    iget-object v7, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v5

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 202
    iget-object v6, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 203
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 205
    .end local v2           #restoreCount:I
    :cond_d5
    return v1
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public pullGlow(IIIIII)V
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"
    .parameter "maxX"
    .parameter "maxY"

    .prologue
    const/4 v5, 0x0

    .line 67
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    if-ne p3, v2, :cond_67

    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    if-ne p4, v2, :cond_67

    .line 70
    if-lez p5, :cond_38

    .line 71
    iget v2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    add-int v0, p3, v2

    .line 72
    .local v0, pulledToX:I
    if-gez v0, :cond_68

    .line 73
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 74
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v2

    if-nez v2, :cond_36

    .line 75
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 83
    :cond_36
    :goto_36
    iput v5, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    .line 86
    .end local v0           #pulledToX:I
    :cond_38
    if-gtz p6, :cond_42

    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v2

    if-nez v2, :cond_67

    .line 87
    :cond_42
    iget v2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    add-int v1, p4, v2

    .line 88
    .local v1, pulledToY:I
    if-gez v1, :cond_88

    .line 89
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 90
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v2

    if-nez v2, :cond_65

    .line 91
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 99
    :cond_65
    :goto_65
    iput v5, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    .line 102
    .end local v1           #pulledToY:I
    :cond_67
    return-void

    .line 77
    .restart local v0       #pulledToX:I
    :cond_68
    if-le v0, p5, :cond_36

    .line 78
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 79
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v2

    if-nez v2, :cond_36

    .line 80
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_36

    .line 93
    .end local v0           #pulledToX:I
    .restart local v1       #pulledToY:I
    :cond_88
    if-le v1, p6, :cond_65

    .line 94
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget v3, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/OverScrollGlow;->mHostView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 95
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v2

    if-nez v2, :cond_65

    .line 96
    iget-object v2, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v2}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_65
.end method

.method public releaseAll()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 221
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 222
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 223
    iget-object v0, p0, Landroid/webkit/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 224
    return-void
.end method

.method public setOverScrollDeltas(II)V
    .registers 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 111
    iput p1, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaX:I

    .line 112
    iput p2, p0, Landroid/webkit/OverScrollGlow;->mOverScrollDeltaY:I

    .line 113
    return-void
.end method
