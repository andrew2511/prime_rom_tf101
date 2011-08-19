.class Lcom/android/server/wm/WindowManagerService$6;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->popCompassCalibrationDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 8908
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 8910
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10301da

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$802(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 8911
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$6;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 8912
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8913
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8915
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$6$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$6$1;-><init>(Lcom/android/server/wm/WindowManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 8925
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$6$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$6$2;-><init>(Lcom/android/server/wm/WindowManagerService$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8934
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 8935
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8936
    return-void
.end method
