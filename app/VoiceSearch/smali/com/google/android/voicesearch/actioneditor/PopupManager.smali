.class public Lcom/google/android/voicesearch/actioneditor/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;


# instance fields
.field private mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

.field private mOutsideKeyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOutsideTouchViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mView:Landroid/view/View;

    .line 41
    return-void
.end method

.method private forwardOutsideEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 94
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 98
    aget v2, v1, v4

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 107
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 108
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method


# virtual methods
.method public addFallthroughKeyView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addFallthroughTouchView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public dismissCurrentPopup()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->dismiss()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    .line 74
    :cond_0
    return-void
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOutsideTouch(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    invoke-direct {p0, p2, v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->forwardOutsideEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :cond_1
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/view/KeyEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 121
    invoke-virtual {p0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    :cond_1
    return-void
.end method

.method public removeFallthroughKeyView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideKeyViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public removeFallthroughTouchView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mOutsideTouchViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1, p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->setOnOutsideTouchListener(Lcom/google/android/voicesearch/actioneditor/ArrowPopup$OnOutsideEventListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->setWindowToken(Landroid/os/IBinder;)V

    .line 66
    return-void
.end method

.method public showPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->setupPopup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->showPopupWithoutSetup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V

    .line 79
    return-void
.end method

.method public showPopupWithoutSetup(Lcom/google/android/voicesearch/actioneditor/ArrowPopup;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    if-eq v0, p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/PopupManager;->mLastShownPopup:Lcom/google/android/voicesearch/actioneditor/ArrowPopup;

    .line 86
    invoke-virtual {p1, p2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->showAt(Landroid/graphics/Point;)V

    .line 87
    return-void
.end method
