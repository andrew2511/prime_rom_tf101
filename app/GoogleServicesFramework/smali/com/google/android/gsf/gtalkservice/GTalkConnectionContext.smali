.class public Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
.super Ljava/lang/Object;
.source "GTalkConnectionContext.java"


# instance fields
.field private mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

.field private mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mDataMessageMgr:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

.field private mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field private mHttpResponseMgr:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

.field private mIQMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

.field private mOtrMgr:Lcom/google/android/gsf/gtalkservice/OtrManager;

.field private mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

.field private mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

.field private mRosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;

.field private mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

.field private mVCardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;

.field private mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 1
    .parameter "service"
    .parameter "connection"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 50
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 52
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;

    .line 53
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/ChatMgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    .line 54
    new-instance v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mDataMessageMgr:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 55
    new-instance v0, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mHttpResponseMgr:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    .line 56
    new-instance v0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    .line 57
    new-instance v0, Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/VCardMgr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mVCardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    .line 58
    new-instance v0, Lcom/google/android/gsf/gtalkservice/OtrManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/OtrManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mOtrMgr:Lcom/google/android/gsf/gtalkservice/OtrManager;

    .line 59
    new-instance v0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    invoke-direct {v0, p2}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mIQMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    .line 60
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    .line 61
    new-instance v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    .line 62
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    .line 63
    return-void
.end method


# virtual methods
.method public getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getDataMessageManager()Lcom/google/android/gsf/gtalkservice/DataMessageManager;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mDataMessageMgr:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    return-object v0
.end method

.method public getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    return-object v0
.end method

.method public getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    return-object v0
.end method

.method public getGtalkAccountId()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHttpResponseManager()Lcom/google/android/gsf/gtalkservice/HttpResponseManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mHttpResponseMgr:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    return-object v0
.end method

.method public getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mIQMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    return-object v0
.end method

.method public getOtrManager()Lcom/google/android/gsf/gtalkservice/OtrManager;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mOtrMgr:Lcom/google/android/gsf/gtalkservice/OtrManager;

    return-object v0
.end method

.method public getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    return-object v0
.end method

.method public getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    return-object v0
.end method

.method public getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;

    return-object v0
.end method

.method public getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/SubscriptionManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    return-object v0
.end method

.method public getVCardManager()Lcom/google/android/gsf/gtalkservice/VCardMgr;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mVCardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    return-object v0
.end method

.method public getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    return-object v0
.end method

.method public init(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRosterMgr:Lcom/google/android/gsf/gtalkservice/RosterManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mChatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mDataMessageMgr:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0, p1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mHttpResponseMgr:Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0, p1}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mSubscriptionMgr:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    invoke-virtual {v1, v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 73
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mVCardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mOtrMgr:Lcom/google/android/gsf/gtalkservice/OtrManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/gsf/gtalkservice/OtrManager;->init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    invoke-virtual {v1, v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V

    .line 76
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mVideoChatSessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mRawStanzaSendReceiveManager:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    .line 78
    return-void
.end method
