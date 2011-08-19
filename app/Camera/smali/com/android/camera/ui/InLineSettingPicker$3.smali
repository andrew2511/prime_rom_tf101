.class Lcom/android/camera/ui/InLineSettingPicker$3;
.super Ljava/lang/Object;
.source "InLineSettingPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/InLineSettingPicker;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/InLineSettingPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/InLineSettingPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$500(Lcom/android/camera/ui/InLineSettingPicker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 114
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$400(Lcom/android/camera/ui/InLineSettingPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$100(Lcom/android/camera/ui/InLineSettingPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$200(Lcom/android/camera/ui/InLineSettingPicker;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0, v2}, Lcom/android/camera/ui/InLineSettingPicker;->access$402(Lcom/android/camera/ui/InLineSettingPicker;Z)Z

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$300(Lcom/android/camera/ui/InLineSettingPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$600(Lcom/android/camera/ui/InLineSettingPicker;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    move v0, v4

    .line 114
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$3;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0, v4}, Lcom/android/camera/ui/InLineSettingPicker;->access$402(Lcom/android/camera/ui/InLineSettingPicker;Z)Z

    goto :goto_1
.end method
