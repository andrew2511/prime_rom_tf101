.class public Lcom/google/android/talk/videochat/VideoChatService;
.super Landroid/app/Service;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;,
        Lcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;,
        Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;
    }
.end annotation


# static fields
.field private static sUnderTest:Z


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCallManager:Lcom/google/android/talk/videochat/CallManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mKeepAliveRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalBinder:Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;

.field private mLocalBound:Z

.field private mNetworkConnectionManager:Lcom/google/android/talk/videochat/NetworkConnectionManager;

.field private final mRemoteBinder:Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;

.field private mRemoteBound:Z

.field private final mSoftRemoteBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;

.field private mStopServiceHandler:Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;

.field private mStopped:Ljava/lang/Boolean;

.field private mVideoChatSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/talk/videochat/VideoChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForGTalkServiceTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 118
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatService$1;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mWaitForGTalkServiceTasks:Ljava/util/List;

    .line 139
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatService$2;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mConnection:Landroid/content/ServiceConnection;

    .line 497
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mLocalBinder:Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;

    .line 501
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatService$4;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mSoftRemoteBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;

    .line 562
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatService$5;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mRemoteBinder:Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;

    .line 841
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;-><init>(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/talk/videochat/VideoChatService$1;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;

    .line 845
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/VideoChatService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/talk/videochat/VideoChatService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatService;->onGTalkServiceBound(Lcom/google/android/gtalkservice/IGTalkService;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->onCallConnected(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->onCallEnding(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/VideoChatService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatService;->runTaskWhenGtalkServiceReady(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->postStopServiceIfSafe()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/VideoChatService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->stopServiceIfSafe()Z

    move-result v0

    return v0
.end method

.method private bindGtalkService()V
    .locals 3

    .prologue
    .line 594
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 598
    return-void
.end method

.method private createSessionKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleIncomingMessageFromIntent(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter "remoteJid"
    .parameter "accountId"
    .parameter "stanzaXml"

    .prologue
    .line 617
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$7;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatService$7;-><init>(Lcom/google/android/talk/videochat/VideoChatService;JLjava/lang/String;Ljava/lang/String;)V

    .line 644
    .local v0, task:Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatService;->runTaskWhenGtalkServiceReady(Ljava/lang/Runnable;)V

    .line 645
    return-void
.end method

.method private handleJingleInfoFromIntent(Ljava/lang/String;)V
    .locals 1
    .parameter "payload"

    .prologue
    .line 678
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/videochat/VideoChatService$9;-><init>(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;)V

    .line 695
    .local v0, task:Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatService;->runTaskWhenGtalkServiceReady(Ljava/lang/Runnable;)V

    .line 696
    return-void
.end method

.method private handleMessageResponseFromIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "remoteJid"
    .parameter "accountId"
    .parameter "original"
    .parameter "response"

    .prologue
    .line 651
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$8;

    move-object v1, p0

    move-object v2, p5

    move-wide v3, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/VideoChatService$8;-><init>(Lcom/google/android/talk/videochat/VideoChatService;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 674
    .local v0, task:Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatService;->runTaskWhenGtalkServiceReady(Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method private handleStartIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, action:Ljava/lang/String;
    const-string v0, "com.google.android.videochat.RECEIVED_MESSAGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 202
    .local v7, extras:Landroid/os/Bundle;
    if-nez v7, :cond_1

    .line 203
    const-string v0, "Talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must include appropriate extras."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_1
    const-string v0, "from"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, from:Ljava/lang/String;
    const-string v0, "accountId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 209
    .local v2, accountId:J
    const-string v0, "message"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, message:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 211
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include from extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    .line 217
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include accountId extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_3
    if-nez v5, :cond_4

    .line 223
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include message extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_4
    invoke-direct {p0, v1, v2, v3, v5}, Lcom/google/android/talk/videochat/VideoChatService;->handleIncomingMessageFromIntent(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v1           #from:Ljava/lang/String;
    .end local v2           #accountId:J
    .end local v5           #message:Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_5
    const-string v0, "com.google.android.gtalkservice.intent.RECEIVE_IQ_RESPONSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 233
    .restart local v7       #extras:Landroid/os/Bundle;
    if-nez v7, :cond_6

    .line 234
    const-string v0, "Talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must include appropriate extras."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_6
    const-string v0, "from"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .restart local v1       #from:Ljava/lang/String;
    const-string v0, "accountId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 240
    .restart local v2       #accountId:J
    const-string v0, "originalStanza"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, original:Ljava/lang/String;
    const-string v0, "message"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .restart local v5       #message:Ljava/lang/String;
    if-nez v1, :cond_7

    .line 244
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include from extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    :cond_7
    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    .line 250
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include accountId extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    :cond_8
    if-nez v5, :cond_9

    .line 256
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include message extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    :cond_9
    if-nez v4, :cond_a

    .line 262
    const-string v0, "Talk:videochat"

    const-string v8, "Intent must include originalStanza extra."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object v0, p0

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatService;->handleMessageResponseFromIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v1           #from:Ljava/lang/String;
    .end local v2           #accountId:J
    .end local v4           #original:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_b
    const-string v0, "com.google.android.talk.JINGLE_INFO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 270
    .restart local v7       #extras:Landroid/os/Bundle;
    if-nez v7, :cond_c

    .line 271
    const-string v0, "Talk:videochat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " must include appropriate extras."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    :cond_c
    const-string v0, "message"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .restart local v5       #message:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/google/android/talk/videochat/VideoChatService;->handleJingleInfoFromIntent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initCallManager()Lcom/google/android/talk/videochat/CallManager;
    .locals 2

    .prologue
    .line 429
    invoke-static {p0}, Lcom/google/android/talk/videochat/CallManager;->getInstance(Lcom/google/android/talk/videochat/VideoChatService;)Lcom/google/android/talk/videochat/CallManager;

    move-result-object v0

    .line 430
    .local v0, cm:Lcom/google/android/talk/videochat/CallManager;
    new-instance v1, Lcom/google/android/talk/videochat/VideoChatService$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatService$3;-><init>(Lcom/google/android/talk/videochat/VideoChatService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallManager;->setCallBoundaryCallback(Lcom/google/android/talk/videochat/CallManager$CallBoundaryCallback;)V

    .line 461
    return-object v0
.end method

.method private onCallConnected(Ljava/lang/String;J)V
    .locals 0
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 476
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->offerUpgradeToFullJidKeepAliveRequest(Ljava/lang/String;J)V

    .line 477
    return-void
.end method

.method private onCallEnding(Ljava/lang/String;J)V
    .locals 0
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 482
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->removeKeepAliveRequest(Ljava/lang/String;J)V

    .line 484
    return-void
.end method

.method private onGTalkServiceBound(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 605
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mWaitForGTalkServiceTasks:Ljava/util/List;

    monitor-enter v2

    .line 606
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 608
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService;->mWaitForGTalkServiceTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 609
    .local v1, task:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 612
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 611
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService;->mWaitForGTalkServiceTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 612
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    return-void
.end method

.method private postStopServiceIfSafe()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 860
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;->removeMessages(I)V

    .line 861
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 862
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopServiceHandler:Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/talk/videochat/VideoChatService$StopServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 863
    return-void
.end method

.method private runTaskWhenGtalkServiceReady(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mWaitForGTalkServiceTasks:Ljava/util/List;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mWaitForGTalkServiceTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    monitor-exit v0

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 787
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private stopServiceIfSafe()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 719
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 720
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatService;->safeToStop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    sget-boolean v2, Lcom/google/android/talk/videochat/VideoChatService;->sUnderTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 726
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/VideoChatService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 732
    :cond_0
    :goto_0
    :try_start_2
    const-string v2, "Talk:videochat"

    const-string v3, "Stopping VideoChatService..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatService;->stopSelf()V

    .line 734
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    .line 735
    monitor-exit v1

    move v1, v5

    .line 740
    :goto_1
    return v1

    .line 727
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 728
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Talk:videochat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem unbinding GtalkService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private terminateAllVideoChatSessions()V
    .locals 4

    .prologue
    .line 773
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 774
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/videochat/VideoChatSession;

    .line 775
    .local v1, session:Lcom/google/android/talk/videochat/VideoChatSession;
    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoChatSession;->terminate()V

    goto :goto_0

    .line 778
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #session:Lcom/google/android/talk/videochat/VideoChatSession;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 777
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 778
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    return-void
.end method


# virtual methods
.method addKeepAliveRequest(Ljava/lang/String;J)V
    .locals 5
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v1

    .line 282
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, sessionKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 286
    const-string v2, "Talk:videochat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add keep-alive for remoteJid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    :goto_0
    monitor-exit v1

    .line 294
    return-void

    .line 290
    :cond_1
    const-string v2, "Talk:videochat"

    const-string v3, "add keep-alive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .end local v0           #sessionKey:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p2}, Lcom/google/android/talk/videochat/CallManager;->dump(Ljava/io/PrintWriter;)V

    .line 190
    return-void
.end method

.method public getNetworkConnectionManager()Lcom/google/android/talk/videochat/NetworkConnectionManager;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mNetworkConnectionManager:Lcom/google/android/talk/videochat/NetworkConnectionManager;

    return-object v0
.end method

.method public getNumKeepAliveRequests()I
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v0

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 871
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVideoChatSession(J)Lcom/google/android/talk/videochat/VideoChatSession;
    .locals 7
    .parameter "accountId"

    .prologue
    const/4 v6, 0x0

    .line 391
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/talk/videochat/VideoChatSession;

    monitor-exit v3

    move-object v3, p0

    .line 424
    :goto_0
    return-object v3

    .line 396
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    if-nez v4, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->initCallManager()Lcom/google/android/talk/videochat/CallManager;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    .line 398
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v5}, Lcom/google/android/talk/videochat/CallManager;->setBluetoothHeadset(Landroid/bluetooth/BluetoothHeadset;)V

    .line 403
    :cond_1
    new-instance v2, Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {v2, p0, v4, p1, p2}, Lcom/google/android/talk/videochat/VideoChatSession;-><init>(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/talk/videochat/CallManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .local v2, videoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;
    const/4 v1, 0x0

    .line 408
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    :try_start_1
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v4, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 414
    if-nez v1, :cond_2

    .line 417
    :try_start_2
    monitor-exit v3

    move-object v3, v6

    goto :goto_0

    .line 409
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 410
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "getImSessionForAccountId caught "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    monitor-exit v3

    move-object v3, v6

    goto :goto_0

    .line 420
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->onImSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V

    .line 422
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    monitor-exit v3

    move-object v3, v2

    goto :goto_0

    .line 425
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v2           #videoChatSession:Lcom/google/android/talk/videochat/VideoChatSession;
    .end local p0
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 876
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mRemoteBound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mLocalBound:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method offerUpgradeToFullJidKeepAliveRequest(Ljava/lang/String;J)V
    .locals 6
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 305
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, username:Ljava/lang/String;
    invoke-direct {p0, v2, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, usernameSessionKey:Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, fullySpecifiedSessionKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v4

    .line 310
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 315
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, sessionKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v1           #sessionKey:Ljava/lang/String;
    :cond_0
    monitor-exit v4

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 363
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    const-class v1, Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 376
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.LOCAL_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mLocalBound:Z

    .line 378
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mLocalBinder:Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;

    .line 385
    :goto_0
    return-object v0

    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mSoftRemoteBinder:Lcom/google/android/talk/videochat/IVideoChatServiceSoftBinder$Stub;

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mRemoteBound:Z

    .line 383
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mRemoteBinder:Lcom/google/android/talk/videochat/IVideoChatServiceBinder$Stub;

    goto :goto_0

    .line 385
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 160
    new-instance v0, Lcom/google/android/talk/videochat/NetworkConnectionManager;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mNetworkConnectionManager:Lcom/google/android/talk/videochat/NetworkConnectionManager;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mVideoChatSessionMap:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    .line 165
    sget-boolean v0, Lcom/google/android/talk/videochat/VideoChatService;->sUnderTest:Z

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->bindGtalkService()V

    .line 171
    :cond_0
    const-string v0, "talk"

    const-string v1, "[VideoChatService] onCreate: acquire BT headset profile"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 745
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 746
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->terminateAllVideoChatSessions()V

    .line 747
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->release()V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mNetworkConnectionManager:Lcom/google/android/talk/videochat/NetworkConnectionManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->stopUsingMobileHipri()V

    .line 753
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 754
    const-string v0, "talk"

    const-string v1, "[VideoChatService] onDestroy: release BT headset profile"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 760
    :cond_1
    return-void
.end method

.method public onNewCallStarting(Ljava/lang/String;J)V
    .locals 0
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->addKeepAliveRequest(Ljava/lang/String;J)V

    .line 468
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mStopped:Ljava/lang/Boolean;

    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatService;->handleStartIntent(Landroid/content/Intent;)V

    .line 180
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 704
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.LOCAL_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mLocalBound:Z

    .line 706
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->stopServiceIfSafe()Z

    .line 714
    :cond_0
    :goto_0
    return v2

    .line 707
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.talk.SOFT_BIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatService;->mRemoteBound:Z

    .line 711
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->stopServiceIfSafe()Z

    goto :goto_0
.end method

.method postOngoingNotification(Ljava/lang/String;JZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x1400

    const/4 v7, 0x0

    .line 798
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 803
    invoke-static {p2, p3, v0}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 805
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 806
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 807
    if-eqz p4, :cond_0

    const v4, 0x7f0200d4

    :goto_0
    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 810
    if-eqz p4, :cond_1

    .line 811
    const v0, 0x7f0c0125

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    const v4, 0x7f0c0126

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-class v4, Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 829
    :goto_1
    invoke-virtual {v3, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 830
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/google/android/talk/videochat/VideoChatService;->startForeground(ILandroid/app/Notification;)V

    .line 831
    return-void

    .line 807
    :cond_0
    const v4, 0x7f0200d3

    goto :goto_0

    .line 819
    :cond_1
    const v4, 0x7f0c0127

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 820
    const v5, 0x7f0c0128

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-class v5, Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "from"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "accountId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v4

    goto :goto_1
.end method

.method public removeKeepAliveRequest(Ljava/lang/String;J)V
    .locals 7
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    const/4 v5, 0x2

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, sessionKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v3

    .line 329
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 331
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v4

    if-gt v4, v5, :cond_1

    .line 332
    const-string v4, "Talk:videochat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove keep-alive for remoteJid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  account: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatService;->stopServiceIfSafe()Z

    .line 356
    return-void

    .line 335
    :cond_1
    :try_start_1
    const-string v4, "Talk:videochat"

    const-string v5, "remove keep-alive"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 338
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, username:Ljava/lang/String;
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->createSessionKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, usernameSessionKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 346
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v4

    if-gt v4, v5, :cond_3

    .line 347
    const-string v4, "Talk:videochat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove keep-alive for remoteJid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  account: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_3
    const-string v4, "Talk:videochat"

    const-string v5, "remove keep-alive"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method removeOngoingNotification()V
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatService;->stopForeground(Z)V

    .line 839
    return-void
.end method

.method public requestLocalVideoChatSession(JLcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;)V
    .locals 1
    .parameter "accountId"
    .parameter "callback"

    .prologue
    .line 585
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatService$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService$6;-><init>(Lcom/google/android/talk/videochat/VideoChatService;JLcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatService;->runTaskWhenGtalkServiceReady(Ljava/lang/Runnable;)V

    .line 591
    return-void
.end method

.method public safeToStop()Z
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    monitor-enter v0

    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mKeepAliveRequests:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mLocalBound:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatService;->mRemoteBound:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
