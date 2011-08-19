.class public Lcom/google/android/talk/TalkApp;
.super Landroid/app/Application;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;,
        Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;,
        Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;,
        Lcom/google/android/talk/TalkApp$AccountInfo;,
        Lcom/google/android/talk/TalkApp$AccountListChangeListener;,
        Lcom/google/android/talk/TalkApp$GTalkConnectionListener;
    }
.end annotation


# static fields
.field private static mSelfAvatarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/DatabaseUtils$AvatarData;",
            ">;"
        }
    .end annotation
.end field

.field private static mTalkLogLevel:I


# instance fields
.field private mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountsAndSettingsMonitor:Landroid/content/BroadcastReceiver;

.field private mAccountsLoaded:Z

.field private mAccountsLoadedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

.field mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

.field mAvailablePresenceIcon:[Landroid/graphics/drawable/Drawable;

.field mAwayPresenceIcon:[Landroid/graphics/drawable/Drawable;

.field mBusyPresenceIcon:[Landroid/graphics/drawable/Drawable;

.field public mChatStatusIcon:Landroid/graphics/drawable/Drawable;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDefaultConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

.field public mDefaultStatusStrings:[Ljava/lang/String;

.field mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

.field private mGTalkConnectionListener:Lcom/google/android/talk/TalkApp$GTalkConnectionListener;

.field private mGTalkServiceIntent:Landroid/content/Intent;

.field public mGenericAvatar:Landroid/graphics/drawable/Drawable;

.field private mGmail:Lcom/google/android/talk/GmailProviderWrapper;

.field public mGroupAvatar:Landroid/graphics/drawable/Drawable;

.field public mGroupChatInvitations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field

.field mInvisiblePresenceIcon:Landroid/graphics/drawable/Drawable;

.field mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

.field mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

.field mOfflineColorFilter:Landroid/graphics/ColorFilter;

.field mOfflinePreseneIcon:Landroid/graphics/drawable/Drawable;

.field private mQueriedJingleInfo:Z

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field mServiceStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getLogLevelForTalk()I

    move-result v0

    sput v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 233
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 116
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[Landroid/graphics/drawable/Drawable;

    .line 117
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[Landroid/graphics/drawable/Drawable;

    .line 118
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[Landroid/graphics/drawable/Drawable;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/google/android/talk/TalkApp$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$1;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountsAndSettingsMonitor:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Lcom/google/android/talk/TalkApp$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/TalkApp$2;-><init>(Lcom/google/android/talk/TalkApp;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    .line 196
    new-instance v0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;-><init>(Lcom/google/android/talk/TalkApp;Lcom/google/android/talk/TalkApp$1;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkConnectionListener:Lcom/google/android/talk/TalkApp$GTalkConnectionListener;

    .line 235
    const-string v0, "talk"

    const-string v1, "##### TalkApp constructor #####"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    .line 238
    return-void
.end method

.method public static LOG(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "loglevel"
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 254
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    if-lt p0, v0, :cond_0

    .line 255
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    return-void
.end method

.method public static LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 264
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static LOGE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 276
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public static LOGI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 268
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public static LOGV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 260
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static LOGW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "logmessage"

    .prologue
    .line 272
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public static Logwtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 998
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->verifyAccountInPrefs()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/talk/TalkApp;->mDefaultConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/talk/TalkApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->broadcastAccountListChanged()V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->loadAccounts()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/TalkApp;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->createDefaultGTalkConnection()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->broadcastServiceStateChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->checkQueryJingleInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkApp;->pruneOldChats(Lcom/google/android/gtalkservice/IImSession;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private bindService()V
    .locals 3

    .prologue
    .line 333
    const-string v0, "bindService"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    .line 337
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 339
    const-string v0, "--- bindGTalkService ---"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGTalkServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/TalkApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 343
    return-void
.end method

.method private broadcastAccountListChanged()V
    .locals 5

    .prologue
    .line 952
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 953
    .local v1, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastAccountListChanged count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 954
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 955
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    invoke-interface {v0}, Lcom/google/android/talk/TalkApp$AccountListChangeListener;->onAccountListChanged()V

    goto :goto_0

    .line 957
    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :cond_0
    return-void
.end method

.method private broadcastServiceStateChanged()V
    .locals 7

    .prologue
    .line 517
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v4, messagesToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v5, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 519
    :try_start_0
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 520
    .local v0, count:I
    const/4 v6, 0x1

    sub-int v1, v0, v6

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 521
    iget-object v6, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 522
    .local v3, message:Landroid/os/Message;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 524
    .end local v3           #message:Landroid/os/Message;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 526
    .restart local v3       #message:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 524
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #message:Landroid/os/Message;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 528
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private checkQueryJingleInfo()V
    .locals 5

    .prologue
    .line 199
    iget-boolean v2, p0, Lcom/google/android/talk/TalkApp;->mQueriedJingleInfo:Z

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/talk/TalkApp;->mQueriedJingleInfo:Z

    .line 204
    invoke-static {p0}, Lcom/google/android/talk/videochat/JingleInfoManager;->getJingleInfoStanza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, jingleInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    :try_start_0
    const-string v2, "talk"

    const-string v3, "##### [TalkApp] query jingle info"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mDefaultConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    invoke-interface {v2}, Lcom/google/android/gtalkservice/IGTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/talk/videochat/JingleInfoManager;->queryJingleInfo(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 210
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkQueryJingleInfo: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private computeCapabilityIndex(I)I
    .locals 1
    .parameter "capabilities"

    .prologue
    .line 425
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x2

    .line 433
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructCachedDrawables()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 373
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mGenericAvatar:Landroid/graphics/drawable/Drawable;

    .line 375
    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mGroupAvatar:Landroid/graphics/drawable/Drawable;

    .line 377
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x108006b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    .line 379
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x10800b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 381
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x10800ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 385
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x1080067

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    .line 387
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x10800af

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 389
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x10800ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 392
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x1080068

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    .line 394
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x10800b0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 396
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[Landroid/graphics/drawable/Drawable;

    const v3, 0x10800ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v6

    .line 399
    const v2, 0x108006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mOfflinePreseneIcon:Landroid/graphics/drawable/Drawable;

    .line 400
    const v2, 0x1080069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mInvisiblePresenceIcon:Landroid/graphics/drawable/Drawable;

    .line 402
    const v2, 0x7f0200a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 403
    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    .line 405
    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    .line 406
    const v2, 0x7f0200a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    .line 408
    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mChatStatusIcon:Landroid/graphics/drawable/Drawable;

    .line 410
    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, awayString:Ljava/lang/String;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0c0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0c0002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f0c0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    .line 420
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0x557f7f80

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mOfflineColorFilter:Landroid/graphics/ColorFilter;

    .line 422
    return-void
.end method

.method private createDefaultGTalkConnection()V
    .locals 5

    .prologue
    .line 531
    const-string v2, "createDefaultGTalkConnection"

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v2, :cond_1

    .line 533
    const-string v2, "createDefaultGTalkConnection: mService is null"

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mDefaultConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    if-eqz v2, :cond_2

    .line 537
    const-string v2, "createDefaultGTalkConnection: mDefaultConnection is already established"

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 541
    .local v0, activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDefaultGTalkConnection activeAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 542
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    if-eqz v2, :cond_3

    .line 544
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getFirstAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 546
    :cond_3
    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    iget-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mGTalkConnectionListener:Lcom/google/android/talk/TalkApp$GTalkConnectionListener;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gtalkservice/IGTalkService;->createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 550
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "talk"

    const-string v3, "createDefaultGTalkConnection caught "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 555
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->handleDisconnectedService()V

    goto :goto_0
.end method

.method public static getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;
    .locals 0
    .parameter "activity"

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/talk/TalkApp;

    return-object p0
.end method

.method public static getLogLevelForTag(Ljava/lang/String;)I
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 1018
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1027
    :goto_0
    return v0

    .line 1020
    :cond_0
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1021
    goto :goto_0

    .line 1022
    :cond_1
    invoke-static {p0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 1023
    goto :goto_0

    .line 1024
    :cond_2
    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 1025
    goto :goto_0

    .line 1027
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private static getLogLevelForTalk()I
    .locals 1

    .prologue
    .line 1008
    const-string v0, "talk"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getLogLevelForTag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTalkLogLevel()I
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    return v0
.end method

.method private isServiceConnected()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDefaultConnection:Lcom/google/android/gtalkservice/IGTalkConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAccounts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 836
    const-string v1, "loadAccounts"

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 837
    iput-boolean v4, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    .line 838
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 840
    .local v0, accounts:[Landroid/accounts/Account;
    new-instance v1, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;-><init>(Lcom/google/android/talk/TalkApp;[Landroid/accounts/Account;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 841
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 614
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TalkApp] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private pruneOldChats(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 14
    .parameter "imSession"

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 656
    const-string v0, "talk"

    const-string v12, "pruneOldChats: empty IM session, bail."

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return-void

    .line 661
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 662
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 663
    .local v9, now:J
    const-string v0, "gtalk_chat_expire"

    const-wide/32 v12, 0xdbba00

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v1, v9, v12

    .line 666
    .local v1, expire:J
    const-string v0, "gtalk_chat_expire_for_other_client"

    const-wide/32 v12, 0x36ee80

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v5, v9, v12

    .line 669
    .local v5, expireForChatsOnOtherClient:J
    const-string v0, "gtalk_chat_message_lifetime"

    const-wide/32 v12, 0x240c8400

    invoke-static {v11, v0, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v3, v9, v12

    .line 673
    .local v3, expireHard:J
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    .local v7, closeChatIfTimeStampIsZero:Z
    :goto_1
    move-object v0, p1

    .line 674
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gtalkservice/IImSession;->pruneOldChatSessions(JJJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    .end local v1           #expire:J
    .end local v3           #expireHard:J
    .end local v5           #expireForChatsOnOtherClient:J
    .end local v7           #closeChatIfTimeStampIsZero:Z
    .end local v9           #now:J
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 679
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v12, "asyncPruneChats caught "

    invoke-static {v0, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 673
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v1       #expire:J
    .restart local v3       #expireHard:J
    .restart local v5       #expireForChatsOnOtherClient:J
    .restart local v9       #now:J
    .restart local v11       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1
.end method

.method public static queryDebugLevel()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 223
    const-string v0, "talk"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshTalkLogLevel()I
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getLogLevelForTalk()I

    move-result v0

    sput v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    .line 246
    sget v0, Lcom/google/android/talk/TalkApp;->mTalkLogLevel:I

    return v0
.end method

.method private verifyAccountInPrefs()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 907
    const-string v6, "gtalk_prefs"

    invoke-virtual {p0, v6, v8}, Lcom/google/android/talk/TalkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 909
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v6, "accountId"

    invoke-interface {v4, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 910
    .local v0, accountId:J
    const-string v6, "username"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 912
    .local v5, username:Ljava/lang/String;
    cmp-long v6, v0, v9

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v6, 0x1

    move v3, v6

    .line 913
    .local v3, clear:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 915
    invoke-virtual {p0, v5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    .line 916
    .local v2, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-eqz v2, :cond_1

    iget-wide v6, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_1

    .line 917
    const/4 v3, 0x0

    .line 920
    .end local v2           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 922
    invoke-static {p0}, Lcom/google/android/talk/AccountLoginUtils;->clearActiveAccountPrefs(Landroid/content/Context;)V

    .line 924
    :cond_2
    return-void

    .end local v3           #clear:Z
    :cond_3
    move v3, v8

    .line 912
    goto :goto_0
.end method


# virtual methods
.method public addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 927
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 928
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 929
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    if-ne p1, v0, :cond_0

    .line 930
    monitor-exit v2

    .line 938
    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :cond_1
    :goto_0
    return-void

    .line 933
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    iget-boolean v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z

    if-eqz v2, :cond_1

    .line 936
    invoke-interface {p1}, Lcom/google/android/talk/TalkApp$AccountListChangeListener;->onAccountListChanged()V

    goto :goto_0

    .line 934
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "target"
    .parameter "callback"

    .prologue
    .line 485
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 487
    .local v3, msg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->isServiceConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 501
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 491
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 493
    iget-object v5, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 494
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 495
    monitor-exit v4

    goto :goto_0

    .line 499
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #message:Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 492
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #message:Landroid/os/Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    .end local v2           #message:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public asyncPruneOldChatsAndMessages(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 2
    .parameter "imSession"

    .prologue
    .line 644
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/TalkApp$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/TalkApp$3;-><init>(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IImSession;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 652
    return-void
.end method

.method public clearSelfAvatarCache()V
    .locals 1

    .prologue
    .line 1140
    monitor-enter p0

    .line 1141
    :try_start_0
    sget-object v0, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1142
    monitor-exit p0

    .line 1143
    return-void

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 1042
    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p0, p5}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1045
    if-nez v1, :cond_1

    .line 1046
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionStateChanged: can\'t find account for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_0
    :goto_0
    return v0

    .line 1048
    :cond_1
    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1050
    iput-wide p3, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 1051
    const/4 v0, 0x1

    goto :goto_0

    .line 1053
    :cond_2
    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, p3

    if-eqz v2, :cond_0

    .line 1054
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionStateChanged: account for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but the state change says the accountId is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dumpAccountList()V
    .locals 6

    .prologue
    .line 980
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 981
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 982
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAccountList account count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 983
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 984
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 985
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump - account id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " username: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " signedIn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 989
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    return-void
.end method

.method public getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 713
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 714
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 715
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 716
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 717
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    move-object v3, v0

    .line 727
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :goto_1
    return-object v3

    .line 715
    .restart local v0       #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: can\'t find account for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->dumpAccountList()V

    .line 727
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .parameter "username"

    .prologue
    .line 731
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 732
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 733
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 734
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 735
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    move-object v3, v0

    .line 745
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :goto_1
    return-object v3

    .line 733
    .restart local v0       #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->getTalkLogLevel()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_2

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountInfo: can\'t find account for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->dumpAccountList()V

    .line 745
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccounts mAccountList count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 965
    const-string v5, "gtalk_prefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/android/talk/TalkApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 967
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "accountId"

    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 968
    .local v0, accountId:J
    const-string v5, "username"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 970
    .local v4, username:Ljava/lang/String;
    const/4 v2, 0x0

    .line 971
    .local v2, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1

    .line 972
    :cond_0
    new-instance v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local v2           #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-direct {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 973
    .restart local v2       #accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    iput-wide v0, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 974
    iput-object v4, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 976
    :cond_1
    return-object v2
.end method

.method public getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "clientType"
    .parameter "lightBackground"

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, retVal:Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 481
    :goto_0
    return-object v0

    .line 468
    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 470
    :goto_1
    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAndroidConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_1

    .line 473
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconLightBg:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .line 475
    :goto_2
    goto :goto_0

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mMobileConnectionIconDarkBg:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_2

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDesaturedColorFilter()Landroid/graphics/ColorFilter;
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 1062
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1064
    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1066
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1069
    const v2, 0x3e99999a

    .line 1070
    sub-float v3, v7, v2

    .line 1071
    const/high16 v4, 0x437f

    add-float/2addr v2, v6

    mul-float/2addr v2, v4

    .line 1073
    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v6, v4, v5

    const/4 v5, 0x4

    aput v2, v4, v5

    const/4 v5, 0x5

    aput v6, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v6, v4, v5

    const/16 v5, 0x8

    aput v6, v4, v5

    const/16 v5, 0x9

    aput v2, v4, v5

    const/16 v5, 0xa

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v6, v4, v5

    const/16 v5, 0xc

    aput v3, v4, v5

    const/16 v3, 0xd

    aput v6, v4, v3

    const/16 v3, 0xe

    aput v2, v4, v3

    const/16 v2, 0xf

    aput v6, v4, v2

    const/16 v2, 0x10

    aput v6, v4, v2

    const/16 v2, 0x11

    aput v6, v4, v2

    const/16 v2, 0x12

    aput v7, v4, v2

    const/16 v2, 0x13

    aput v6, v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 1080
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1081
    invoke-virtual {v2, v0, v1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 1083
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mDesaturatedColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFirstAccount()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5

    .prologue
    .line 795
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 796
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 797
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 798
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 799
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-boolean v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    if-eqz v3, :cond_0

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstAccount: found signed in account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    move-object v3, v0

    .line 812
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :goto_1
    return-object v3

    .line 797
    .restart local v0       #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 805
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_1
    if-lez v2, :cond_2

    .line 806
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 807
    .restart local v0       #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstAccount: picking first account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    move-object v3, v0

    .line 808
    goto :goto_1

    .line 811
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_2
    const-string v3, "getFirstAccount: there are no accounts!"

    invoke-static {v3}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 812
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method public getGenericAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGenericAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGmailProvider()Lcom/google/android/talk/GmailProviderWrapper;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/GmailProviderWrapper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    return-object v0
.end method

.method getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 5
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    .line 588
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    move-object v2, v4

    .line 605
    :goto_0
    return-object v2

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v2, :cond_1

    .line 593
    const-string v2, "talk"

    const-string v3, "[TalkApp] getImSessionForAccountId: null GTalk service!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 594
    goto :goto_0

    .line 597
    :cond_1
    const/4 v1, 0x0

    .line 600
    .local v1, retVal:Lcom/google/android/gtalkservice/IImSession;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 605
    goto :goto_0

    .line 601
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 602
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImSessionForAccountId: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getImSessionFromActivityIntent(Landroid/content/Intent;)Lcom/google/android/gtalkservice/IImSession;
    .locals 4
    .parameter "intent"

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 579
    const-string v1, "talk"

    const-string v2, "[TalkApp] getImSessionFromActivityIntent: null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v1, 0x0

    .line 584
    :goto_0
    return-object v1

    .line 583
    :cond_0
    const-string v1, "accountId"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 584
    .local v0, accountId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/talk/TalkApp;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastAccount()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 3

    .prologue
    .line 821
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 823
    .local v0, len:I
    if-lez v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/talk/TalkApp$AccountInfo;

    move-object v1, p0

    .line 827
    .end local v0           #len:I
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.google.android.talk.SuggestionProvider"

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V
    .locals 4
    .parameter "account"
    .parameter "update"

    .prologue
    .line 1125
    monitor-enter p0

    .line 1126
    :try_start_0
    sget-object v2, Lcom/google/android/talk/TalkApp;->mSelfAvatarMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .line 1127
    .local v0, ad:Lcom/google/android/talk/DatabaseUtils$AvatarData;
    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {p2, v0}, Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;->run(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    .line 1134
    :goto_0
    monitor-exit p0

    .line 1135
    return-void

    .line 1130
    :cond_0
    new-instance v1, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;

    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;-><init>(Lcom/google/android/talk/TalkApp;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 1132
    .local v1, task:Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/talk/TalkApp$AccountInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1134
    .end local v0           #ad:Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .end local v1           #task:Lcom/google/android/talk/TalkApp$RetrieveSelfAccountAvatarTask;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStatusIcon(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "status"
    .parameter "capabilities"

    .prologue
    .line 437
    invoke-direct {p0, p2}, Lcom/google/android/talk/TalkApp;->computeCapabilityIndex(I)I

    move-result v0

    .line 439
    .local v0, capabilityIndex:I
    packed-switch p1, :pswitch_data_0

    .line 455
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mOfflinePreseneIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v1

    .line 441
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAvailablePresenceIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    goto :goto_0

    .line 445
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAwayPresenceIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    goto :goto_0

    .line 448
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mBusyPresenceIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    goto :goto_0

    .line 451
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mInvisiblePresenceIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public handleDisconnectedService()V
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "handleDisconnectedService: mService isn\'t null!"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "handleDisconnectedService"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    goto :goto_0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 2

    .prologue
    .line 609
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/TalkApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 610
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/TalkApp;->mQueriedJingleInfo:Z

    .line 300
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    .line 302
    invoke-static {p0}, Lcom/google/android/talk/AvatarCache;->initialize(Lcom/google/android/talk/TalkApp;)V

    .line 303
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->initialize(Landroid/content/Context;)V

    .line 304
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v1}, Lcom/google/android/talk/SettingsCache;->initialize(Landroid/content/Context;Landroid/os/Handler;)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->constructCachedDrawables()V

    .line 306
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->loadAccounts()V

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mAccountsAndSettingsMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/TalkApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 317
    const-string v0, "##### onTerminate #####"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V

    .line 319
    invoke-static {p0}, Lcom/google/android/talk/AvatarCache;->destroyAll(Landroid/content/Context;)V

    .line 320
    invoke-static {p0}, Lcom/google/android/talk/PictureCache;->destroyAll(Landroid/content/Context;)V

    .line 321
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->destroyAll()V

    .line 323
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/TalkApp;->mAccountsAndSettingsMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/TalkApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 330
    return-void
.end method

.method rebindService()V
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v1, :cond_0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/TalkApp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/TalkApp;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/TalkApp;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp;->bindService()V

    .line 357
    return-void

    .line 349
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "talk"

    const-string v2, "Can\'t unbind service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 941
    iget-object v2, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 942
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountListChangeListener;

    .line 943
    .local v0, accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    if-ne p1, v0, :cond_0

    .line 944
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountsLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 945
    monitor-exit v2

    .line 949
    .end local v0           #accountChangeListener:Lcom/google/android/talk/TalkApp$AccountListChangeListener;
    :goto_0
    return-void

    .line 948
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeServiceStateChangedCallback(Landroid/os/Handler;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 504
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 505
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 506
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 507
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 508
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 509
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mServiceStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    monitor-exit v3

    .line 514
    return-void

    .line 506
    .restart local v2       #message:Landroid/os/Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #message:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setCurrentAccount(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 5
    .parameter "username"

    .prologue
    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, activeAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 758
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 759
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 763
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 764
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    .line 766
    move-object v1, v0

    .line 759
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    goto :goto_1

    .line 772
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_1
    return-object v1
.end method

.method public setInactiveAccount(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    .line 777
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 778
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 779
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 780
    iget-object v3, p0, Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 781
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 782
    iput-boolean v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    .line 783
    iput-boolean v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    .line 779
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    return-void
.end method
