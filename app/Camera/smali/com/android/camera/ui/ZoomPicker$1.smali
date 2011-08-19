.class Lcom/android/camera/ui/ZoomPicker$1;
.super Ljava/lang/Object;
.source "ZoomPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ZoomPicker;
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
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x41

    const/4 v2, 0x1

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$000(Lcom/android/camera/ui/ZoomPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$100(Lcom/android/camera/ui/ZoomPicker;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$200(Lcom/android/camera/ui/ZoomPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$300(Lcom/android/camera/ui/ZoomPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$400(Lcom/android/camera/ui/ZoomPicker;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$300(Lcom/android/camera/ui/ZoomPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->access$600(Lcom/android/camera/ui/ZoomPicker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$700(Lcom/android/camera/ui/ZoomPicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$800(Lcom/android/camera/ui/ZoomPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$900(Lcom/android/camera/ui/ZoomPicker;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$200(Lcom/android/camera/ui/ZoomPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$300(Lcom/android/camera/ui/ZoomPicker;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$500(Lcom/android/camera/ui/ZoomPicker;)Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;->onZoomStateChanged(I)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    iget-object v1, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v1}, Lcom/android/camera/ui/ZoomPicker;->access$300(Lcom/android/camera/ui/ZoomPicker;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->access$600(Lcom/android/camera/ui/ZoomPicker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ZoomPicker$1;->this$0:Lcom/android/camera/ui/ZoomPicker;

    invoke-static {v0}, Lcom/android/camera/ui/ZoomPicker;->access$700(Lcom/android/camera/ui/ZoomPicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
