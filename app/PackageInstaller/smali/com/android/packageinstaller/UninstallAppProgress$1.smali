.class Lcom/android/packageinstaller/UninstallAppProgress$1;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 57
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->access$002(Lcom/android/packageinstaller/UninstallAppProgress;I)I

    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, packageName:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_1

    .line 75
    :pswitch_1
    const-string v2, "UninstallAppProgress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstall failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v1, 0x7f050024

    .line 80
    .local v1, statusText:I
    :goto_1
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-static {v2}, Lcom/android/packageinstaller/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-static {v2}, Lcom/android/packageinstaller/UninstallAppProgress;->access$300(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-static {v2}, Lcom/android/packageinstaller/UninstallAppProgress;->access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 66
    .end local v1           #statusText:I
    :pswitch_2
    const v1, 0x7f050023

    .line 67
    .restart local v1       #statusText:I
    goto :goto_1

    .line 69
    .end local v1           #statusText:I
    :pswitch_3
    const-string v2, "UninstallAppProgress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstall failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a device admin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-static {v2}, Lcom/android/packageinstaller/UninstallAppProgress;->access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    const v1, 0x7f050025

    .line 73
    .restart local v1       #statusText:I
    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 64
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
