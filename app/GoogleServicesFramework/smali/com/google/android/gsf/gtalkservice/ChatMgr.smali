.class public Lcom/google/android/gsf/gtalkservice/ChatMgr;
.super Ljava/lang/Object;
.source "ChatMgr.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field static final CONSOLIDATION_KEY_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChatListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IChatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mChatSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mGroupChatInvitationListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IGroupChatInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupChatInvitationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IGroupChatInvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupChatInvitations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPendingGroupChatConversions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/ChatSession;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingGroupChatRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mUseBareJidTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 627
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "consolidation_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->CONSOLIDATION_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ChatMgr;Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/ChatMgr;Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    move-result v0

    return v0
.end method

.method private addChatSession(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/ChatSession;)V
    .locals 2
    .parameter "toAddress"
    .parameter "chatSession"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addGroupChatInvitation(Ljava/lang/String;Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 2
    .parameter "room"
    .parameter "invitation"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addGroupChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V
    .locals 1
    .parameter "chatSession"

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addChatSession(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 358
    return-void
.end method

.method private checkConvertExistingChatSession(Ljava/lang/String;)V
    .locals 3
    .parameter "room"

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getGroupChatInvitation(Ljava/lang/String;)Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v1

    .line 497
    .local v1, invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, inviter:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    .line 503
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->prepareConvertToGroupChat(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    goto :goto_0
.end method

.method private createGroupChatRoomName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "private-chat-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@groupchat.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gsf/gtalkservice/ChatSession;
    .locals 11
    .parameter "username"
    .parameter "room"
    .parameter "myNickname"
    .parameter "groupChatNickname"
    .parameter "password"
    .parameter "accountId"

    .prologue
    .line 345
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    move-object v1, p0

    move-wide/from16 v5, p6

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gsf/gtalkservice/ChatSession;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->initialize(ZZ)V

    .line 351
    invoke-virtual {v0, p4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setGroupChatNickname(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addGroupChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 353
    return-object v0
.end method

.method private doHandleInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 1074
    const-string v0, "GTalkService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1081
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getGroupChatInvitation(Ljava/lang/String;)Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1136
    :cond_0
    :goto_1
    return-void

    .line 1075
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got muc invite from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", room="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    monitor-enter v0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1089
    monitor-exit v0

    goto :goto_1

    .line 1091
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    .line 1094
    if-nez v0, :cond_0

    .line 1100
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    .line 1101
    if-nez v0, :cond_5

    .line 1103
    const-string v0, "GTalkService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1106
    :goto_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 1107
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    move-object v1, v0

    .line 1131
    :goto_3
    new-instance v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupContactId()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gtalkservice/GroupChatInvitation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1134
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addGroupChatInvitation(Ljava/lang/String;Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    .line 1135
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    goto :goto_1

    .line 1104
    :cond_4
    const-string v0, "doHandleInvitation: create the group chat session"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1116
    :cond_5
    const-string v1, "GTalkService"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1119
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 1120
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->pickNicknameUsingConvention(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1125
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addGroupChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 1126
    if-eqz v1, :cond_6

    .line 1127
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_6
    move-object v1, v0

    goto :goto_3

    .line 1117
    :cond_7
    const-string v1, "doHandleInvitation: convert to group chat session"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;
    .locals 1
    .parameter "room"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->internalGetChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 28
    .parameter "message"

    .prologue
    .line 634
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v21

    .line 635
    .local v21, from:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v22

    .line 637
    .local v22, packetId:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    :cond_0
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleErrorMessage: from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", has no packet id, bail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 642
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v20

    .line 643
    .local v20, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v14

    .line 644
    .local v14, code:I
    invoke-virtual/range {v20 .. v20}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v19

    .line 646
    .local v19, errMsg:Ljava/lang/String;
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR Message: from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errMsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 651
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v13

    .line 652
    .local v13, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-nez v13, :cond_4

    .line 654
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleErrorMessage: cannot find chat session for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    :cond_4
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/ChatSession;->clearConsolidation()V

    .line 666
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 667
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupContactId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v24

    .line 674
    .local v24, uri:Landroid/net/Uri;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packet_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 675
    .local v8, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 678
    .local v9, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 679
    sget-object v6, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    .line 683
    .local v6, messagesTableUri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v7, Lcom/google/android/gsf/gtalkservice/ChatMgr;->CONSOLIDATION_KEY_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 688
    .local v12, c:Landroid/database/Cursor;
    const-wide/16 v15, 0x0

    .line 690
    .local v15, consolidationKey:J
    if-eqz v12, :cond_6

    .line 692
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 693
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    .line 696
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_6
    const-wide/16 v26, 0x0

    cmp-long v5, v15, v26

    if-eqz v5, :cond_7

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v7, "_id=\'%d\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v12           #c:Landroid/database/Cursor;
    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 707
    .local v18, deletedRowsShouldBeOne:I
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 708
    .local v17, cv:Landroid/content/ContentValues;
    const-string v5, "consolidation_key"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v7, "%s=\'%d\'"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "consolidation_key"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    move-object v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 713
    .local v23, updateCount:I
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #messagesTableUri:Landroid/net/Uri;
    move-result v5

    if-eqz v5, :cond_7

    .line 714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleErrorMessage: consolidationKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deletedRowsShouldBeOne is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; updateCount is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 720
    .end local v17           #cv:Landroid/content/ContentValues;
    .end local v18           #deletedRowsShouldBeOne:I
    .end local v23           #updateCount:I
    :cond_7
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 721
    .local v25, values:Landroid/content/ContentValues;
    const-string v5, "err_code"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string v5, "err_msg"

    move-object/from16 v0, v25

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 724
    .restart local v23       #updateCount:I
    if-nez v23, :cond_8

    .line 725
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "messagesByAcctAndContact"

    const-string v7, "otrMessagesByAcctAndContact"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 729
    :cond_8
    if-nez v23, :cond_9

    .line 730
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleErrorMessage: could not update message with packetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v15           #consolidationKey:J
    .end local v23           #updateCount:I
    .end local v24           #uri:Landroid/net/Uri;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-static/range {v21 .. v21}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 670
    .local v11, bareJid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .restart local v24       #uri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 681
    .end local v11           #bareJid:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    .restart local v6       #messagesTableUri:Landroid/net/Uri;
    goto/16 :goto_2

    .line 696
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v15       #consolidationKey:J
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private handleGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 740
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 746
    .local v0, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 747
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupChatInvitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 751
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->doHandleInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const/4 v1, 0x1

    .line 757
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleGroupChatPresence(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1140
    const-string v0, "GTalkService"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGroupChatPresence from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 1146
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1147
    if-gtz v0, :cond_1

    .line 1148
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupChatPresence: invalid from address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1218
    :goto_0
    return v0

    .line 1152
    :cond_1
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1153
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1154
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1156
    const/4 v1, 0x0

    .line 1158
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    monitor-enter v4

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1160
    if-eqz v0, :cond_8

    .line 1163
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    move v0, v8

    .line 1165
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    if-eqz v0, :cond_6

    .line 1171
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    monitor-enter v1

    .line 1172
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/ChatSession;

    .line 1173
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1175
    if-eqz v0, :cond_4

    .line 1176
    const-string v1, "GTalkService"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1179
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 1180
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1183
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    monitor-enter v3

    .line 1184
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1187
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addGroupChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 1188
    if-eqz v1, :cond_2

    .line 1189
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_3
    move v0, v8

    .line 1206
    goto :goto_0

    .line 1165
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1173
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1177
    :cond_3
    const-string v1, "found pending muc request, convert old chat session to group chat."

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1185
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1192
    :cond_4
    const-string v0, "GTalkService"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1196
    :goto_4
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 1197
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v6

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gsf/gtalkservice/ChatSession;

    goto :goto_3

    .line 1193
    :cond_5
    const-string v0, "found pending muc request, create new group chat session."

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1209
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    .line 1211
    if-nez v0, :cond_7

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGroupChatPresence: drop stale presence update from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    move v0, v6

    .line 1213
    goto/16 :goto_0

    .line 1216
    :cond_7
    invoke-virtual {v0, v3, p2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->groupChatParticipantPresenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    move v0, v8

    .line 1218
    goto/16 :goto_0

    :cond_8
    move-object v5, v1

    move v0, v6

    goto/16 :goto_1
.end method

.method private handlePresenceUpdate(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "from"
    .parameter "presence"

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    .line 1223
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-nez v0, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->handlePresenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0
.end method

.method private internalGetChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;
    .locals 2
    .parameter "toAddr"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gsf/gtalkservice/ChatSession;

    monitor-exit v0

    return-object p0

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isGroupChat(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 769
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    .line 770
    .local v1, messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, from:Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 822
    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    .line 825
    .local v0, mucUser:Lorg/jivesoftware/smackx/packet/MUCUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1232
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void
.end method

.method private notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;)V
    .locals 5
    .parameter "invitation"

    .prologue
    .line 1025
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/ChatMgr$5;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr$5;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Lcom/google/android/gtalkservice/GroupChatInvitation;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 1033
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v1

    .line 1034
    .local v1, notifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 1035
    .local v0, gTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1040
    return-void
.end method

.method private notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1058
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    const/4 v0, 0x1

    .line 1070
    :goto_0
    return v0

    .line 1061
    :catch_0
    move-exception v0

    .line 1064
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatMgr] notifyGroupChatInvitation caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", removing listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->tryRemoveGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V

    .line 1070
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickNicknameUsingConvention(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 411
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 412
    .local v0, atSign:I
    if-ltz v0, :cond_0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 416
    :cond_0
    return-object p1
.end method

.method private prepareConvertToGroupChat(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/ChatSession;)V
    .locals 2
    .parameter "room"
    .parameter "chatSession"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatConversions:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    monitor-exit v0

    .line 519
    return-void

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processIncomingMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 777
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 778
    .local v8, from:Ljava/lang/String;
    const/4 v10, 0x0

    .line 779
    .local v10, nickname:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->isGroupChat(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v9

    .line 781
    .local v9, groupChat:Z
    if-eqz v9, :cond_0

    .line 782
    const/16 v0, 0x2f

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 783
    .local v12, slash:I
    if-ltz v12, :cond_0

    .line 784
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 785
    invoke-virtual {v8, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 789
    .end local v12           #slash:I
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v7

    .line 790
    .local v7, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->extractBuddyUsername(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, buddyJid:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v11

    .line 794
    .local v11, session:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-nez v11, :cond_3

    .line 795
    if-eqz v9, :cond_2

    .line 796
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processIncomingMessage: cannot find group chat session for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_1
    :goto_0
    return-void

    .line 801
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->isGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createChatSession(Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v11

    .line 814
    :cond_3
    if-eqz v9, :cond_4

    .line 815
    invoke-virtual {v11, p1, v8, v10}, Lcom/google/android/gsf/gtalkservice/ChatSession;->onReceiveGroupMessage(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_4
    invoke-virtual {v11, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->onReceiveMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0
.end method

.method private processPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 538
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->handleGroupChatPresence(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)Z

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->handlePresenceUpdate(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0
.end method

.method private removeChatNotification(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 939
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChatNotification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->removeChatNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 943
    return-void
.end method

.method private removeGroupChatInvitation(Ljava/lang/String;)V
    .locals 2
    .parameter "room"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 4
    .parameter

    .prologue
    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 949
    monitor-exit v0

    .line 953
    :goto_0
    return-void

    .line 949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRemoveChatListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryRemoveGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 4
    .parameter

    .prologue
    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1046
    monitor-exit v0

    .line 1050
    :goto_0
    return-void

    .line 1046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGroupInvitationListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 13
    .parameter "listener"

    .prologue
    .line 966
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 967
    :try_start_0
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    .line 968
    .local v8, remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-interface {v8}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    if-ne v11, v12, :cond_0

    .line 970
    monitor-exit v10

    .line 1007
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :cond_1
    :goto_0
    return-void

    .line 974
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 979
    const/4 v7, 0x0

    .line 980
    .local v7, oneInvitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    const/4 v5, 0x0

    .line 982
    .local v5, invitationsCopy:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v11

    .line 985
    :try_start_1
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v9

    .line 987
    .local v9, size:I
    if-nez v9, :cond_3

    .line 988
    monitor-exit v11

    goto :goto_0

    .line 998
    .end local v9           #size:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 975
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #invitationsCopy:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    .end local v7           #oneInvitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    :catchall_1
    move-exception v11

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 991
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #invitationsCopy:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    .restart local v7       #oneInvitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    .restart local v9       #size:I
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 993
    .local v2, c:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gtalkservice/GroupChatInvitation;>;"
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 994
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-object v7, v0

    .line 998
    :goto_1
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1000
    if-eqz v7, :cond_5

    .line 1001
    invoke-direct {p0, p1, v7}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    goto :goto_0

    .line 996
    :cond_4
    :try_start_4
    new-array v10, v9, [Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-interface {v2, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-object v5, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1003
    :cond_5
    move-object v1, v5

    .local v1, arr$:[Lcom/google/android/gtalkservice/GroupChatInvitation;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_1

    aget-object v4, v1, v3

    .line 1004
    .local v4, invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    invoke-direct {p0, p1, v4}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyGroupChatinvitation(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;Lcom/google/android/gtalkservice/GroupChatInvitation;)Z

    .line 1003
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 829
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 831
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 833
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IChatListener;

    .line 834
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 835
    monitor-exit v3

    .line 841
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    monitor-exit v3

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public closeChatSessions(JJJJZ)V
    .locals 23
    .parameter "accountId"
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"

    .prologue
    .line 216
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_1

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeChatSessions: prune chats, expire="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expireForChatsOnOtherClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 223
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    const-string v5, "gtalk_chat_expire_respect_unread_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v14

    .line 227
    .local v14, respectUnreadFlag:Z
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v18, chatsToClose:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/ChatSession;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    move-object v4, v0

    monitor-enter v4

    .line 229
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 230
    .local v20, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/ChatSession;>;"
    :cond_0
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 231
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/gsf/gtalkservice/ChatSession;

    .line 233
    .local v16, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    .line 237
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/ChatSession;->hasChatListeners()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const-string v5, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    const-string v5, "do not prune active chat session"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    .end local v16           #chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    .end local v20           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/ChatSession;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 220
    .end local v14           #respectUnreadFlag:Z
    .end local v18           #chatsToClose:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/ChatSession;>;"
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeChatSessions: close all chats for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .restart local v14       #respectUnreadFlag:Z
    .restart local v16       #chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    .restart local v18       #chatsToClose:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gsf/gtalkservice/ChatSession;>;"
    .restart local v20       #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gsf/gtalkservice/ChatSession;>;"
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-lez v5, :cond_4

    .line 261
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getLastMessageTimestamp()J

    move-result-wide v21

    .line 264
    .local v21, ts:J
    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-gtz v5, :cond_3

    if-nez p9, :cond_4

    .line 266
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isInitiatedByLocal()Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    cmp-long v5, v21, p5

    if-ltz v5, :cond_4

    .line 271
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isForOtherClient()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 274
    cmp-long v5, v21, p7

    if-gez v5, :cond_0

    .line 293
    .end local v21           #ts:J
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .restart local v21       #ts:J
    :cond_5
    if-eqz v14, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/ChatSession;->hasUnreadMessage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 285
    :cond_6
    cmp-long v5, v21, p3

    if-ltz v5, :cond_4

    goto/16 :goto_1

    .line 295
    .end local v16           #chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    .end local v21           #ts:J
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gsf/gtalkservice/ChatSession;

    .line 297
    .local v15, chat:Lcom/google/android/gsf/gtalkservice/ChatSession;
    invoke-virtual {v15}, Lcom/google/android/gsf/gtalkservice/ChatSession;->prepareToClose()V

    .line 298
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    goto :goto_2

    .line 300
    .end local v15           #chat:Lcom/google/android/gsf/gtalkservice/ChatSession;
    :cond_8
    const/16 v17, 0x0

    .line 301
    .local v17, chatsClosed:Z
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_b

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    invoke-static/range {v4 .. v14}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->pruneChats(Landroid/content/ContentResolver;JJJJZZ)I

    move-result v4

    if-lez v4, :cond_9

    .line 305
    const/16 v17, 0x1

    .line 313
    :cond_9
    :goto_3
    if-eqz v17, :cond_a

    .line 314
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyChatClosed(JLjava/lang/String;)V

    .line 316
    :cond_a
    return-void

    .line 308
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->clearAllChats(Landroid/content/ContentResolver;J)I

    move-result v4

    if-lez v4, :cond_9

    .line 309
    const/16 v17, 0x1

    goto :goto_3
.end method

.method convertToGroupChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "chatSession"
    .parameter "nickname"
    .parameter "invitees"

    .prologue
    .line 378
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, room:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->prepareConvertToGroupChat(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 380
    return-void
.end method

.method public createChatSession(Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gsf/gtalkservice/ChatSession;
    .locals 9
    .parameter "username"
    .parameter "contact"
    .parameter "accountId"
    .parameter "initiatedLocally"
    .parameter "asyncInit"

    .prologue
    .line 323
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    move-object v1, p0

    move-wide v5, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gsf/gtalkservice/ChatSession;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnection;JLjava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    invoke-virtual {v0, p5, p6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->initialize(ZZ)V

    .line 332
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addChatSession(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 333
    return-object v0
.end method

.method public createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nickname"
    .parameter "invitees"

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createGroupChatRoomName()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, room:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V

    .line 371
    return-object v0
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "room"
    .parameter "inviter"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeGroupChatInvitation(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    .line 403
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->leave()V

    .line 407
    :cond_0
    return-void
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;
    .locals 1
    .parameter "jid"

    .prologue
    .line 337
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->internalGetChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v0

    return-object v0
.end method

.method getGroupChatInvitation(Ljava/lang/String;)Lcom/google/android/gtalkservice/GroupChatInvitation;
    .locals 2
    .parameter "room"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    monitor-exit v0

    return-object p0

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUserBareJidTimeout()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mUseBareJidTimeoutMs:J

    return-wide v0
.end method

.method public init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "mc"
    .parameter "handler"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mContext:Landroid/content/Context;

    .line 102
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 103
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    .line 104
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->removeOldGroupchatsFromDb(Landroid/content/ContentResolver;J)V

    .line 108
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 111
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "initConnection: set up message packet listeners"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 117
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 119
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 121
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 123
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 126
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatMgr$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/ChatMgr$1;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 144
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 147
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 149
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 151
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 153
    invoke-virtual {p1, p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gtalk_use_barejid_timeout_ms"

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mUseBareJidTimeoutMs:J

    .line 160
    return-void
.end method

.method public inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "roomAddress"
    .parameter "contacts"

    .prologue
    .line 479
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 480
    .local v2, invitee:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, p1, v2, v5}, Lcom/google/android/gsf/gtalkservice/XmppUtils;->sendGroupChatInvitationTo(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v2           #invitee:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "room"
    .parameter "nickname"
    .parameter "password"

    .prologue
    .line 420
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 422
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->pickNicknameUsingConvention(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 428
    :cond_0
    const-string v7, "GTalkService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "joinGroupChatSession: room="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nick="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 433
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v4

    .line 434
    .local v4, session:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-eqz v4, :cond_2

    .line 435
    invoke-virtual {v4, p2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setMyGroupChatNickname(Ljava/lang/String;)V

    .line 440
    :cond_2
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v7, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v7}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 442
    .local v2, joinPresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .local v5, toBuf:Ljava/lang/StringBuilder;
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, toStr:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 449
    new-instance v3, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;-><init>()V

    .line 450
    .local v3, mucInitialPresence:Lorg/jivesoftware/smackx/packet/MUCInitialPresence;
    if-eqz p3, :cond_3

    .line 451
    invoke-virtual {v3, p3}, Lorg/jivesoftware/smackx/packet/MUCInitialPresence;->setPassword(Ljava/lang/String;)V

    .line 455
    :cond_3
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 458
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 461
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getGroupChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v7

    if-nez v7, :cond_4

    .line 462
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :try_start_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mPendingGroupChatRequests:Ljava/util/Map;

    if-eqz p3, :cond_5

    move-object v9, p3

    :goto_0
    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->checkConvertExistingChatSession(Ljava/lang/String;)V

    .line 470
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeGroupChatInvitation(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 476
    :goto_1
    return-void

    .line 466
    :cond_5
    :try_start_3
    const-string v9, ""

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 471
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 472
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "joinGroupChatSession caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method notifyChat(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "from"
    .parameter "message"
    .parameter "notify"

    .prologue
    .line 867
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/ChatMgr$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr$2;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v0

    .line 884
    .local v0, notified:Z
    return-void
.end method

.method notifyChatClosed(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "from"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr$4;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 935
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeChatNotification(JLjava/lang/String;)V

    .line 936
    return-void
.end method

.method notifyChatRead(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "from"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatMgr$3;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr$3;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 909
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeChatNotification(JLjava/lang/String;)V

    .line 910
    return-void
.end method

.method public onLogout(J)V
    .locals 10
    .parameter "accountId"

    .prologue
    const-wide/16 v3, 0x0

    .line 761
    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, v3

    move-wide v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->closeChatSessions(JJJJZ)V

    .line 762
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->clearAllChats(Landroid/content/ContentResolver;J)I

    .line 766
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 17
    .parameter "packet"

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v12

    .line 549
    .local v12, session:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/ImSession;->isLoggedIn()Z

    move-result v14

    if-nez v14, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/jivesoftware/smack/packet/Presence;

    move v14, v0

    if-eqz v14, :cond_2

    .line 555
    move-object/from16 v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v10, v0

    .line 556
    .local v10, presence:Lorg/jivesoftware/smack/packet/Presence;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->processPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0

    .line 557
    .end local v10           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    move v14, v0

    if-eqz v14, :cond_3

    .line 558
    move-object/from16 v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    move-object v2, v0

    .line 559
    .local v2, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/Presence;

    .line 560
    .restart local v10       #presence:Lorg/jivesoftware/smack/packet/Presence;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->processPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1

    .line 562
    .end local v2           #batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/jivesoftware/smack/packet/Message;

    move v14, v0

    if-eqz v14, :cond_7

    .line 564
    move-object/from16 v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    move-object v8, v0

    .line 565
    .local v8, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v9

    .line 570
    .local v9, messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    sget-object v14, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v9, v14, :cond_4

    .line 571
    const-string v14, "don\'t handle messages of type=HEADLINE"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :cond_4
    sget-object v14, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v9, v14, :cond_5

    .line 576
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->handleErrorMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0

    .line 580
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->handleGroupChatInvitation(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getServerAddress()Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, host:Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 590
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->processIncomingMessage(Lorg/jivesoftware/smack/packet/Message;)V

    goto/16 :goto_0

    .line 592
    .end local v6           #host:Ljava/lang/String;
    .end local v8           #message:Lorg/jivesoftware/smack/packet/Message;
    .end local v9           #messageType:Lorg/jivesoftware/smack/packet/Message$Type;
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;

    move v14, v0

    if-eqz v14, :cond_a

    .line 593
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    .line 594
    .local v5, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v5, :cond_8

    .line 595
    const-string v14, "GTalkService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doProcessPacket: received ChatClosed, error="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 599
    :cond_8
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;

    move-object v3, v0

    .line 600
    .local v3, chatClosed:Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;->getUser()Ljava/lang/String;

    move-result-object v13

    .line 602
    .local v13, user:Ljava/lang/String;
    sget-boolean v14, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "doProcessPacket: got ChatClosed, user="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 603
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v4

    .line 604
    .local v4, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-eqz v4, :cond_0

    .line 605
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->closeChat()V

    .line 606
    invoke-virtual {v4, v13}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyChatClosed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    .end local v3           #chatClosed:Lcom/google/android/gsf/gtalkservice/extensions/ChatClosed;
    .end local v4           #chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    .end local v5           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v13           #user:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    move v14, v0

    if-eqz v14, :cond_0

    .line 610
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    .line 611
    .restart local v5       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v5, :cond_b

    .line 612
    const-string v14, "GTalkService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doProcessPacket: received ChatRead, error="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 616
    :cond_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    move-object v11, v0

    .line 617
    .local v11, read:Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;
    invoke-virtual {v11}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;->getUser()Ljava/lang/String;

    move-result-object v13

    .line 619
    .restart local v13       #user:Ljava/lang/String;
    sget-boolean v14, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v14, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "doProcessPacket: got ChatRead, user="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 620
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v4

    .line 621
    .restart local v4       #chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->handleChatRead()V

    goto/16 :goto_0
.end method

.method rejoinRoomsForGroupChats()V
    .locals 6

    .prologue
    .line 524
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v2

    .line 525
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 526
    .local v1, keys:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/ChatSession;

    .line 528
    .local v0, chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v0           #chatSession:Lcom/google/android/gsf/gtalkservice/ChatSession;
    .end local v1           #keys:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #keys:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    return-void
.end method

.method removeChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getToAddress()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, toAddress:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChatSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->log(Ljava/lang/String;)V

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatSessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 194
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeChatSession: failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;

    .line 1017
    .local v1, remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IGroupChatInvitationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mGroupChatInvitationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1022
    .end local v1           #remoteListener:Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
    :cond_1
    return-void
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 844
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 846
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 847
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IChatListener;

    .line 848
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 849
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    monitor-exit v3

    .line 854
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 853
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
