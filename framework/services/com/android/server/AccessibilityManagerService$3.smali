.class Lcom/android/server/AccessibilityManagerService$3;
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
    .line 238
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9
    .parameter "selfChange"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_a
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_35

    move v2, v6

    :goto_1e
    #setter for: Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/AccessibilityManagerService;->access$502(Lcom/android/server/AccessibilityManagerService;Z)Z

    .line 246
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$500(Lcom/android/server/AccessibilityManagerService;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 247
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 251
    :goto_2e
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->updateClientsLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$600(Lcom/android/server/AccessibilityManagerService;)V

    .line 252
    monitor-exit v0

    .line 253
    return-void

    :cond_35
    move v2, v5

    .line 244
    goto :goto_1e

    .line 249
    :cond_37
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$3;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->unbindAllServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$700(Lcom/android/server/AccessibilityManagerService;)V

    goto :goto_2e

    .line 252
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3d

    throw v1
.end method
