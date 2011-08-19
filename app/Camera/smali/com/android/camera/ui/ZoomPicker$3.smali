.class Lcom/android/camera/ui/ZoomPicker$3;
.super Ljava/lang/Object;
.source "ZoomPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ZoomPicker;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ZoomPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ZoomPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 118
    .local v0, action:I
    if-nez v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$800(Lcom/android/camera/ui/ZoomPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v2}, Lcom/android/camera/ui/ZoomPicker;->access$300(Lcom/android/camera/ui/ZoomPicker;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/ui/ZoomPicker;->access$600(Lcom/android/camera/ui/ZoomPicker;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1, v3}, Lcom/android/camera/ui/ZoomPicker;->access$802(Lcom/android/camera/ui/ZoomPicker;Z)Z

    .line 123
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$700(Lcom/android/camera/ui/ZoomPicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v2}, Lcom/android/camera/ui/ZoomPicker;->access$1000(Lcom/android/camera/ui/ZoomPicker;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_0
    :goto_0
    return v5

    .line 125
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$900(Lcom/android/camera/ui/ZoomPicker;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 128
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1, v5}, Lcom/android/camera/ui/ZoomPicker;->access$802(Lcom/android/camera/ui/ZoomPicker;Z)Z

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$200(Lcom/android/camera/ui/ZoomPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$3;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;->onZoomStateChanged(I)V

    goto :goto_0
.end method
