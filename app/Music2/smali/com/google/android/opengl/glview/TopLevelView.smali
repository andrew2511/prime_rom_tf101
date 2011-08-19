.class public Lcom/google/android/opengl/glview/TopLevelView;
.super Lcom/google/android/opengl/glview/Scroller;
.source "TopLevelView.java"


# static fields
.field public static final MESSAGE_REQUEST_DRAW:I = 0x65

.field public static final MESSAGE_REQUEST_LAYOUT:I = 0x64


# instance fields
.field private mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

.field private mOwner:Lcom/google/android/opengl/glview/Listener;


# direct methods
.method public constructor <init>(IFFLcom/google/android/opengl/glview/Listener;)V
    .locals 0
    .parameter "id"
    .parameter "minSizeW"
    .parameter "minSizeH"
    .parameter "owner"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller;-><init>(IFF)V

    .line 25
    iput-object p4, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    .line 26
    return-void
.end method


# virtual methods
.method public getNextListener()Lcom/google/android/opengl/glview/Listener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    return-object v0
.end method

.method public requestDraw()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    const/16 v1, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/google/android/opengl/glview/Listener;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mOwner:Lcom/google/android/opengl/glview/Listener;

    const/16 v1, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/google/android/opengl/glview/Listener;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .locals 10
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 35
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView$EventTracker;->trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I

    move-result v7

    .line 37
    .local v7, result:I
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_0

    .line 38
    iput-object v8, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 40
    :cond_0
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1

    move-object v0, v8

    .line 51
    .end local v7           #result:I
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/google/android/opengl/glview/Scroller;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v6

    .line 45
    .local v6, newTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz v6, :cond_3

    sget-object v0, Lcom/google/android/opengl/glview/TopLevelView;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    if-eq v6, v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    const/4 v1, 0x7

    move-object v2, v8

    move-object v3, v8

    move v4, v9

    move v5, v9

    invoke-interface/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView$EventTracker;->trackEvent(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)I

    .line 49
    :cond_2
    iput-object v6, p0, Lcom/google/android/opengl/glview/TopLevelView;->mCurrentEventTracker:Lcom/google/android/opengl/glview/GLView$EventTracker;

    :cond_3
    move-object v0, v8

    .line 51
    goto :goto_0
.end method
