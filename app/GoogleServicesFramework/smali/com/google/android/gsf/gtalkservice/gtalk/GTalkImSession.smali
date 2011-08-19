.class public Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;
.super Lcom/google/android/gsf/gtalkservice/ImSession;
.source "GTalkImSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession$1;
    }
.end annotation


# instance fields
.field private mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

.field private mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
    .locals 0
    .parameter "connectionContext"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    .line 50
    return-void
.end method

.method private isLoginAttempted()Z
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    .line 190
    .local v0, available:Z
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x1

    monitor-exit p0

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 195
    .end local v0           #available:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 461
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkImSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method private saveStatusList(Ljava/util/List;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/gtalkservice/Presence$Show;)V
    .locals 4
    .parameter
    .parameter "p"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gtalkservice/Presence;",
            "Lcom/google/android/gtalkservice/Presence$Show;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 172
    :cond_0
    return-void

    .line 167
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    .local v0, count:I
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, s:Ljava/lang/String;
    invoke-virtual {p2, p3, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 168
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private translateSharedPresence(Lcom/google/android/gtalkservice/Presence;)Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    .locals 2
    .parameter "p"

    .prologue
    .line 368
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lcom/google/android/gtalkservice/Presence;)V

    .line 369
    .local v0, ss:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setTo(Ljava/lang/String;)V

    .line 370
    return-object v0
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 380
    return-void
.end method

.method public addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 435
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 436
    return-void
.end method

.method public blockContact(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    .line 395
    .local v0, rosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->blockContact(JLjava/lang/String;)V

    .line 396
    return-void
.end method

.method public clearContactFlags(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    .line 410
    .local v0, rosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->clearContactFlags(JLjava/lang/String;)V

    .line 411
    return-void
.end method

.method public closeAllChatSessions()V
    .locals 10

    .prologue
    const-wide/16 v3, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 445
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    const/4 v9, 0x1

    move-wide v5, v3

    move-wide v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->closeChatSessions(JJJJZ)V

    .line 446
    return-void
.end method

.method public createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "nickname"
    .parameter "contacts"

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 415
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 416
    return-void
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "roomAddress"
    .parameter "inviter"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 425
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactNickname(JLjava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideContact(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    .line 405
    .local v0, rosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->hideContact(JLjava/lang/String;)V

    .line 406
    return-void
.end method

.method public hostSessionConnectionStateChanged(II)V
    .locals 0
    .parameter "state"
    .parameter "error"

    .prologue
    .line 375
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 58
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mSharedStatusPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 64
    :cond_1
    return-void
.end method

.method public inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "roomAddress"
    .parameter "contacts"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 430
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "roomAddress"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 420
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public login(Ljava/lang/String;Z)V
    .locals 9
    .parameter "username"
    .parameter "autoLogin"

    .prologue
    const/4 v8, 0x1

    .line 199
    const/4 v3, 0x0

    .line 202
    .local v3, notifyConnState:Z
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v5

    new-instance v6, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 207
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setLastLoginState(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    .line 213
    .local v2, hostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    .line 214
    .local v1, connState:I
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v0

    .line 216
    .local v0, connError:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hostConn.connState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hostConn.error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 220
    const/4 v4, 0x0

    .line 222
    .local v4, requestRoster:Z
    packed-switch v1, :pswitch_data_0

    .line 255
    :pswitch_0
    const/4 v4, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendHeartbeatToServer()Z

    .line 264
    :goto_0
    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestRoster()V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->onLoggedIn()V

    .line 268
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {p0, v1, v0, v8}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setConnectionStateAndError(IIZ)V

    .line 276
    :cond_1
    :goto_1
    return-void

    .line 224
    :pswitch_1
    const/4 v3, 0x1

    .line 228
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestToRefreshAuthToken()V

    goto :goto_0

    .line 268
    .end local v0           #connError:I
    .end local v1           #connState:I
    .end local v2           #hostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .end local v4           #requestRoster:Z
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 233
    .restart local v0       #connError:I
    .restart local v1       #connState:I
    .restart local v2       #hostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .restart local v4       #requestRoster:Z
    :pswitch_2
    if-ne v1, v8, :cond_3

    .line 235
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connect()Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    .line 237
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v0

    .line 246
    :goto_2
    const/4 v3, 0x1

    .line 247
    const/4 v4, 0x1

    .line 248
    goto :goto_0

    .line 239
    :cond_2
    const/4 v1, 0x2

    .line 240
    const/4 v0, 0x0

    goto :goto_2

    .line 244
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 251
    :pswitch_3
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v5, :cond_4

    const-string v5, "login: already ONLINE, no-op"

    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 252
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public logout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    new-instance v2, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setLastLoginState(Z)V

    .line 290
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->isLoginAttempted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    const-string v1, "GTalkService"

    const-string v2, "[GTalkImSession] logout: not logged in"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit p0

    .line 314
    :goto_0
    return-void

    .line 294
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const-string v1, "logout: send unavailable presence"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 297
    new-instance v1, Lcom/google/android/gtalkservice/Presence;

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3, v4}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setAndSendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, changed:Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v1

    .line 304
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 305
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setConnectionState(IZ)Z

    move-result v0

    .line 307
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->notifyConnectionListeners()V

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->onLoggedOut()V

    goto :goto_0

    .line 294
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 307
    .restart local v0       #changed:Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onLoggedIn()V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->onLoggedIn()V

    .line 280
    return-void
.end method

.method protected onLoggedOut()V
    .locals 5

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->onLoggedOut()V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    .line 322
    .local v0, hostContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->setRosterFetched(Z)V

    .line 326
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->onLoggedOut()V

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 332
    return-void
.end method

.method public pinContact(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    .line 400
    .local v0, rosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->pinContact(JLjava/lang/String;)V

    .line 401
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 14
    .parameter "packet"

    .prologue
    const/4 v13, 0x1

    .line 67
    instance-of v10, p1, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    if-eqz v10, :cond_8

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    move-object v5, v0

    .line 71
    .local v5, sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    new-instance v3, Lcom/google/android/gtalkservice/Presence;

    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v12

    invoke-direct {v3, v13, v10, v11, v12}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    .line 74
    .local v3, presence:Lcom/google/android/gtalkservice/Presence;
    const/4 v4, 0x0

    .line 81
    .local v4, saveToDefault:Z
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusMax()I

    move-result v9

    .line 82
    .local v9, statusMax:I
    if-eqz v9, :cond_9

    .line 83
    invoke-virtual {v3, v9}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    .line 84
    const/4 v4, 0x1

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusListMax()I

    move-result v8

    .line 90
    .local v8, statusListMax:I
    if-eqz v8, :cond_a

    .line 91
    invoke-virtual {v3, v8}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    .line 96
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusListContentsMax()I

    move-result v7

    .line 97
    .local v7, statusListContentsMax:I
    if-eqz v7, :cond_b

    .line 98
    invoke-virtual {v3, v7}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    .line 103
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->hasStatusMinVersion()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 104
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatusMinVersion()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_c

    move v10, v13

    :goto_3
    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    .line 110
    :cond_3
    :goto_4
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getDefaultStatusList()Ljava/util/List;

    move-result-object v10

    sget-object v11, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-direct {p0, v10, v3, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->saveStatusList(Ljava/util/List;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 111
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getDndStatusList()Ljava/util/List;

    move-result-object v10

    sget-object v11, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-direct {p0, v10, v3, v11}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->saveStatusList(Ljava/util/List;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 114
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getShow()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, show:Ljava/lang/String;
    if-eqz v6, :cond_e

    const-string v10, "dnd"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 116
    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 121
    :goto_5
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->isInvisible()Z

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 125
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_4

    .line 126
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 130
    :cond_4
    if-eqz v4, :cond_5

    .line 131
    new-instance v10, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v10, v3}, Lcom/google/android/gtalkservice/Presence;-><init>(Lcom/google/android/gtalkservice/Presence;)V

    iput-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 141
    .local v1, intendedPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v2

    .line 147
    .local v2, oldShow:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    if-eq v2, v10, :cond_6

    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v2, v10, :cond_f

    .line 148
    :cond_6
    sget-boolean v10, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v10, :cond_7

    .line 149
    const-string v10, "User is IDLE. stash the new shared presence away for later"

    invoke-direct {p0, v10}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->log(Ljava/lang/String;)V

    .line 151
    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setSharedPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 158
    .end local v1           #intendedPresence:Lcom/google/android/gtalkservice/Presence;
    .end local v2           #oldShow:Lcom/google/android/gtalkservice/Presence$Show;
    .end local v3           #presence:Lcom/google/android/gtalkservice/Presence;
    .end local v4           #saveToDefault:Z
    .end local v5           #sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    .end local v6           #show:Ljava/lang/String;
    .end local v7           #statusListContentsMax:I
    .end local v8           #statusListMax:I
    .end local v9           #statusMax:I
    :cond_8
    :goto_6
    return-void

    .line 85
    .restart local v3       #presence:Lcom/google/android/gtalkservice/Presence;
    .restart local v4       #saveToDefault:Z
    .restart local v5       #sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    .restart local v9       #statusMax:I
    :cond_9
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_0

    .line 86
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    goto/16 :goto_0

    .line 92
    .restart local v8       #statusListMax:I
    :cond_a
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_1

    .line 93
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getStatusListMax()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    goto/16 :goto_1

    .line 99
    .restart local v7       #statusListContentsMax:I
    :cond_b
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_2

    .line 100
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    goto/16 :goto_2

    .line 104
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 106
    :cond_d
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    if-eqz v10, :cond_3

    .line 107
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->mDefaultPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    goto/16 :goto_4

    .line 118
    .restart local v6       #show:Ljava/lang/String;
    :cond_e
    sget-object v10, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v3, v10}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    goto/16 :goto_5

    .line 153
    .restart local v1       #intendedPresence:Lcom/google/android/gtalkservice/Presence;
    .restart local v2       #oldShow:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_f
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifySelfPresenceChanged()Z

    goto :goto_6
.end method

.method public pruneOldChatSessions(JJJZ)V
    .locals 10
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 453
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->closeChatSessions(JJJJZ)V

    .line 458
    return-void
.end method

.method public removeContact(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->removeContact(JLjava/lang/String;)V

    .line 391
    return-void
.end method

.method public removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 440
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 441
    return-void
.end method

.method protected translatePresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 4
    .parameter "presence"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 341
    .local v0, p:Lorg/jivesoftware/smack/packet/Packet;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->translateSharedPresence(Lcom/google/android/gtalkservice/Presence;)Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    move-result-object v0

    .line 359
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->translateXmppPresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 363
    :cond_1
    return-object v0

    .line 345
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 347
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession$1;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;->translateSharedPresence(Lcom/google/android/gtalkservice/Presence;)Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    move-result-object v0

    .line 351
    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
