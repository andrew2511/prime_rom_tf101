.class public Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InAppBuyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/InAppBuyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mInAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;

.field private mIsRunning:Z

.field private mShouldFinish:Z

.field final synthetic this$0:Lcom/android/vending/billing/InAppBuyPageActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    .line 96
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mIsRunning:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mShouldFinish:Z

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationReceiver runner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 98
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/vending/billing/InAppRequestDatabase;

    invoke-direct {v0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mInAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;

    .line 101
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mInAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;

    iget-object v1, p1, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/InAppRequestDatabase;->getSeenNotificationIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$002(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "seenNotificationIds"

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    .line 105
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mIsRunning:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mShouldFinish:Z

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationReceiver runner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/vending/billing/InAppRequestDatabase;

    invoke-direct {v0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mInAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;

    .line 110
    invoke-static {p1, p2}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$002(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$200(Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->maybeCloseActivity(Ljava/lang/String;)V

    return-void
.end method

.method private maybeCloseActivity(Ljava/lang/String;)V
    .locals 5
    .parameter "notifyIds"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mInAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    iget-object v2, v2, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/InAppRequestDatabase;->getSeenNotificationIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, notificationIds:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/vending/billing/MarketBillingService;->isTestNotifyId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-static {v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$000(Lcom/android/vending/billing/InAppBuyPageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-static {v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$100(Lcom/android/vending/billing/InAppBuyPageActivity;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 157
    :cond_0
    iget-boolean v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mIsRunning:Z

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mShouldFinish:Z

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mIsRunning:Z

    .line 133
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mInAppRequestDatabase:Lcom/android/vending/billing/InAppRequestDatabase;

    invoke-virtual {v1}, Lcom/android/vending/billing/InAppRequestDatabase;->close()V

    .line 134
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v1, p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 137
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 140
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mIsRunning:Z

    .line 122
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 144
    if-eqz p2, :cond_0

    const-string v0, "com.android.vending.billing.IN_APP_NOTIFY_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    iget-object v0, v0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    const-string v1, "asset_package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v0, "notification_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->maybeCloseActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mIsRunning:Z

    .line 126
    iget-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mShouldFinish:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 129
    :cond_0
    return-void
.end method

.method public postCloseActivity(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver$1;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public registerReceiver()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.vending.billing.IN_APP_NOTIFY_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    return-void
.end method
