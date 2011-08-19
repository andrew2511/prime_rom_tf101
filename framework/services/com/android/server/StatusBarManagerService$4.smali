.class Lcom/android/server/StatusBarManagerService$4;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;->updateLightsOnLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$lightsOn:Z


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$4;->this$0:Lcom/android/server/StatusBarManagerService;

    iput-boolean p2, p0, Lcom/android/server/StatusBarManagerService$4;->val$lightsOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$4;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_f

    .line 312
    :try_start_6
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$4;->this$0:Lcom/android/server/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    iget-boolean v1, p0, Lcom/android/server/StatusBarManagerService$4;->val$lightsOn:Z

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->setLightsOn(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 316
    :cond_f
    :goto_f
    return-void

    .line 313
    :catch_10
    move-exception v0

    goto :goto_f
.end method
