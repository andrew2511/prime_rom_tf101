.class Landroid/content/ContentService$ObserverNode$ObserverEntry;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService$ObserverNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverEntry"
.end annotation


# instance fields
.field public final notifyForDescendents:Z

.field public final observer:Landroid/database/IContentObserver;

.field private final observersLock:Ljava/lang/Object;

.field final synthetic this$0:Landroid/content/ContentService$ObserverNode;


# direct methods
.method public constructor <init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;)V
    .registers 8
    .parameter
    .parameter "o"
    .parameter "n"
    .parameter "observersLock"

    .prologue
    .line 472
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->this$0:Landroid/content/ContentService$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p4, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    .line 474
    iput-object p2, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 475
    iput-boolean p3, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    .line 477
    :try_start_b
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_16

    .line 481
    :goto_15
    return-void

    .line 478
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/content/ContentService$ObserverNode$ObserverEntry;->binderDied()V

    goto :goto_15
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 484
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->this$0:Landroid/content/ContentService$ObserverNode;

    iget-object v2, p0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
