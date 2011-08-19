.class Lcom/android/systemui/statusbar/policy/AutoRotateController$1;
.super Ljava/lang/Object;
.source "AutoRotateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/AutoRotateController;->setAutoRotation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

.field final synthetic val$autorotate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->val$autorotate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 66
    .local v1, wm:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->access$000(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;->val$autorotate:Z

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 74
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 70
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->freezeRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
