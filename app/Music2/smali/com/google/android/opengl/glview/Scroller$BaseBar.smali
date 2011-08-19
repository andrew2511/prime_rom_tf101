.class abstract Lcom/google/android/opengl/glview/Scroller$BaseBar;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseBar"
.end annotation


# instance fields
.field protected mHorizontalScrolling:Z

.field private mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

.field protected mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

.field protected mThumb:Lcom/google/android/opengl/glview/GLView;

.field protected mTrack:Lcom/google/android/opengl/glview/GLView;

.field final synthetic this$0:Lcom/google/android/opengl/glview/Scroller;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/Scroller;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>()V

    .line 111
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    .line 112
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    .line 115
    return-void
.end method


# virtual methods
.method public abstract getThumbPosition()F
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 5
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, animating:Z
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getFrameTime()J

    move-result-wide v1

    .line 149
    .local v1, frameTime:J
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4, v1, v2, p2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->animate(JF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 150
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4, v1, v2, p2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->animate(JF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 152
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v3

    .line 154
    .local v3, oldAlpha:F
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->getFadeInFactor()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 156
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 165
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->getFadeInFactor()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 166
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 169
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 170
    return v0
.end method

.method protected setOverlayVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 212
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setViews(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Z)V
    .locals 1
    .parameter "thumb"
    .parameter "track"
    .parameter "horizontalScrolling"

    .prologue
    .line 119
    iput-boolean p3, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mHorizontalScrolling:Z

    .line 121
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 125
    :cond_0
    iput-object p2, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    .line 127
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    .line 136
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 142
    :cond_3
    return-void
.end method

.method public updateThumbPosition()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f00

    .line 174
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->x()F

    move-result v6

    .line 175
    .local v6, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->y()F

    move-result v7

    .line 176
    .local v7, y:F
    move v0, v6

    .line 177
    .local v0, oldX:F
    move v1, v7

    .line 178
    .local v1, oldY:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mHorizontalScrolling:Z

    if-eqz v8, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->getThumbPosition()F

    move-result v6

    .line 183
    :goto_0
    cmpl-float v8, v6, v0

    if-nez v8, :cond_0

    cmpl-float v8, v7, v1

    if-eqz v8, :cond_1

    .line 184
    :cond_0
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v8, v12}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 185
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    iget-object v9, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v9}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v10

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 187
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 188
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v3

    .line 189
    .local v3, overlayWidth:F
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v2

    .line 192
    .local v2, overlayHeight:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mHorizontalScrolling:Z

    if-eqz v8, :cond_3

    .line 194
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v11

    add-float v4, v6, v8

    .line 195
    .local v4, overlayX:F
    sub-float v5, v7, v2

    .line 201
    .local v5, overlayY:F
    :goto_1
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v3, v2}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 204
    .end local v2           #overlayHeight:F
    .end local v3           #overlayWidth:F
    .end local v4           #overlayX:F
    .end local v5           #overlayY:F
    :cond_1
    return-void

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$BaseBar;->getThumbPosition()F

    move-result v7

    goto :goto_0

    .line 198
    .restart local v2       #overlayHeight:F
    .restart local v3       #overlayWidth:F
    :cond_3
    sub-float v4, v6, v3

    .line 199
    .restart local v4       #overlayX:F
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$BaseBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v8

    sub-float/2addr v8, v2

    mul-float/2addr v8, v11

    add-float v5, v7, v8

    .restart local v5       #overlayY:F
    goto :goto_1
.end method
