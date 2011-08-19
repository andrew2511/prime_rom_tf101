.class Lcom/android/camera/VideoCamera$PopupGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1945
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$PopupGestureListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1950
    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorWheel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorWheel;->getActivePopupWindow()Landroid/view/View;

    move-result-object v0

    .line 1951
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    move v3, v5

    .line 1968
    :goto_0
    return v3

    .line 1953
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1954
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1957
    .local v2, y:I
    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1958
    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v5

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v6

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_3

    .line 1961
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorWheel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/IndicatorWheel;->getLocationOnScreen([I)V

    .line 1962
    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v5

    if-lt v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v5

    iget-object v4, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorWheel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/IndicatorWheel;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v6

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3500(Lcom/android/camera/VideoCamera;)[I

    move-result-object v3

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v4}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorWheel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/IndicatorWheel;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_3

    .line 1964
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoCamera$PopupGestureListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v3}, Lcom/android/camera/VideoCamera;->access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorWheel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    :cond_3
    move v3, v5

    .line 1968
    goto/16 :goto_0
.end method
