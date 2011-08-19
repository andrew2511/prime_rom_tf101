.class public Lcom/android/server/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AccessibilityManagerService$Service;
    }
.end annotation


# static fields
.field private static final DO_SET_SERVICE_INFO:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field private static final OWN_PROCESS_ID:I

.field private static sIdCounter:I


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHandledFeedbackTypes:I

.field private mHandler:Landroid/os/Handler;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabled:Z

.field final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/server/AccessibilityManagerService;->sIdCounter:I

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    .line 102
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 113
    new-instance v0, Lcom/android/server/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AccessibilityManagerService$1;-><init>(Lcom/android/server/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    .line 135
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 137
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 139
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V

    .line 140
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->registerSettingsContentObservers()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AccessibilityManagerService;Lcom/android/server/AccessibilityManagerService$Service;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/AccessibilityManagerService;->notifyEventListenerLocked(Lcom/android/server/AccessibilityManagerService$Service;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/AccessibilityManagerService;->tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/AccessibilityManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/AccessibilityManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AccessibilityManagerService;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AccessibilityManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/AccessibilityManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/AccessibilityManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->updateClientsLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AccessibilityManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/AccessibilityManagerService;->unbindAllServicesLocked()V

    return-void
.end method

.method static synthetic access$808()I
    .registers 2

    .prologue
    .line 73
    sget v0, Lcom/android/server/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method private canDispathEventLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z
    .registers 10
    .parameter "service"
    .parameter "event"
    .parameter "handledFeedbackTypes"

    .prologue
    const/4 v5, 0x0

    .line 491
    invoke-virtual {p1}, Lcom/android/server/AccessibilityManagerService$Service;->isConfigured()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    .line 516
    :goto_8
    return v4

    .line 495
    :cond_9
    iget-object v4, p1, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_16

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/AccessibilityManagerService;->removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z

    move v4, v5

    .line 497
    goto :goto_8

    .line 500
    :cond_16
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 501
    .local v0, eventType:I
    iget v4, p1, Lcom/android/server/AccessibilityManagerService$Service;->mEventTypes:I

    and-int/2addr v4, v0

    if-eq v4, v0, :cond_21

    move v4, v5

    .line 502
    goto :goto_8

    .line 505
    :cond_21
    iget-object v3, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 506
    .local v3, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 508
    .local v2, packageName:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 509
    :cond_33
    iget v1, p1, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 510
    .local v1, feedbackType:I
    and-int v4, p3, v1

    if-ne v4, v1, :cond_3d

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3f

    .line 512
    :cond_3d
    const/4 v4, 0x1

    goto :goto_8

    .end local v1           #feedbackType:I
    :cond_3f
    move v4, v5

    .line 516
    goto :goto_8
.end method

.method private manageServicesLocked()V
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/AccessibilityManagerService;->populateEnabledServicesLocked(Ljava/util/Set;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/android/server/AccessibilityManagerService;->updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)V

    .line 525
    return-void
.end method

.method private notifyAccessibilityServiceDelayedLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 11
    .parameter "service"
    .parameter "event"

    .prologue
    .line 396
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 397
    :try_start_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 398
    .local v0, eventType:I
    iget-object v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 399
    .local v2, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    iget v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    shl-int/lit8 v5, v5, 0x10

    or-int v3, v0, v5

    .line 402
    .local v3, what:I
    if-eqz v2, :cond_24

    .line 403
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    invoke-direct {p0, v2}, Lcom/android/server/AccessibilityManagerService;->tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 407
    :cond_24
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 408
    .local v1, message:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 409
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v6, p1, Lcom/android/server/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    monitor-exit v4

    .line 411
    return-void

    .line 410
    .end local v0           #eventType:I
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    .end local v3           #what:I
    :catchall_39
    move-exception v5

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v5
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 9
    .parameter "event"
    .parameter "isDefault"

    .prologue
    .line 369
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v1, v0, :cond_2c

    .line 370
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;

    .line 372
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-boolean v4, v3, Lcom/android/server/AccessibilityManagerService$Service;->mIsDefault:Z

    if-ne v4, p2, :cond_27

    .line 373
    iget v4, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/AccessibilityManagerService;->canDispathEventLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 374
    iget v4, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    iget v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    .line 375
    invoke-direct {p0, v3, p1}, Lcom/android/server/AccessibilityManagerService;->notifyAccessibilityServiceDelayedLocked(Lcom/android/server/AccessibilityManagerService$Service;Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_27} :catch_2a

    .line 369
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 379
    .end local v0           #count:I
    .end local v3           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :catch_2a
    move-exception v4

    move-object v2, v4

    .line 385
    :cond_2c
    return-void
.end method

.method private notifyEventListenerLocked(Lcom/android/server/AccessibilityManagerService$Service;I)V
    .registers 9
    .parameter "service"
    .parameter "eventType"

    .prologue
    .line 443
    iget-object v1, p1, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    .line 444
    .local v1, listener:Landroid/accessibilityservice/IEventListener;
    iget-object v3, p1, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 447
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    :try_start_a
    invoke-interface {v1, v0}, Landroid/accessibilityservice/IEventListener;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 459
    :goto_d
    return-void

    .line 451
    :catch_e
    move-exception v2

    .line 452
    .local v2, re:Landroid/os/RemoteException;
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_37

    .line 453
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Cleaning up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0, p1}, Lcom/android/server/AccessibilityManagerService;->removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z

    goto :goto_d

    .line 456
    :cond_37
    const-string v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private populateAccessibilityServiceListLocked()V
    .registers 7

    .prologue
    .line 349
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 351
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_18
    if-ge v1, v0, :cond_2a

    .line 355
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 357
    :cond_2a
    return-void
.end method

.method private populateEnabledServicesLocked(Ljava/util/Set;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 551
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, servicesValue:Ljava/lang/String;
    if-eqz v1, :cond_32

    .line 555
    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 556
    .local v2, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 557
    :cond_16
    :goto_16
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 558
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    .line 562
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 563
    .local v0, enabledService:Landroid/content/ComponentName;
    if-eqz v0, :cond_16

    .line 564
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 568
    .end local v0           #enabledService:Landroid/content/ComponentName;
    .end local v2           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3           #str:Ljava/lang/String;
    :cond_32
    return-void
.end method

.method private registerPackageChangeAndBootCompletedBroadcastReceiver()V
    .registers 5

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 150
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/server/AccessibilityManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/AccessibilityManagerService$2;-><init>(Lcom/android/server/AccessibilityManagerService;)V

    .line 222
    .local v2, monitor:Lcom/android/internal/content/PackageMonitor;
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, bootFiler:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    return-void
.end method

.method private registerSettingsContentObservers()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 234
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "accessibility_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 237
    .local v1, enabledUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/server/AccessibilityManagerService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/AccessibilityManagerService$3;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    const-string v3, "enabled_accessibility_services"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 258
    .local v2, providersUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/server/AccessibilityManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/AccessibilityManagerService$4;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 269
    return-void
.end method

.method private removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z
    .registers 4
    .parameter "service"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 420
    if-nez p1, :cond_3

    .line 434
    :cond_2
    :goto_2
    return-void

    .line 423
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 424
    .local v1, eventType:I
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 427
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/AccessibilityManagerService$Service;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_e
    if-ge v2, v0, :cond_21

    .line 428
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;

    .line 429
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-object v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_2

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 433
    .end local v3           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_21
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_2
.end method

.method private unbindAllServicesLocked()V
    .registers 6

    .prologue
    .line 531
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    .line 533
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/AccessibilityManagerService$Service;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 534
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AccessibilityManagerService$Service;

    .line 535
    .local v2, service:Lcom/android/server/AccessibilityManagerService$Service;
    invoke-virtual {v2}, Lcom/android/server/AccessibilityManagerService$Service;->unbind()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 536
    add-int/lit8 v1, v1, -0x1

    .line 537
    add-int/lit8 v0, v0, -0x1

    .line 533
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 540
    .end local v2           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_1c
    return-void
.end method

.method private updateClientsLocked()V
    .registers 6

    .prologue
    .line 612
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 614
    :try_start_9
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/IAccessibilityManagerClient;

    iget-boolean v4, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/accessibility/IAccessibilityManagerClient;->setEnabled(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_19

    .line 612
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 615
    :catch_19
    move-exception v3

    move-object v2, v3

    .line 616
    .local v2, re:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v0, v0, -0x1

    .line 618
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 621
    .end local v2           #re:Landroid/os/RemoteException;
    :cond_25
    return-void
.end method

.method private updateServicesStateLocked(Ljava/util/List;Ljava/util/Set;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, installedServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    .local p2, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 581
    .local v1, componentNameToServiceMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/AccessibilityManagerService$Service;>;"
    iget-boolean v5, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    .line 583
    .local v5, isEnabled:Z
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, count:I
    :goto_9
    if-ge v3, v2, :cond_47

    .line 584
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 585
    .local v4, intalledService:Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AccessibilityManagerService$Service;

    .line 589
    .local v6, service:Lcom/android/server/AccessibilityManagerService$Service;
    if-eqz v5, :cond_41

    .line 590
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 591
    if-nez v6, :cond_2f

    .line 592
    new-instance v6, Lcom/android/server/AccessibilityManagerService$Service;

    .end local v6           #service:Lcom/android/server/AccessibilityManagerService$Service;
    invoke-direct {v6, p0, v0}, Lcom/android/server/AccessibilityManagerService$Service;-><init>(Lcom/android/server/AccessibilityManagerService;Landroid/content/ComponentName;)V

    .line 594
    .restart local v6       #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_2f
    invoke-virtual {v6}, Lcom/android/server/AccessibilityManagerService$Service;->bind()Z

    .line 583
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 595
    :cond_35
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 596
    if-eqz v6, :cond_32

    .line 597
    invoke-virtual {v6}, Lcom/android/server/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_32

    .line 601
    :cond_41
    if-eqz v6, :cond_32

    .line 602
    invoke-virtual {v6}, Lcom/android/server/AccessibilityManagerService$Service;->unbind()Z

    goto :goto_32

    .line 606
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v4           #intalledService:Landroid/content/pm/ServiceInfo;
    .end local v6           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :cond_47
    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;)Z
    .registers 4
    .parameter "client"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mClients:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-boolean v1, p0, Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z

    monitor-exit v0

    return v1

    .line 275
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public executeMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "message"

    .prologue
    .line 322
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_58

    .line 341
    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_1f
    return-void

    .line 324
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 326
    .local v0, arguments:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 327
    .local v1, info:Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;

    .line 329
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 330
    :try_start_2f
    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mEventTypes:I

    .line 331
    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 332
    iget-object v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 333
    .local v2, packageNames:[Ljava/lang/String;
    if-eqz v2, :cond_44

    .line 334
    iget-object v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 336
    :cond_44
    iget-wide v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 337
    iget v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_56

    const/4 v5, 0x1

    :goto_4f
    iput-boolean v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 338
    monitor-exit v4

    goto :goto_1f

    .end local v2           #packageNames:[Ljava/lang/String;
    :catchall_53
    move-exception v5

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_53

    throw v5

    .line 337
    .restart local v2       #packageNames:[Ljava/lang/String;
    :cond_56
    const/4 v5, 0x0

    goto :goto_4f

    .line 322
    :pswitch_data_58
    .packed-switch 0xa
        :pswitch_20
    .end packed-switch
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService;->mInstalledServices:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public interrupt()V
    .registers 9

    .prologue
    .line 300
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 301
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_4
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_a
    if-ge v1, v0, :cond_6b

    .line 302
    iget-object v5, p0, Lcom/android/server/AccessibilityManagerService;->mServices:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AccessibilityManagerService$Service;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_68

    .line 304
    .local v3, service:Lcom/android/server/AccessibilityManagerService$Service;
    :try_start_14
    iget-object v5, v3, Lcom/android/server/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IEventListener;

    invoke-interface {v5}, Landroid/accessibilityservice/IEventListener;->onInterrupt()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_68
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1c

    .line 301
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 305
    :catch_1c
    move-exception v5

    move-object v2, v5

    .line 306
    .local v2, re:Landroid/os/RemoteException;
    :try_start_1e
    instance-of v5, v2, Landroid/os/DeadObjectException;

    if-eqz v5, :cond_4d

    .line 307
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dead "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Cleaning up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, v3}, Lcom/android/server/AccessibilityManagerService;->removeDeadServiceLocked(Lcom/android/server/AccessibilityManagerService$Service;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 309
    add-int/lit8 v0, v0, -0x1

    .line 310
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 313
    :cond_4d
    const-string v5, "AccessibilityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error during sending interrupt request to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 318
    .end local v0           #count:I
    .end local v2           #re:Landroid/os/RemoteException;
    .end local v3           #service:Lcom/android/server/AccessibilityManagerService$Service;
    :catchall_68
    move-exception v5

    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_1e .. :try_end_6a} :catchall_68

    throw v5

    .restart local v0       #count:I
    :cond_6b
    :try_start_6b
    monitor-exit v4
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_68

    .line 319
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0, p1, v1}, Lcom/android/server/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 281
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 282
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_1f

    .line 284
    iget v0, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    if-nez v0, :cond_22

    .line 285
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 290
    :goto_15
    sget v0, Lcom/android/server/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v0, v1, :cond_25

    move v0, v3

    :goto_1e
    return v0

    .line 282
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1

    .line 287
    :cond_22
    iput v2, p0, Lcom/android/server/AccessibilityManagerService;->mHandledFeedbackTypes:I

    goto :goto_15

    :cond_25
    move v0, v2

    .line 290
    goto :goto_1e
.end method
