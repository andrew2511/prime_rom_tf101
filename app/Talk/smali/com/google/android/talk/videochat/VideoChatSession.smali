.class public Lcom/google/android/talk/videochat/VideoChatSession;
.super Lcom/google/android/talk/videochat/IVideoChatSession$Stub;
.source "VideoChatSession.java"


# instance fields
.field mAccountId:J

.field mCallManager:Lcom/google/android/talk/videochat/CallManager;

.field mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mJingleInfoStanzaListener:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

.field mService:Lcom/google/android/talk/videochat/VideoChatService;

.field private mSessionStanzaListener:Lcom/google/android/gtalkservice/ISessionStanzaListener;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;Lcom/google/android/talk/videochat/CallManager;J)V
    .locals 1
    .parameter "service"
    .parameter "cm"
    .parameter "accountId"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/talk/videochat/IVideoChatSession$Stub;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatSession$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatSession$1;-><init>(Lcom/google/android/talk/videochat/VideoChatSession;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mSessionStanzaListener:Lcom/google/android/gtalkservice/ISessionStanzaListener;

    .line 54
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatSession$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatSession$2;-><init>(Lcom/google/android/talk/videochat/VideoChatSession;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mJingleInfoStanzaListener:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    .line 71
    iput-wide p3, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    .line 72
    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    .line 73
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mService:Lcom/google/android/talk/videochat/VideoChatService;

    .line 74
    return-void
.end method

.method private getLocalJid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->getJid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    :goto_0
    return-object v1

    .line 303
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VideoChatSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem getting the local jid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onNewCallStarting(Ljava/lang/String;J)V
    .locals 3
    .parameter "remoteJid"
    .parameter "accountId"

    .prologue
    .line 188
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 189
    const-string v0, "VideoChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewCallStarting: remoteJid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mService:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/talk/videochat/VideoChatService;->onNewCallStarting(Ljava/lang/String;J)V

    .line 195
    return-void

    .line 191
    :cond_0
    const-string v0, "VideoChatSession"

    const-string v1, "onNewCallStarting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acceptIncomingCall(Ljava/lang/String;)Z
    .locals 4
    .parameter "remoteJid"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatSession;->getLocalJid()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/talk/videochat/CallManager;->acceptCall(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public addRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/CallManager;->addCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 79
    return-void
.end method

.method public addRemoteChatListener(Ljava/lang/String;Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "remoteBareJid"
    .parameter "listener"

    .prologue
    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2, p1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 93
    .local v0, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p2}, Lcom/google/android/gtalkservice/IChatSession;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 101
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :goto_0
    return-void

    .line 96
    .restart local v0       #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :cond_0
    const-string v2, "VideoChatSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No chat session for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 99
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "VideoChatSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught remote exception while adding IChatListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declineIncomingCall(Ljava/lang/String;)Z
    .locals 1
    .parameter "remoteJid"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/CallManager;->declineCall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->getBluetoothState()I

    move-result v0

    return v0
.end method

.method public getConnectedCallRemoteJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLibjingle()Lcom/google/android/talk/videochat/Libjingle;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->getLibjingle()Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v0

    return-object v0
.end method

.method public handleIncomingMessage(Ljava/lang/String;Lcom/google/android/talk/util/SessionStanzaParser;)V
    .locals 6
    .parameter "remoteJid"
    .parameter "stanza"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatSession;->getLocalJid()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->handleIncomingMessage(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/talk/util/SessionStanzaParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "initiate"

    iget-object v1, p2, Lcom/google/android/talk/util/SessionStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->onNewCallStarting(Ljava/lang/String;J)V

    .line 283
    :cond_0
    return-void
.end method

.method public handleMessageResponse(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "remoteJid"
    .parameter "accountId"
    .parameter "original"
    .parameter "response"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->handleMessageResponse(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public initiateVideoChat(Ljava/lang/String;)Z
    .locals 6
    .parameter "remoteJid"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatSession;->getLocalJid()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    sget-object v5, Lcom/google/android/talk/videochat/CallManager$Mode;->VOICE_AND_VIDEO:Lcom/google/android/talk/videochat/CallManager$Mode;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->initiateCall(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/talk/videochat/CallManager$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->onNewCallStarting(Ljava/lang/String;J)V

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initiateVoiceChat(Ljava/lang/String;)Z
    .locals 6
    .parameter "remoteJid"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatSession;->getLocalJid()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    sget-object v5, Lcom/google/android/talk/videochat/CallManager$Mode;->VOICE_ONLY:Lcom/google/android/talk/videochat/CallManager$Mode;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->initiateCall(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/talk/videochat/CallManager$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->onNewCallStarting(Ljava/lang/String;J)V

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isInitiatingCall()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->isInitiatingCall()Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->isMute()Z

    move-result v0

    return v0
.end method

.method public onImSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 4
    .parameter "session"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 124
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    iget-wide v1, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/CallManager;->setImSession(JLcom/google/android/gtalkservice/IImSession;)V

    .line 125
    return-void
.end method

.method public removeRemoteCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/CallManager;->removeCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 84
    return-void
.end method

.method public removeRemoteChatListener(Ljava/lang/String;Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "remoteBareJid"
    .parameter "listener"

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2, p1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    .line 106
    .local v0, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p2}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 115
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :goto_0
    return-void

    .line 109
    .restart local v0       #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :cond_0
    const-string v2, "VideoChatSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No chat session for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 112
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "VideoChatSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught remote exception while removing IChatListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestCallStateUpdate()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->requestCallStateUpdate()V

    .line 88
    return-void
.end method

.method public setImageStabilizationLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/CallManager;->setImageStabilizationLevel(I)V

    .line 231
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "mute"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/CallManager;->setMute(Z)V

    .line 244
    return-void
.end method

.method public setUseBluetooth(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->turnOnBluetooth()V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->turnOffBluetooth()V

    goto :goto_0
.end method

.method public terminate()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public terminateChat(Ljava/lang/String;)V
    .locals 3
    .parameter "remoteJid"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/talk/ActivityUtils;->isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const-string v0, "VideoChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateChat: mismatch with call remote address, remoteJid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  in-call jid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/CallManager;->getConnectedCallRemoteJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/CallManager;->terminateCall()Z

    goto :goto_0
.end method
