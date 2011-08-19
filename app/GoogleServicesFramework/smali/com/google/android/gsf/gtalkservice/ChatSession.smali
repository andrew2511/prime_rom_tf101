.class public Lcom/google/android/gsf/gtalkservice/ChatSession;
.super Ljava/lang/Object;
.source "ChatSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;,
        Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;
    }
.end annotation


# static fields
.field static final CHATS_ID_PROJECTION:[Ljava/lang/String;

.field private static final EXISTING_CHAT_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_HISTORY_PROJECTION:[Ljava/lang/String;

.field static final UNSENT_COMPOSED_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mCachedStatusMessage:Ljava/lang/String;

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

.field private mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

.field private mChatSelectionArgs:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mForOtherClient:Z

.field private mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mGroupChat:Z

.field private mGroupChatNickname:Ljava/lang/String;

.field private mGroupChatPassword:Ljava/lang/String;

.field private mGroupContactId:J

.field private mGroupchatParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

.field private mInitialized:Z

.field private mInitiatedbyLocal:Z

.field private mLastChatReceivedTsMs:J

.field private mLastMessageTimestamp:J

.field private mLastUnreadMessage:Ljava/lang/String;

.field private mMyGroupChatNickname:Ljava/lang/String;

.field private mOffTheRecordValue:I

.field private mOtrCursor:Landroid/database/Cursor;

.field private mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

.field private mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStatusMessageReadFromDb:Z

.field private mTo:Ljava/lang/String;

.field private mToBareJid:Ljava/lang/String;

.field private mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "last_unread_message"

    aput-object v1, v0, v2

    const-string v1, "local"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->EXISTING_CHAT_PROJECTION:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->MESSAGE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "unsent_composed_message"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->UNSENT_COMPOSED_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->CHATS_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnection;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "chatMgr"
    .parameter "context"
    .parameter "resolver"
    .parameter "connection"
    .parameter "accountId"
    .parameter "username"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatSelectionArgs:[Ljava/lang/String;

    .line 112
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    .line 1010
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gsf/gtalkservice/ChatSession$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    .line 1011
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gsf/gtalkservice/ChatSession$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    .line 174
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create ChatSession for contact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    .line 179
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mContext:Landroid/content/Context;

    .line 180
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    .line 181
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 182
    iput-wide p5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mAccountId:J

    .line 183
    iput-object p7, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUsername:Ljava/lang/String;

    .line 184
    iput-object p8, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    .line 185
    invoke-static {p8}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mToBareJid:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "chatMgr"
    .parameter "context"
    .parameter "resolver"
    .parameter "connection"
    .parameter "accountId"
    .parameter "username"
    .parameter "room"
    .parameter "myGroupChatNickname"
    .parameter "password"

    .prologue
    .line 197
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gsf/gtalkservice/ChatSession;-><init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnection;JLjava/lang/String;Ljava/lang/String;)V

    .line 199
    iput-object p9, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, p9}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setGroupChatNickname(Ljava/lang/String;)V

    .line 201
    iput-object p10, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatPassword:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setIsGroupChat(Z)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ChatSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mToBareJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/ChatSession;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/ChatSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/gtalkservice/ChatSession;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyConversionToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyConvertedToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyWillConvertToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gsf/gtalkservice/ChatSession;Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyParticipantPresence(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/ChatSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->queryOtrCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/ChatSession;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->checkInitialOtrStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/ChatSession;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getContactBareAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/ChatSession;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->EXISTING_CHAT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/gsf/gtalkservice/ChatSession;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mInitiatedbyLocal:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->logEmptyCursor(Ljava/lang/String;)V

    return-void
.end method

.method private addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1794
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1795
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChatToDatabase: bad contactId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :goto_0
    return-void

    .line 1800
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1801
    const-string v0, "contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1802
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addChatToDatabase(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method private addChatToDatabase(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1830
    iput-boolean p6, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mForOtherClient:Z

    .line 1832
    const-string v1, "otherClient"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1833
    const-string v1, "local"

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mInitiatedbyLocal:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1834
    const-string v1, "jid_resource"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string v1, "groupchat"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1840
    const-string v1, "last_message_date"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p5, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1844
    if-nez p4, :cond_2

    .line 1845
    if-eqz p6, :cond_3

    .line 1850
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1851
    const-string v1, "last_unread_message"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :goto_3
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1858
    return-void

    .line 1833
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1840
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastMessageTimestamp:J

    goto :goto_1

    .line 1853
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1854
    const-string v1, "last_unread_message"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v0, p3

    goto :goto_2
.end method

.method private addChatToDatabase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1812
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChatToDatabase: insert new chat for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forOtherClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1817
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1818
    const-string v0, "username"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const-string v0, "account"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1820
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addChatToDatabase(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1822
    return-void
.end method

.method private addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1680
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1681
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addGroupMessageToDb: invalid group id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1685
    const-string v0, "nickname"

    if-nez p1, :cond_4

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v0, "body"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const-string v0, "type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1688
    const-string v0, "is_muc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, p0

    move-wide v2, p4

    move-wide v4, p6

    move v6, p8

    .line 1690
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addTimeStamp(Landroid/content/ContentValues;JJI)V

    .line 1692
    if-eqz p2, :cond_1

    .line 1693
    const-string v0, "packet_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p11, v2

    if-eqz v0, :cond_2

    .line 1697
    const-string v0, "consolidation_key"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1707
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p8}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOtrMessageType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1708
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-static {v2, v3}, Lcom/google/android/gsf/TalkContract$Messages;->getOtrMessagesContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v0

    .line 1713
    :goto_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v2, p1

    .line 1685
    goto :goto_0

    .line 1710
    :cond_5
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-static {v2, v3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized addGroupMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 38
    .parameter "msg"
    .parameter "contact"
    .parameter "nickname"
    .parameter "outgoing"

    .prologue
    .line 1554
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 1556
    .local v8, body:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_0

    .line 1557
    const/4 v5, 0x0

    .line 1652
    :goto_0
    monitor-exit p0

    return-object v5

    .line 1560
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 1561
    .local v37, room:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v14

    .line 1562
    .local v14, accountId:J
    if-eqz p4, :cond_1

    const/4 v5, 0x0

    move v13, v5

    .line 1564
    .local v13, messageType:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v9

    .line 1567
    .local v9, realDate:J
    const-wide/16 v5, 0x0

    cmp-long v5, v9, v5

    if-nez v5, :cond_2

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v11, v9

    .line 1573
    .local v11, date:J
    :goto_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0

    move-object/from16 v31, v5

    .line 1579
    .local v31, consolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide v2, v11

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->checkMatch(Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;JLjava/lang/String;)Z

    move-result v18

    .line 1581
    .local v18, match:Z
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v16, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v17}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;

    move-result-object v29

    .line 1591
    .local v29, retVal:Landroid/net/Uri;
    if-nez v29, :cond_4

    .line 1592
    const/4 v5, 0x0

    goto :goto_0

    .line 1562
    .end local v9           #realDate:J
    .end local v11           #date:J
    .end local v13           #messageType:I
    .end local v18           #match:Z
    .end local v29           #retVal:Landroid/net/Uri;
    .end local v31           #consolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    :cond_1
    const/4 v5, 0x1

    move v13, v5

    goto :goto_1

    .line 1570
    .restart local v9       #realDate:J
    .restart local v13       #messageType:I
    :cond_2
    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->modifyTimeStampIfNecessary(J)J

    move-result-wide v11

    .restart local v11       #date:J
    goto :goto_2

    .line 1573
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0

    move-object/from16 v31, v5

    goto :goto_3

    .line 1595
    .restart local v18       #match:Z
    .restart local v29       #retVal:Landroid/net/Uri;
    .restart local v31       #consolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    :cond_4
    const/16 v30, 0x0

    .line 1596
    .local v30, previous:Landroid/net/Uri;
    if-eqz p4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0

    move-object/from16 v32, v5

    .line 1598
    .local v32, otherConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    :goto_4
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1602
    :try_start_2
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    move-wide/from16 v35, v0

    .line 1603
    .local v35, prevMeTime:J
    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    move-wide/from16 v33, v0

    .line 1605
    .local v33, otherTime:J
    if-eqz v18, :cond_5

    .line 1606
    cmp-long v5, v35, v33

    if-lez v5, :cond_7

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 1626
    :cond_5
    :goto_5
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 1627
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1628
    move-wide v0, v11

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    .line 1629
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousGroupchatNickname:Ljava/lang/String;

    .line 1630
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1636
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p3

    move-object v3, v8

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->updateGroupChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1638
    const/16 v20, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v31

    move-object/from16 v19, p3

    move-object/from16 v21, v8

    move/from16 v22, p4

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v14

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gsf/gtalkservice/ChatSession;->consolidate(Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLandroid/net/Uri;Landroid/net/Uri;)V

    .line 1651
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object/from16 v5, v29

    .line 1652
    goto/16 :goto_0

    .line 1596
    .end local v32           #otherConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    .end local v33           #otherTime:J
    .end local v35           #prevMeTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v32, v5

    goto :goto_4

    .line 1606
    .restart local v32       #otherConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    .restart local v33       #otherTime:J
    .restart local v35       #prevMeTime:J
    :cond_7
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_5

    .line 1630
    .end local v33           #otherTime:J
    .end local v35           #prevMeTime:J
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1554
    .end local v8           #body:Ljava/lang/String;
    .end local v9           #realDate:J
    .end local v11           #date:J
    .end local v13           #messageType:I
    .end local v14           #accountId:J
    .end local v18           #match:Z
    .end local v29           #retVal:Landroid/net/Uri;
    .end local v30           #previous:Landroid/net/Uri;
    .end local v31           #consolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    .end local v32           #otherConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;
    .end local v37           #room:Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "nickname"
    .parameter "body"
    .parameter "messageType"

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1657
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1661
    .local v4, now:J
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v6, v4

    move/from16 v8, p3

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;

    .line 1670
    return-void
.end method

.method private declared-synchronized addMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 31
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1212
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v7

    .line 1215
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_0

    .line 1216
    const/4 v5, 0x0

    .line 1313
    :goto_0
    monitor-exit p0

    return-object v5

    .line 1219
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v14

    .line 1220
    if-eqz p3, :cond_2

    const/4 v5, 0x0

    move v9, v5

    .line 1223
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v5

    .line 1226
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-nez v10, :cond_3

    .line 1227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v12, v5

    move-wide v10, v5

    .line 1232
    :goto_2
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0

    move-object/from16 v20, v5

    .line 1238
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide v2, v12

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->checkMatch(Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;JLjava/lang/String;)Z

    move-result v18

    .line 1240
    const-string v5, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMessageToDatabase: call doXXX w/ bareJid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", consolidationKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide/from16 v16, v0

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1248
    :cond_1
    const-wide/16 v16, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v17}, Lcom/google/android/gsf/gtalkservice/ChatSession;->doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJ)Landroid/net/Uri;

    move-result-object v29

    .line 1258
    if-nez v29, :cond_5

    .line 1259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMessageToDatabase: failed, probably a dup! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->toLogString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1260
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1220
    :cond_2
    const/4 v5, 0x1

    move v9, v5

    goto/16 :goto_1

    .line 1229
    :cond_3
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->modifyTimeStampIfNecessary(J)J

    move-result-wide v10

    move-wide v12, v10

    move-wide v10, v5

    goto/16 :goto_2

    .line 1232
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0

    move-object/from16 v20, v5

    goto/16 :goto_3

    .line 1264
    :cond_5
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0

    .line 1267
    :goto_4
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1271
    :try_start_2
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    move-wide v6, v0

    .line 1272
    move-object v0, v5

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    move-wide/from16 v16, v0

    .line 1274
    if-eqz v18, :cond_6

    .line 1275
    cmp-long v5, v6, v16

    if-lez v5, :cond_8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_5
    move/from16 v18, v5

    .line 1295
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    .line 1296
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1297
    move-wide v0, v12

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    .line 1298
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1300
    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v20

    move-object/from16 v20, p2

    move-object/from16 v21, v8

    move/from16 v22, p3

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    move-wide/from16 v27, v14

    :try_start_3
    invoke-direct/range {v16 .. v30}, Lcom/google/android/gsf/gtalkservice/ChatSession;->consolidate(Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLandroid/net/Uri;Landroid/net/Uri;)V

    move-object/from16 v5, v29

    .line 1313
    goto/16 :goto_0

    .line 1264
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    move-object v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 1275
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 1298
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1212
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private addMessageToDatabase(Ljava/lang/String;I)V
    .locals 13
    .parameter "body"
    .parameter "messageType"

    .prologue
    const/4 v2, 0x0

    .line 1438
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1439
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1443
    .local v5, now:J
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v7, v5

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gsf/gtalkservice/ChatSession;->doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJ)Landroid/net/Uri;

    .line 1452
    return-void
.end method

.method private addParticipant(Ljava/lang/String;)Z
    .locals 6
    .parameter "nickname"

    .prologue
    const/4 v4, 0x1

    .line 594
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->insertGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    move-result v0

    .line 595
    .local v0, added:Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 596
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "participant joined, now getParticipants()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->updateGroupChatDisplayName()V

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 603
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    const/4 v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->setPresence(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V

    .line 605
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->notifyPresenceChanged()V

    .line 607
    :cond_1
    return v0
.end method

.method private addTimeStamp(Landroid/content/ContentValues;JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1499
    const-string v0, "real_date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1500
    const-string v0, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1504
    if-ne p6, v2, :cond_0

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 1505
    const-string v0, "show_ts"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1507
    :cond_0
    return-void
.end method

.method private checkInitialOtrStatus()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatSession;->MESSAGE_HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 285
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "checkInitialOtrStatus: not empty, bail"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "checkInitialOtrStatus: add OTR status"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addOffTheRecordStatusChange()V

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private checkMatch(Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;JLjava/lang/String;)Z
    .locals 7
    .parameter "consolidation"
    .parameter "timestamp"
    .parameter "groupChatNickName"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1020
    iget-object v0, p1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1022
    iget-wide v0, p1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationRowTimeStamp:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1024
    iput-wide v5, p1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move v0, v4

    .line 1039
    :goto_0
    return v0

    .line 1029
    :cond_0
    if-eqz p4, :cond_1

    .line 1030
    iget-object v0, p1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousGroupchatNickname:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iput-wide v5, p1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move v0, v4

    .line 1033
    goto :goto_0

    .line 1037
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1039
    goto :goto_0
.end method

.method private closeOtrCursor()V
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    .line 350
    :cond_0
    monitor-exit p0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private consolidate(Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJLandroid/net/Uri;Landroid/net/Uri;)V
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1076
    if-eqz p2, :cond_b

    .line 1077
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1080
    const-string v3, "%s\n%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    .line 1083
    if-eqz p6, :cond_4

    const/4 v3, 0x0

    move v11, v3

    .line 1086
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    move-object v3, v0

    if-nez v3, :cond_7

    .line 1088
    const/16 v22, 0x0

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1095
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    move-object v6, v0

    const-wide/16 v3, 0x1

    add-long v7, p7, v3

    const-wide/16 v3, 0x1

    add-long v9, p9, v3

    const-wide/16 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-wide/from16 v12, p11

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1116
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1119
    const-string v3, "GTalkService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConsolidation: match, add 1st consolidation row, key= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1125
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    const-string v4, "consolidation_key"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1129
    if-eqz p13, :cond_1

    if-eqz p14, :cond_1

    .line 1130
    invoke-virtual/range {p13 .. p13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1131
    invoke-virtual/range {p14 .. p14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1132
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getUriSansLeaf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    const-string v8, "(_id==? OR _id==?)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {v7, v6, v3, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1138
    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    .line 1139
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected 2 from update, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    move/from16 v3, v22

    .line 1183
    :cond_2
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 1184
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consolidate: url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_a

    const-string v3, "new"

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "; took "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1197
    :cond_3
    :goto_5
    return-void

    .line 1083
    :cond_4
    const/4 v3, 0x1

    move v11, v3

    goto/16 :goto_0

    .line 1105
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    move-object v10, v0

    const-wide/16 v3, 0x1

    add-long v12, p7, v3

    const-wide/16 v3, 0x1

    add-long v14, p9, v3

    const-wide/16 v18, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move-wide/from16 v16, p11

    invoke-direct/range {v7 .. v19}, Lcom/google/android/gsf/gtalkservice/ChatSession;->doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJ)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 1140
    :cond_6
    const-string v3, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConsolidation: update msgs id1="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & id2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w/ consolidate_key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1147
    :cond_7
    const/4 v3, 0x1

    .line 1149
    const-string v4, "GTalkService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConsolidation: match, update consolidation row for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1154
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1155
    const-string v4, "body"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-wide/16 v4, 0x1

    add-long v7, p7, v4

    const-wide/16 v4, 0x1

    add-long v9, p9, v4

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addTimeStamp(Landroid/content/ContentValues;JJI)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1164
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    const-string v5, "consolidation_key"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1168
    invoke-virtual/range {p13 .. p13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1169
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getUriSansLeaf(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    const-string v8, "(_id==?)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v6, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1174
    const/4 v6, 0x1

    if-eq v4, v6, :cond_9

    .line 1175
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected 1 from update, got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1176
    :cond_9
    const-string v4, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleConsolidation: update msgs id1="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w/ consolidate_key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1185
    :cond_a
    const-string v3, "existing"

    goto/16 :goto_4

    .line 1190
    :cond_b
    const-string v3, "GTalkService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1191
    const-string v3, "handleConsolidation: reset consolidation url and key"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1193
    :cond_c
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1194
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedBody:Ljava/lang/String;

    .line 1195
    const-wide/16 v3, 0x0

    move-wide v0, v3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    goto/16 :goto_5
.end method

.method private createGroupChatInDatabase(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 1892
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1894
    const-string v0, "GTalkService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGroupChatInDatabase for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1899
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x4

    move-object v5, p1

    invoke-static/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->addContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    .line 1911
    if-eqz v0, :cond_2

    .line 1912
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    .line 1913
    const-string v0, "GTalkService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGroupChatInDatabase: added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to contacts table, mGroupContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1918
    :cond_1
    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    const/4 v9, 0x1

    move-object v3, p0

    move-object v6, v11

    move-object v7, v11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1924
    :goto_0
    return-void

    .line 1921
    :cond_2
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### createGroupChatInDatabase: add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to contacts table failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private debugMessageTimeStamp(JJJ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1539
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1540
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1542
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1543
    invoke-virtual {v1, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 1545
    const-string v2, "debugMessageTimeStamp:"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  clockSkew threshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, p5, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  message date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%H:%M:%S"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  now: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1549
    return-void
.end method

.method private doAddMessageToDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJJ)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1457
    const-string v3, "DEBUG_CHAT_MSG"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1458
    const-string v3, "doAddMessageToDatabase:"

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   to= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   date= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", realDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   body= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1465
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1466
    const-string v3, "body"

    invoke-virtual {v4, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v3, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    const-wide/16 v5, 0x0

    cmp-long v3, p11, v5

    if-eqz v3, :cond_1

    .line 1470
    const-string v3, "consolidation_key"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    move-object v3, p0

    move-wide v5, p5

    move-wide/from16 v7, p7

    move v9, p4

    .line 1473
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addTimeStamp(Landroid/content/ContentValues;JJI)V

    .line 1475
    if-eqz p2, :cond_2

    .line 1476
    const-string v3, "packet_id"

    invoke-virtual {v4, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOtrMessageType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1487
    :cond_3
    move-wide/from16 v0, p9

    move-object v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getOtrMessagesContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1492
    :goto_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1489
    :cond_4
    move-wide/from16 v0, p9

    move-object v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private fixMucUnderscore(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nickname"

    .prologue
    const/16 v3, 0x40

    const/4 v2, -0x1

    .line 1959
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1960
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1961
    .local v0, underscore:I
    if-le v0, v2, :cond_0

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1966
    .end local v0           #underscore:I
    :cond_0
    return-object p1
.end method

.method private getChatUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "contact"

    .prologue
    .line 455
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v3

    invoke-static {v2, p1, v3, v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 456
    .local v0, pid:J
    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private getContactBareAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGroupChatDisplayName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 639
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 642
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 643
    .local v4, name:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, shortName:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    if-lez v0, :cond_0

    .line 646
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 649
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 651
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #shortName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nickname"

    .prologue
    .line 908
    if-nez p1, :cond_0

    .line 909
    const/4 v1, 0x0

    .line 921
    :goto_0
    return-object v1

    .line 912
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 913
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 914
    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 917
    :cond_1
    if-ltz v0, :cond_2

    .line 918
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 921
    goto :goto_0
.end method

.method private getUriSansLeaf(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter "u"

    .prologue
    .line 1044
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, currentUriString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, leaf:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, baseUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method private handleOffTheRecordExtension(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)V
    .locals 6
    .parameter "message"
    .parameter "from"

    .prologue
    const/4 v5, 0x0

    .line 956
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->hasNoSave()Z

    move-result v3

    if-nez v3, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getNoSave()Z

    move-result v1

    .line 961
    .local v1, otrEnabled:Z
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isOffTheRecord()Z

    move-result v0

    .line 963
    .local v0, oldOtrEnabled:Z
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOffTheRecordExtension: new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 967
    :cond_2
    if-eq v1, v0, :cond_0

    .line 971
    if-eqz v1, :cond_3

    const/4 v3, 0x1

    move v2, v3

    .line 973
    .local v2, otrValue:I
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setOffTheRecordValue(I)V

    .line 974
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addOffTheRecordStatusChange()V

    .line 976
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

    aput-object p2, v3, v5

    .line 977
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "username=?"

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUpdateOtrStatusSelectionArgs:[Ljava/lang/String;

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #otrValue:I
    :cond_3
    move v2, v5

    .line 971
    goto :goto_1
.end method

.method private isOtrMessageType(I)Z
    .locals 1
    .parameter "messageType"

    .prologue
    .line 1717
    packed-switch p1, :pswitch_data_0

    .line 1725
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1722
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1717
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private leaveGroupChat()V
    .locals 5

    .prologue
    .line 812
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leave group chat for room "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 816
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 817
    .local v1, leavePresence:Lorg/jivesoftware/smack/packet/Presence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 822
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveGroupChat caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadStatusMessageFromDatabase()V
    .locals 4

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getStatusMessage(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    .line 2221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mStatusMessageReadFromDb:Z

    .line 2222
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadStatusMessageFromDatabase: mCachedStatusMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2225
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2377
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2381
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    return-void
.end method

.method private messageTargetedForAnotherClient(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 2087
    :goto_0
    return v0

    .line 2072
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 2076
    goto :goto_0

    .line 2079
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJidResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 2080
    goto :goto_0

    .line 2083
    :cond_2
    const-string v0, "GTalkService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageTargetedForAnotherClient: true, toAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2087
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private modifyTimeStampIfNecessary(J)J
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 1510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1520
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getClockSkewThresholdMs()J

    move-result-wide v5

    .line 1522
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, v3, v5

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1523
    const-string v0, "gtalk_debug_message_ts"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1524
    const-string v0, "addTimeStamp: use server assigned message time"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    .line 1525
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->debugMessageTimeStamp(JJJ)V

    move-wide v0, p1

    .line 1535
    :goto_0
    return-wide v0

    .line 1528
    :cond_0
    const-string v0, "gtalk_debug_message_ts"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1529
    const-string v0, "addTimeStamp: set message\'s ts to \'now\'"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    .line 1530
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->debugMessageTimeStamp(JJJ)V

    :cond_1
    move-wide v0, v3

    .line 1532
    goto :goto_0

    :cond_2
    move-wide v0, p1

    goto :goto_0
.end method

.method private notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    move-object v6, v0

    new-instance v7, Lcom/google/android/gsf/gtalkservice/ChatSession$7;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession$7;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v14

    .line 2130
    const-string v5, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyChat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useLightweightNotify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", # chat session listeners="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2135
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyChat(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2137
    if-eqz p7, :cond_1

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v5

    .line 2142
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2143
    invoke-static/range {p2 .. p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 2146
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getUsername()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-wide/from16 v12, p5

    invoke-virtual/range {v5 .. v16}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    .line 2153
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p3

    goto :goto_0
.end method

.method private notifyConversionToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "oldJid"
    .parameter "room"
    .parameter "groupId"

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ChatSession$11;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 2306
    return-void
.end method

.method private notifyConvertedToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2322
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/google/android/gtalkservice/IChatListener;->convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2331
    :goto_0
    return-void

    .line 2323
    :catch_0
    move-exception v0

    .line 2324
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyConvertedToGroupChat caught "

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

    .line 2327
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2328
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2329
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyParticipantPresence(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2361
    if-eqz p4, :cond_0

    .line 2362
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/google/android/gtalkservice/IChatListener;->participantJoined(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    :goto_0
    return-void

    .line 2364
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/google/android/gtalkservice/IChatListener;->participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2366
    :catch_0
    move-exception v0

    .line 2367
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyParticipantPresence caught "

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

    .line 2370
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2371
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2372
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "room"
    .parameter "nickname"
    .parameter "joined"

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$13;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/ChatSession$13;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 2356
    return-void
.end method

.method private notifyWillConvertToGroupChat(Lcom/google/android/gtalkservice/IChatListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2336
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/google/android/gtalkservice/IChatListener;->willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :goto_0
    return-void

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChatSession] notifyConvertedToGroupChat caught "

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

    .line 2341
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2342
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2343
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyWillConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "oldJid"
    .parameter "room"
    .parameter "groupId"

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ChatSession$12;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 2317
    return-void
.end method

.method private postMissedCallNotification(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$5;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/ChatSession$5;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v9

    .line 1406
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    .line 1409
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1410
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1414
    :goto_0
    if-eqz p4, :cond_1

    .line 1415
    if-eqz p3, :cond_0

    .line 1416
    const v1, 0x7f080057

    .line 1428
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getUsername()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v10

    const/4 v11, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    .line 1435
    return-void

    .line 1418
    :cond_0
    const v1, 0x7f080058

    goto :goto_1

    .line 1421
    :cond_1
    if-eqz p3, :cond_2

    .line 1422
    const v1, 0x7f080055

    goto :goto_1

    .line 1424
    :cond_2
    const v1, 0x7f080056

    goto :goto_1

    :cond_3
    move-object v2, p2

    goto :goto_0
.end method

.method private queryOtrCursor()V
    .locals 4

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->closeOtrCursor()V

    .line 305
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mAccountId:J

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mToBareJid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getOffTheRecordCursor(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    .line 306
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    .line 308
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursorContentObserver:Lcom/google/android/gsf/gtalkservice/ChatSession$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->updateOffTheRecordFromCursor()V

    .line 311
    :cond_0
    monitor-exit p0

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeParticipant(Ljava/lang/String;)Z
    .locals 6
    .parameter "nickname"

    .prologue
    const/4 v5, 0x0

    .line 611
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    move-result v0

    .line 612
    .local v0, removed:Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyParticipantPresence(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->updateGroupChatDisplayName()V

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->setPresence(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V

    .line 620
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/RosterManager;->notifyPresenceChanged()V

    .line 622
    :cond_0
    return v0
.end method

.method private sendChatRead(Ljava/lang/String;)V
    .locals 5
    .parameter "contact"

    .prologue
    .line 792
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;

    invoke-direct {v1, p1}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;-><init>(Ljava/lang/String;)V

    .line 793
    .local v1, readPacket:Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/ChatRead;->setTo(Ljava/lang/String;)V

    .line 805
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 807
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendChatRead caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setIsGroupChat(Z)V
    .locals 8
    .parameter "isGroupChat"

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eq v0, p1, :cond_0

    .line 413
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    .line 414
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->createGroupChatInDatabase(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 424
    :cond_0
    return-void
.end method

.method private setOffTheRecordValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOffTheRecordValue:I

    .line 339
    monitor-exit p0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setUnreadMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastUnreadMessage:Ljava/lang/String;

    .line 404
    return-void
.end method

.method private tryRemoveChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 4
    .parameter

    .prologue
    .line 2289
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2291
    monitor-exit v0

    .line 2295
    :goto_0
    return-void

    .line 2291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
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

.method private updateChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1865
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1867
    const-string v2, "jid_resource"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string v2, "groupchat"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1869
    const-string v2, "last_message_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastMessageTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1872
    if-nez p4, :cond_0

    .line 1873
    invoke-direct {p0, p3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1874
    const-string v0, "last_unread_message"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatSelectionArgs:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1881
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id in (select _id from contacts where (username LIKE ?))"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1883
    return-void

    .line 1876
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 1877
    const-string v2, "last_unread_message"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGroupChatDisplayName()V
    .locals 10

    .prologue
    .line 1927
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1928
    .local v6, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v0 .. v9}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->updateContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)I

    .line 1938
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 1939
    return-void
.end method

.method private updateGroupChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1943
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->fixMucUnderscore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1945
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1950
    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->updateChatInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1951
    return-void

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method private updateOffTheRecordFromCursor()V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    const-string v1, "GTalkService"

    const-string v2, "updateOffTheRecordFromCursor, mOtrCursor.moveToFirst() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOffTheRecordValue:I

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    const-string v3, "otr"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOffTheRecordValue:I

    .line 328
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOtrCursor:Landroid/database/Cursor;

    const-string v3, "username"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, contact:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOffTheRecordFromCursor: otr_contact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", otr_status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOffTheRecordValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addOffTheRecordStatusChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOffTheRecordValue:I

    packed-switch v1, :pswitch_data_0

    .line 367
    const/16 v0, 0x9

    .line 371
    .local v0, messageType:I
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v1, :cond_0

    .line 372
    invoke-direct {p0, v2, v2, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    .line 380
    return-void

    .line 358
    .end local v0           #messageType:I
    :pswitch_0
    const/16 v0, 0xa

    .line 359
    .restart local v0       #messageType:I
    goto :goto_0

    .line 361
    .end local v0           #messageType:I
    :pswitch_1
    const/16 v0, 0xb

    .line 362
    .restart local v0       #messageType:I
    goto :goto_0

    .line 364
    .end local v0           #messageType:I
    :pswitch_2
    const/16 v0, 0xc

    .line 365
    .restart local v0       #messageType:I
    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    goto :goto_1

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 499
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 501
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 502
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

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

    .line 503
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 504
    monitor-exit v3

    .line 510
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
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

.method public clearConsolidation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1200
    const-string v0, "clearConsolidation"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1203
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-wide v2, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1204
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOutgoingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1206
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidatedRowUri:Landroid/net/Uri;

    .line 1207
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-wide v2, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mConsolidationKey:J

    .line 1208
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mIncomingConsolidation:Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/ChatSession$Consolidation;->mPreviousUri:Landroid/net/Uri;

    .line 1209
    return-void
.end method

.method public closeChat()V
    .locals 7

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    .line 2032
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeChat: mTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2034
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v1

    .line 2036
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-nez v3, :cond_1

    .line 2037
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 2041
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 2042
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->closeChatForContactId(Landroid/content/ContentResolver;J)V

    .line 2045
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v3, :cond_3

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeChat: remove room \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" from contacts, account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2048
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v2, v0}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I

    .line 2051
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->closeOtrCursor()V

    .line 2053
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    .line 2054
    return-void
.end method

.method convertToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1972
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_0

    move-object v0, v5

    .line 2009
    :goto_0
    return-object v0

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1978
    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyWillConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1981
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1983
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1985
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->closeChatForContactId(Landroid/content/ContentResolver;J)V

    .line 1989
    :cond_1
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1993
    :goto_1
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    .line 1994
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatPassword:Ljava/lang/String;

    .line 1998
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setGroupChatNickname(Ljava/lang/String;)V

    .line 2000
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    .line 2001
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mToBareJid:Ljava/lang/String;

    .line 2002
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setIsGroupChat(Z)V

    .line 2004
    const/4 v1, 0x6

    invoke-direct {p0, v5, v5, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2006
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->closeOtrCursor()V

    .line 2007
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->queryOtrCursor()V

    .line 2009
    new-instance v1, Lcom/google/android/gsf/gtalkservice/ChatSession$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession$6;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 1990
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToGroupChat: mTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", myNickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "room"
    .parameter "inviter"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mContext:Landroid/content/Context;

    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, p2, v2}, Lcom/google/android/gsf/gtalkservice/XmppUtils;->declineGroupChatInvitation(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mAccountId:J

    return-wide v0
.end method

.method getGroupChatNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    return-object v0
.end method

.method getGroupChatPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatPassword:Ljava/lang/String;

    return-object v0
.end method

.method getGroupContactId()J
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    return-wide v0
.end method

.method public getLastMessageTimestamp()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method public getLightweightNotify()Z
    .locals 3

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$8;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/ChatSession$8;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v0

    .line 2178
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLightweightNotify chatActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # chat session listeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2182
    :cond_0
    return v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getGroupMemberList(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getToAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsentComposedMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1762
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    const-string v3, "contact_id in (select _id from contacts where account=? AND username=?)"

    .line 1765
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 1767
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatSession;->UNSENT_COMPOSED_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1774
    if-eqz v0, :cond_0

    .line 1776
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1777
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1780
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1786
    :goto_1
    return-object v0

    .line 1780
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1783
    :cond_0
    const-string v0, "getUnsentComposedMessage"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->logEmptyCursor(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v1, v5

    goto :goto_0
.end method

.method groupChatParticipantPresenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 6
    .parameter "participant"
    .parameter "presence"

    .prologue
    const/4 v5, 0x0

    .line 533
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v3, v4, :cond_3

    .line 540
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 541
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupChatParticipantPresenceChanged: presence=unavailable, can\'t find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in mGroupchatParticipants"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->removeParticipant(Ljava/lang/String;)Z

    .line 548
    const/4 v0, 0x5

    .line 585
    .local v0, messageType:I
    :goto_1
    invoke-direct {p0, p1, v5, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_0

    .line 552
    .end local v0           #messageType:I
    :cond_3
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v1

    .line 554
    .local v1, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 555
    .local v2, oldPresence:Lorg/jivesoftware/smack/packet/Presence;
    if-nez v2, :cond_5

    .line 556
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "groupChatParticipantPresenceChanged: add participant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 561
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addParticipant(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 562
    const-string v3, "GTalkService"

    const-string v4, "groupChatParticipantPresenceChanged:  add participant failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_5
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v3

    if-ne v3, v1, :cond_6

    .line 567
    const-string v3, "GTalkService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "groupChatParticipantPresenceChanged: presence unchanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :cond_6
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupchatParticipants:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v1, v3, :cond_7

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v1, v3, :cond_8

    .line 577
    :cond_7
    const/4 v0, 0x3

    .restart local v0       #messageType:I
    goto :goto_1

    .line 578
    .end local v0           #messageType:I
    :cond_8
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v1, v3, :cond_9

    .line 579
    const/4 v0, 0x4

    .restart local v0       #messageType:I
    goto :goto_1

    .line 581
    .end local v0           #messageType:I
    :cond_9
    const/4 v0, 0x2

    .restart local v0       #messageType:I
    goto :goto_1
.end method

.method handleChatRead()V
    .locals 4

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2230
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChatRead for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2236
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->markAsRead(Z)V

    .line 2241
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v1, v1, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/ChatSession$9;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession$9;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 2258
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyChatRead(JLjava/lang/String;)V

    .line 2259
    return-void
.end method

.method handlePresenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .parameter

    .prologue
    .line 2186
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2194
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mStatusMessageReadFromDb:Z

    if-nez v1, :cond_2

    .line 2195
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->loadStatusMessageFromDatabase()V

    .line 2200
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2201
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status message of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" did not change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2209
    :cond_3
    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 2213
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    .line 2216
    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mCachedStatusMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasChatListeners()Z
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnreadMessage()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastUnreadMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(ZZ)V
    .locals 3
    .parameter "initiatedLocally"
    .parameter "asyncInit"

    .prologue
    .line 206
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "initialized: already initialized!"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mInitialized:Z

    .line 213
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatSession$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession$1;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Z)V

    .line 258
    .local v0, initRunnable:Ljava/lang/Runnable;
    if-eqz p2, :cond_1

    .line 259
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "ChatSession.initialize"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public inviteContact(Ljava/lang/String;)V
    .locals 4
    .parameter "invitee"

    .prologue
    .line 671
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-nez v1, :cond_0

    .line 672
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 673
    .local v0, invitees:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 674
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 676
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->convertToGroupChatSession(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;[Ljava/lang/String;)V

    .line 689
    .end local v0           #invitees:[Ljava/lang/String;
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gsf/gtalkservice/XmppUtils;->sendGroupChatInvitationTo(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isForOtherClient()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mForOtherClient:Z

    return v0
.end method

.method public isGroupChat()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    return v0
.end method

.method public isInitiatedByLocal()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mInitiatedbyLocal:Z

    return v0
.end method

.method public isOffTheRecord()Z
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mOffTheRecordValue:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leave()V
    .locals 1

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->closeChat()V

    .line 2019
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->leaveGroupChat()V

    .line 2023
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyChatClosed(Ljava/lang/String;)V

    .line 2024
    return-void
.end method

.method public markAsRead()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->markAsRead(Z)V

    .line 452
    return-void
.end method

.method markAsRead(Z)V
    .locals 7
    .parameter "sendToServer"

    .prologue
    const/4 v5, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->hasUnreadMessage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const-string v4, "GTalkService"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "markAsRead for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sendToServer="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 469
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "last_unread_message"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/ChatSession;->setUnreadMessage(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getContactBareAddress()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, contact:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getChatUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 479
    .local v2, uri:Landroid/net/Uri;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/google/android/gsf/gtalkservice/ChatSession$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession$2;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 492
    if-eqz p1, :cond_0

    .line 493
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->sendChatRead(Ljava/lang/String;)V

    goto :goto_0
.end method

.method notifyChatClosed(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2263
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChatClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$10;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession$10;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 2284
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->notifyChatClosed(JLjava/lang/String;)V

    .line 2285
    return-void
.end method

.method public notifyMessageSent(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession$3;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 708
    return-void
.end method

.method onReceiveGroupMessage(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "message"
    .parameter "room"
    .parameter "fullNickname"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->messageTargetedForAnotherClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/ChatSession;->handleOffTheRecordExtension(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)V

    .line 936
    invoke-direct {p0, p3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, nickname:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v3, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupContactId:J

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method onReceiveMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 25
    .parameter "message"

    .prologue
    .line 829
    const/4 v15, 0x0

    .line 830
    .local v15, nickname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v21

    .line 831
    .local v21, from:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 836
    .local v20, bareJid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move/from16 v22, v4

    .line 838
    .local v22, incoming:Z
    :goto_0
    if-eqz v22, :cond_4

    .line 841
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    .line 842
    move-object/from16 v5, v20

    .line 843
    .local v5, contact:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mAccountId:J

    move-wide v6, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    .line 848
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastChatReceivedTsMs:J

    .line 850
    if-nez v22, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v24

    .line 855
    .local v24, result:Landroid/net/Uri;
    if-eqz v24, :cond_2

    .line 857
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->isRead()Z

    move-result v23

    .line 860
    .local v23, isRead:Z
    if-eqz v22, :cond_7

    .line 861
    const-string v4, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveMessage: got incoming msg from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isRead="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ts="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 866
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->messageTargetedForAnotherClient(Ljava/lang/String;)Z

    move-result v11

    .line 867
    .local v11, forOtherClient:Z
    if-nez v23, :cond_6

    if-nez v11, :cond_6

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 879
    .local v19, statusBarNotify:Z
    :goto_3
    const-string v4, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveMessage: add to chats for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", forOtherClient="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 884
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v6

    invoke-static/range {v21 .. v21}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v9

    if-nez v22, :cond_9

    const/4 v4, 0x1

    move v10, v4

    :goto_4
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addChatToDatabase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 891
    if-eqz v22, :cond_a

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v17, 0x0

    move-object/from16 v12, p0

    move-object v14, v5

    invoke-direct/range {v12 .. v19}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 902
    .end local v11           #forOtherClient:Z
    .end local v19           #statusBarNotify:Z
    .end local v23           #isRead:Z
    :cond_2
    :goto_5
    return-void

    .line 836
    .end local v5           #contact:Ljava/lang/String;
    .end local v22           #incoming:Z
    .end local v24           #result:Landroid/net/Uri;
    :cond_3
    const/4 v4, 0x0

    move/from16 v22, v4

    goto/16 :goto_0

    .line 845
    .restart local v22       #incoming:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #contact:Ljava/lang/String;
    goto/16 :goto_1

    .line 850
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 867
    .restart local v11       #forOtherClient:Z
    .restart local v23       #isRead:Z
    .restart local v24       #result:Landroid/net/Uri;
    :cond_6
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_3

    .line 869
    .end local v11           #forOtherClient:Z
    :cond_7
    const-string v4, "GTalkService"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveMessage: got own msg for chat with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ts="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 874
    :cond_8
    const/4 v11, 0x1

    .line 875
    .restart local v11       #forOtherClient:Z
    const/16 v19, 0x0

    .restart local v19       #statusBarNotify:Z
    goto/16 :goto_3

    .line 884
    :cond_9
    const/4 v4, 0x0

    move v10, v4

    goto :goto_4

    .line 899
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public prepareToClose()V
    .locals 2

    .prologue
    .line 2058
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareToClose for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 2060
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->leaveGroupChat()V

    .line 2064
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->closeOtrCursor()V

    .line 2065
    return-void
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 513
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 515
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 516
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

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

    .line 517
    .local v1, cl:Lcom/google/android/gtalkservice/IChatListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IChatListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 518
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 519
    monitor-exit v3

    .line 523
    .end local v1           #cl:Lcom/google/android/gtalkservice/IChatListener;
    :goto_0
    return-void

    .line 522
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

.method public reportEndCause(Ljava/lang/String;ZI)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1317
    const/4 v0, -0x1

    .line 1319
    packed-switch p3, :pswitch_data_0

    .line 1342
    :goto_0
    if-lez v0, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;->mChatListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/ChatSession$4;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/ChatSession$4;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 1360
    return-void

    .line 1321
    :pswitch_0
    if-eqz p2, :cond_1

    const v0, 0x7f08005d

    goto :goto_0

    :cond_1
    const v0, 0x7f08005e

    goto :goto_0

    .line 1326
    :pswitch_1
    if-eqz p2, :cond_2

    const v0, 0x7f08005f

    goto :goto_0

    :cond_2
    const v0, 0x7f080060

    goto :goto_0

    .line 1331
    :pswitch_2
    if-eqz p2, :cond_3

    const v0, 0x7f080061

    goto :goto_0

    :cond_3
    const v0, 0x7f080062

    goto :goto_0

    .line 1336
    :pswitch_3
    if-eqz p2, :cond_4

    const v0, 0x7f080063

    goto :goto_0

    :cond_4
    const v0, 0x7f080064

    goto :goto_0

    .line 1319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reportMissedCall(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1366
    if-eqz p4, :cond_1

    .line 1367
    if-eqz p3, :cond_0

    .line 1368
    const v0, 0x7f08005b

    .line 1380
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 1384
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/ChatSession;->postMissedCallNotification(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1385
    return-void

    .line 1370
    :cond_0
    const v0, 0x7f08005c

    goto :goto_0

    .line 1373
    :cond_1
    if-eqz p3, :cond_2

    .line 1374
    const v0, 0x7f080059

    goto :goto_0

    .line 1376
    :cond_2
    const v0, 0x7f08005a

    goto :goto_0
.end method

.method public saveUnsentComposedMessage(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1730
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    const-string v1, "contact_id in (select _id from contacts where account=? AND username=?)"

    .line 1739
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1740
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1741
    const-string v4, "unsent_composed_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 1749
    if-eqz p1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1752
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1754
    const-string v0, "contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1755
    const-string v0, "jid_resource"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v0, "groupchat"

    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1757
    const-string v0, "last_message_date"

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1758
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public sendChatMessage(Ljava/lang/String;)V
    .locals 12
    .parameter "body"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 718
    :cond_0
    const-string v0, "GTalkService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    const-string v0, "::queryjingleinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    const-string v0, "found \'::queryjingleinfo\' ==> send JingleInfo query..."

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->queryJingleInfo()V

    goto :goto_0

    .line 726
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_2

    .line 727
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mContext:Landroid/content/Context;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Ljava/lang/String;I)V

    .line 732
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    :cond_2
    new-instance v9, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v9}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 737
    .local v9, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v9, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    .line 742
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getUserBareJidTimeout()J

    move-result-wide v10

    .line 744
    .local v10, useBareJidTimeout:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mLastChatReceivedTsMs:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    .line 745
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendChatMessage: it\'s been "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v1, 0xea60

    div-long v1, v10, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mins since receiving a message from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Use bareJid to send message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->log(Ljava/lang/String;)V

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    .line 752
    .end local v10           #useBareJidTimeout:J
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_6

    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    :goto_1
    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 753
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 756
    const-string v0, "FAKE_ERROR_MSG"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 758
    const-string v0, "unknown_jid@gmail.com"

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 761
    :cond_5
    invoke-virtual {v9, v7}, Lorg/jivesoftware/smack/packet/Message;->setIsIncoming(Z)V

    .line 763
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChat:Z

    if-eqz v0, :cond_7

    .line 764
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getGroupChatShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1, v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addGroupMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;

    .line 776
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatSession;->notifyMessageSent(Ljava/lang/String;)V

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGTalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0, v9}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 786
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 787
    .local v8, ex:Ljava/lang/IllegalStateException;
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendChatMessage caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 752
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :cond_6
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    goto :goto_1

    .line 767
    :cond_7
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0, v6}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addMessageToDatabase(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Z)Landroid/net/Uri;

    .line 768
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ChatSession;->getAccountId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/ChatSession;->addChatToDatabase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2
.end method

.method setGroupChatNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mGroupChatNickname:Ljava/lang/String;

    .line 438
    return-void
.end method

.method setMyGroupChatNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatSession;->mMyGroupChatNickname:Ljava/lang/String;

    .line 428
    return-void
.end method
