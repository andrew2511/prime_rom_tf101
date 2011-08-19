.class Lcom/android/camera/ui/InLineSettingPicker$1;
.super Ljava/lang/Object;
.source "InLineSettingPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/InLineSettingPicker;
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
    .line 60
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x64

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$000(Lcom/android/camera/ui/InLineSettingPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$100(Lcom/android/camera/ui/InLineSettingPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$200(Lcom/android/camera/ui/InLineSettingPicker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$300(Lcom/android/camera/ui/InLineSettingPicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$400(Lcom/android/camera/ui/InLineSettingPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$100(Lcom/android/camera/ui/InLineSettingPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/InLineSettingPicker;->access$200(Lcom/android/camera/ui/InLineSettingPicker;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingPicker$1;->this$0:Lcom/android/camera/ui/InLineSettingPicker;

    invoke-static {v0}, Lcom/android/camera/ui/InLineSettingPicker;->access$300(Lcom/android/camera/ui/InLineSettingPicker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
