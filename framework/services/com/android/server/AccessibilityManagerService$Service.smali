.class Lcom/android/server/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation


# instance fields
.field mComponentName:Landroid/content/ComponentName;

.field mEventTypes:I

.field mFeedbackType:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field mIsActive:Z

.field mIsDefault:Z

.field mNotificationTimeout:J

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IEventListener;

.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;Landroid/content/ComponentName;)V
    .registers 9
    .parameter
    .parameter "componentName"

    .prologue
    const/4 v5, 0x0

    .line 658
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 632
    iput v5, p0, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    .line 642
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 655
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 659
    invoke-static {}, Lcom/android/server/AccessibilityManagerService;->access$808()I

    move-result v0

    iput v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    .line 660
    iput-object p2, p0, Lcom/android/server/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 661
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 662
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_label"

    const v2, 0x10403bf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.client_intent"

    iget-object v2, p1, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 666
    return-void
.end method


# virtual methods
.method public bind()Z
    .registers 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_10

    .line 675
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 677
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isConfigured()Z
    .registers 2

    .prologue
    .line 704
    iget v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 712
    iput-object p2, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 713
    invoke-static {p2}, Landroid/accessibilityservice/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IEventListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 716
    :try_start_8
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    invoke-interface {v1, p0}, Landroid/accessibilityservice/IEventListener;->setConnection(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 717
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_2f

    .line 718
    :try_start_12
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 719
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_2a
    monitor-exit v1

    .line 726
    :goto_2b
    return-void

    .line 722
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 723
    :catch_2f
    move-exception v1

    move-object v0, v1

    .line 724
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting Controller for service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "componentName"

    .prologue
    .line 729
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_5
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AccessibilityManagerService$Service;

    .line 731
    .local v0, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 732
    monitor-exit v1

    .line 733
    return-void

    .line 732
    .end local v0           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 709
    return-void
.end method

.method public unbind()Z
    .registers 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_20

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 689
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$Service;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    const/4 v0, 0x1

    .line 694
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
