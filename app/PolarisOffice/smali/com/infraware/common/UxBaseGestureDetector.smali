.class public abstract Lcom/infraware/common/UxBaseGestureDetector;
.super Lcom/infraware/common/UxGestureDetector;
.source "UxBaseGestureDetector.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_SCROLL_COMMAND_TYPE;
.implements Lcom/infraware/evengine/E$EV_SCROLL_FACTOR_TYPE;
.implements Lcom/infraware/evengine/E$EV_KEY_TYPE;
.implements Lcom/infraware/evengine/E$EV_ZOOM_TYPE;


# instance fields
.field protected final GESTURE_DOUBLE_TAP:I

.field protected final GESTURE_DRAG:I

.field protected final GESTURE_FLING:I

.field protected final GESTURE_LATE_DRAG:I

.field protected final GESTURE_LONG_PRESS:I

.field protected final GESTURE_NONE:I

.field protected final GESTURE_PINCH_ZOOM:I

.field protected m_fDistPre:F

.field protected m_nGestureStatus:I

.field protected m_nMultiTouchBeginScale:I

.field protected m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field protected m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field protected m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/UxGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    iput-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 16
    iput-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 17
    iput-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_fDistPre:F

    .line 19
    iput v1, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_nMultiTouchBeginScale:I

    .line 28
    iput v1, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_NONE:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_DRAG:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_PINCH_ZOOM:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_FLING:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_LATE_DRAG:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_DOUBLE_TAP:I

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->GESTURE_LONG_PRESS:I

    .line 36
    iput v1, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_nGestureStatus:I

    .line 23
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->getInstance()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 24
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 25
    invoke-static {}, Lcom/infraware/common/UiCoreEventListener;->getInstance()Lcom/infraware/common/UiCoreEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 26
    return-void
.end method


# virtual methods
.method protected onFlingProc(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x4130

    const/high16 v3, -0x4080

    .line 47
    const/4 v2, 0x3

    iput v2, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_nGestureStatus:I

    .line 49
    mul-float/2addr p3, v3

    .line 50
    mul-float/2addr p4, v3

    .line 52
    div-float v0, p3, v4

    .line 53
    .local v0, x:F
    div-float v1, p4, v4

    .line 55
    .local v1, y:F
    iget-object v2, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oNativeInterface:Lcom/infraware/evengine/ICoEngineInterface;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IFlick(II)V

    .line 56
    const/4 v2, 0x1

    return v2
.end method

.method protected onSingleTouchDownProc(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/common/UxBaseGestureDetector;->m_oUiEventListener:Lcom/infraware/common/UiCoreEventListener;

    invoke-virtual {v0}, Lcom/infraware/common/UiCoreEventListener;->notifyMainViewTouched()V

    .line 42
    const/4 v0, 0x1

    return v0
.end method
