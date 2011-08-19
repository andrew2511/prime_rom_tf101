.class public Landroid/app/asus/DockManager;
.super Ljava/lang/Object;
.source "DockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DockManager"


# instance fields
.field private mService:Landroid/app/asus/IDockManager;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "asus_dock"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/asus/IDockManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/asus/IDockManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/asus/DockManager;->mService:Landroid/app/asus/IDockManager;

    .line 21
    return-void
.end method


# virtual methods
.method public updateDockFirmware(Ljava/lang/String;)V
    .registers 5
    .parameter "firmware"

    .prologue
    .line 24
    iget-object v1, p0, Landroid/app/asus/DockManager;->mService:Landroid/app/asus/IDockManager;

    if-eqz v1, :cond_9

    .line 26
    :try_start_4
    iget-object v1, p0, Landroid/app/asus/DockManager;->mService:Landroid/app/asus/IDockManager;

    invoke-interface {v1, p1}, Landroid/app/asus/IDockManager;->updateDockFirmware(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 31
    :cond_9
    :goto_9
    return-void

    .line 27
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DockManager"

    const-string/jumbo v2, "updateDockFirmware: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
