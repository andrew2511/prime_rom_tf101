.class Lcom/android/server/wm/WindowManagerService$6$2;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$6;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$6;)V
    .registers 2
    .parameter

    .prologue
    .line 8926
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$6$2;->this$1:Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 8928
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1002(Z)Z

    .line 8929
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 8930
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$800()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8932
    :cond_11
    return-void
.end method