.class Lcom/android/server/AccessibilityManagerService$4;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AccessibilityManagerService;->registerSettingsContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$4;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$4;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_8
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$4;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v1
.end method
