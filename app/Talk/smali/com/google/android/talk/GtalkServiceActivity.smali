.class public abstract Lcom/google/android/talk/GtalkServiceActivity;
.super Landroid/app/Activity;
.source "GtalkServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;
    }
.end annotation


# static fields
.field private static sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field protected final mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field protected mLogLevel:I

.field private mOnSessionCreatedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mSessionDispatchWindowOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mLogLevel:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mLogLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 172
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GtalkServiceActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {p1, v0}, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;->onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract createImSession(Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IImSession;
.end method

.method protected createListeners()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    .line 135
    sget-object v0, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/talk/GtalkServiceActivity;->sInterceptingOnSessionCreatedListener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->registerForServiceStateChanged()V

    .line 141
    :cond_1
    return-void
.end method

.method protected dispatchSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/google/android/talk/GtalkServiceActivity;->mOnSessionCreatedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;

    .line 95
    .local v1, listener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;
    invoke-interface {v1, p1}, Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;->onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    goto :goto_0

    .line 97
    .end local v1           #listener:Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;
    :cond_0
    return-void
.end method

.method public getApp()Lcom/google/android/talk/TalkApp;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    if-nez v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedStates"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->createListeners()V

    .line 129
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 156
    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 157
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eq v1, v0, :cond_1

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->handleDisconnectedService()V

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->registerForServiceStateChanged()V

    .line 162
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 148
    invoke-static {}, Lcom/google/android/talk/TalkApp;->refreshTalkLogLevel()I

    .line 149
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mLogLevel:I

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->unregisterForServiceStateChanged()V

    .line 168
    return-void
.end method

.method protected registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    .line 33
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/GtalkServiceActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/GtalkServiceActivity$1;-><init>(Lcom/google/android/talk/GtalkServiceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method protected requestServiceStateUpdate()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 55
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->serviceStateChanged()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->registerForServiceStateChanged()V

    goto :goto_0
.end method

.method protected serviceStateChanged()V
    .locals 3

    .prologue
    .line 69
    iget-boolean v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 75
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_2

    .line 76
    const-string v1, "service connected"

    invoke-direct {p0, v1}, Lcom/google/android/talk/GtalkServiceActivity;->log(Ljava/lang/String;)V

    .line 77
    iput-object v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/android/talk/GtalkServiceActivity;->createImSession(Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 79
    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v1, :cond_1

    .line 80
    const-string v1, "talk"

    const-string v2, "createImSession failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GtalkServiceActivity;->dispatchSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "service disconnected"

    invoke-direct {p0, v1}, Lcom/google/android/talk/GtalkServiceActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/GtalkServiceActivity;->mSessionDispatchWindowOpen:Z

    .line 43
    invoke-virtual {p0}, Lcom/google/android/talk/GtalkServiceActivity;->getApp()Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/GtalkServiceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    .line 44
    return-void
.end method
