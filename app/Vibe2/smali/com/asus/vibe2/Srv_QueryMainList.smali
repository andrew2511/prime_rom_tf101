.class public Lcom/asus/vibe2/Srv_QueryMainList;
.super Landroid/app/Service;
.source "Srv_QueryMainList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;

.field private mHandler:Landroid/os/Handler;

.field private mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

.field private useVibeTestPremiumAddress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;-><init>(Lcom/asus/vibe2/Srv_QueryMainList;)V

    iput-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mBinder:Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->useVibeTestPremiumAddress:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 31
    new-instance v0, Lcom/asus/vibe2/Srv_QueryMainList$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Srv_QueryMainList$1;-><init>(Lcom/asus/vibe2/Srv_QueryMainList;)V

    iput-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/asus/vibe2/Srv_QueryMainList;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Srv_QueryMainList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Srv_QueryMainList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->useVibeTestPremiumAddress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/asus/vibe2/Srv_QueryMainList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->useVibeTestPremiumAddress:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7
    .parameter "intent"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 133
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onBind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v1}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 136
    iput-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 139
    :cond_1
    const-string v1, "com.asus.vibe.region"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, dummyRegion:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    sput-object v0, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    .line 143
    :cond_2
    sget-object v1, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    invoke-virtual {v2, v6, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mBinder:Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;

    return-object v1

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v4, v1}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 120
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Srv_QueryMainList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/vibe2/Vibe;->setContext(Landroid/content/Context;)V

    .line 122
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 127
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 153
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStartCommand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 159
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUnbind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeApiTask;->stop()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Srv_QueryMainList;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 164
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
