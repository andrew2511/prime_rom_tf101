.class public Lcom/google/android/talk/fragments/ChatScreenFragment;
.super Landroid/app/Fragment;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;,
        Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    }
.end annotation


# static fields
.field private static CHATS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

.field private mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

.field private mChatInputField:Landroid/widget/EditText;

.field private mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

.field private mClearRunnable:Ljava/lang/Runnable;

.field private mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

.field private mContactIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field private mCreated:Z

.field private mFromStatusBarNotify:Z

.field private mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

.field mGridDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputContainer:Landroid/view/View;

.field private mInvitePending:Z

.field private mInviteRunnable:Ljava/lang/Runnable;

.field private mMessageBar:Landroid/view/ViewGroup;

.field private mNeedToHandleNewIntent:Z

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mQueryCompleteRunnable:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

.field private mResources:Landroid/content/res/Resources;

.field private mRoot:Landroid/view/View;

.field private mSelfClientType:I

.field private mSelfPresence:I

.field private mSendButton:Landroid/view/View;

.field private mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mStartVoiceChatRequest:Z

.field private mStarted:Z

.field private mSwitchHint:Landroid/widget/TextView;

.field private mSwitchHintParent:Landroid/view/View;

.field private mTabletMode:Z

.field private mTargetContact:Ljava/lang/String;

.field private mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

.field private mWaitForServiceTasks:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/ChatScreenFragment;->CHATS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 1064
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    .line 408
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInAnimation:Landroid/view/animation/Animation;

    .line 409
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mOutAnimation:Landroid/view/animation/Animation;

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    .line 439
    iput v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 443
    iput v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfPresence:I

    .line 473
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    .line 845
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$2;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mClearRunnable:Ljava/lang/Runnable;

    .line 986
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$4;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

    .line 2107
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$21;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$21;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    .line 1065
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->makeObserver()Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/talk/fragments/ChatScreenFragment;Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/util/ChatSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateHintText()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mClearRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/fragments/ChatScreenFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/database/Cursor;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Landroid/database/Cursor;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->userActionDetected()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->ensureChatInDb(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method private checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    .locals 9
    .parameter "contact"
    .parameter "accountId"
    .parameter "ensureChatsInDb"

    .prologue
    .line 1244
    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    monitor-enter v6

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-nez v0, :cond_0

    .line 1246
    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$10;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$10;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    const/4 v0, 0x0

    monitor-exit v6

    .line 1287
    :goto_0
    return-object v0

    .line 1254
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    invoke-interface {v0, p2, p3}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v8

    .line 1260
    .local v8, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-nez v8, :cond_1

    .line 1261
    const-string v0, "talk"

    const-string v1, "checkChatSession: null imSession, bail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1263
    const/4 v0, 0x0

    goto :goto_0

    .line 1254
    .end local v8           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1266
    .restart local v8       #imSession:Lcom/google/android/gtalkservice/IImSession;
    :cond_1
    :try_start_3
    invoke-interface {v8, p1}, Lcom/google/android/gtalkservice/IImSession;->getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v6

    .line 1267
    .local v6, chatSession:Lcom/google/android/gtalkservice/IChatSession;
    if-nez v6, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->suspendRequery()V

    .line 1269
    invoke-interface {v8, p1}, Lcom/google/android/gtalkservice/IImSession;->createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v6

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkChatSession created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chatSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->resumeRequery()V

    :cond_2
    :goto_1
    move-object v0, v6

    .line 1282
    goto :goto_0

    .line 1272
    :cond_3
    if-eqz p4, :cond_2

    .line 1276
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment$11;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1283
    .end local v6           #chatSession:Lcom/google/android/gtalkservice/IChatSession;
    .end local v8           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1284
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "talk"

    const-string v1, "checkChatSession caught "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createChatSwitcher(Landroid/view/View;)V
    .locals 10
    .parameter "root"

    .prologue
    .line 1036
    new-instance v0, Lcom/google/android/talk/util/ChatSwitcher;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    iget-object v5, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInflater:Landroid/view/LayoutInflater;

    new-instance v8, Lcom/google/android/talk/fragments/ChatScreenFragment$5;

    invoke-direct {v8, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$5;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mQueryCompleteRunnable:Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/talk/util/ChatSwitcher;-><init>(Landroid/app/Activity;JLandroid/view/View;Landroid/os/Handler;Lcom/google/android/talk/TalkApp;Landroid/view/LayoutInflater;Ljava/lang/Runnable;Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    .line 1051
    return-void
.end method

.method private dismissAllChatNotifications(J)V
    .locals 3
    .parameter

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1835
    if-nez v0, :cond_0

    .line 1836
    const-string v0, "talk"

    const-string v1, "dismissChatNotification: no GTalkService object found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :goto_0
    return-void

    .line 1841
    :cond_0
    :try_start_0
    const-string v1, "dismissChatNotification for all"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1842
    invoke-interface {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService;->dismissNotificationsForAccount(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1843
    :catch_0
    move-exception v0

    .line 1844
    const-string v1, "talk"

    const-string v2, "dismissChatNotification: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ensureChatInDb(Ljava/lang/String;J)V
    .locals 11
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 1295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1296
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v1, "contact_id"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const-string v1, " in (select _id from contacts where "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    const-string v1, "username"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const-string v1, "account"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1302
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/fragments/ChatScreenFragment;->CHATS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #buf:Ljava/lang/StringBuilder;
    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1308
    .local v7, c:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1309
    .local v8, contactId:J
    if-eqz v7, :cond_1

    .line 1311
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v8, v1

    .line 1315
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1320
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-nez v1, :cond_2

    .line 1321
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/talk/DatabaseUtils;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureChatInDb: create a chat for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contactId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1325
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1326
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1327
    const-string v1, "last_message_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1328
    const-string v1, "last_unread_message"

    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {v10, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1332
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 1315
    .restart local p0
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V
    .locals 1
    .parameter "vr"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->foreachChatView(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 471
    :cond_0
    return-void
.end method

.method private getActiveChat()Lcom/google/android/talk/ChatView;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedChatView()Lcom/google/android/talk/ChatView;

    move-result-object v0

    goto :goto_0
.end method

.method public static isChatScreenIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 1474
    if-nez p0, :cond_0

    move v1, v2

    .line 1478
    :goto_0
    return v1

    .line 1477
    :cond_0
    const-string v1, "from"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, fromAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2144
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreenFragment] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2148
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChatScreenFragment] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    return-void
.end method

.method private makeObserver()Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;
    .locals 1

    .prologue
    .line 885
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$3;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    return-object v0
.end method

.method private onGroupChatApproval(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1660
    if-nez p1, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1674
    :goto_0
    return-void

    .line 1665
    :cond_0
    const-string v0, "room"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    const-string v1, "approval"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1668
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1669
    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1672
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0
.end method

.method private pickChat(Landroid/database/Cursor;Ljava/lang/String;J)V
    .locals 7
    .parameter "cursor"
    .parameter "targetContact"
    .parameter "targetAccountId"

    .prologue
    const/4 v6, -0x1

    .line 939
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 947
    .local v1, currentIntent:Landroid/content/Intent;
    const-string v4, "from"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v4, "accountId"

    invoke-virtual {v1, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 950
    const/4 v3, -0x1

    .line 951
    .local v3, position:I
    if-eqz p1, :cond_4

    .line 952
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 953
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 954
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 955
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    iget v4, v4, Lcom/google/android/talk/util/ChatSwitcher;->mAccountIdColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-eqz v4, :cond_3

    .line 953
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 958
    :cond_3
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    iget v4, v4, Lcom/google/android/talk/util/ChatSwitcher;->mUsernameColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 962
    move v3, v2

    .line 969
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_4
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 971
    if-eqz p2, :cond_5

    .line 973
    if-ne v3, v6, :cond_6

    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, p2, p3, p4, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 975
    if-eq v3, v6, :cond_5

    .line 976
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v4, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setSelection(I)V

    .line 980
    :cond_5
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 981
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 982
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 973
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private pickChat(Ljava/lang/String;J)V
    .locals 3
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 930
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    .line 931
    .local v0, a:Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 935
    .local v1, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Landroid/database/Cursor;Ljava/lang/String;J)V

    .line 936
    return-void

    .line 931
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method private resolveIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1562
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1564
    const-string v1, "from_notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    .line 1566
    const-string v1, "vc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveIntent: fromNotify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1569
    return-void
.end method

.method private sendMessage()V
    .locals 5

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1336
    .local v0, active:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/talk/ChatView;->sendMessage(Ljava/lang/String;)V

    .line 1340
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 1341
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1343
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-nez v3, :cond_0

    .line 1346
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1347
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1348
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1350
    .local v2, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "title"
    .parameter "clientType"
    .parameter "presence"
    .parameter "capabilities"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 660
    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/google/android/talk/TalkApp;->getConnectionTypeIndicator(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .line 663
    .local v0, c:Landroid/graphics/drawable/Drawable;
    :goto_0
    iput p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfClientType:I

    .line 665
    if-eq p3, v4, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2, p3, p4}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 666
    .local v1, p:Landroid/graphics/drawable/Drawable;
    :goto_1
    iput p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSelfPresence:I

    .line 668
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    invoke-interface {v2, p1, v1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 669
    return-void

    .end local v0           #c:Landroid/graphics/drawable/Drawable;
    .end local v1           #p:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, v5

    .line 660
    goto :goto_0

    .restart local v0       #c:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v1, v5

    .line 665
    goto :goto_1
.end method

.method private setupMessageBar()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3fc0

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 1165
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v3, 0x7f100035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1166
    .local v1, vg:Landroid/view/ViewGroup;
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1168
    .local v0, messageBarTransition:Landroid/animation/LayoutTransition;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1169
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1170
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1171
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v5, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1172
    invoke-virtual {v0, v4, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1173
    invoke-virtual {v0, v5, v8, v9}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1175
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1177
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1180
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1181
    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    .line 1183
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-nez v2, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mMessageBar:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1186
    :cond_0
    return-void
.end method

.method private showSoftKeyboard()V
    .locals 3

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1194
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1196
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private start()V
    .locals 4

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-eqz v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v0, :cond_0

    .line 1398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    .line 1400
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    if-eqz v0, :cond_3

    .line 1401
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1402
    const-string v0, "onStart: service disconnected..."

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->handleDisconnectedService()V

    .line 1406
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->registerForServiceStateChanged()V

    .line 1419
    :goto_1
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$13;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$13;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 1427
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->requery()V

    .line 1430
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$14;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    .line 1447
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCallStateListener:Lcom/google/android/talk/videochat/ICallStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->registerCallStateListener(Lcom/google/android/talk/videochat/ICallStateListener;)V

    .line 1449
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    if-eqz v0, :cond_0

    .line 1450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    .line 1451
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    goto :goto_0

    .line 1413
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->serviceStateChanged()V

    goto :goto_1

    .line 1416
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->registerForServiceStateChanged()V

    goto :goto_1
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-nez v0, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1519
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    .line 1522
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->stop()V

    .line 1525
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->closeCursor()V

    .line 1531
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V

    .line 1533
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->unregisterForServiceStateChanged()V

    .line 1536
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->unregisterCallStateListener()V

    goto :goto_0
.end method

.method private updateHintText()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 862
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedItemPosition()I

    move-result v2

    .line 863
    .local v2, itemPosition:I
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    .line 864
    .local v0, a:Lcom/google/android/common/SwipeySwitcher$Adapter;
    instance-of v3, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    if-nez v3, :cond_0

    .line 877
    .end local v0           #a:Lcom/google/android/common/SwipeySwitcher$Adapter;
    :goto_0
    return-void

    .line 867
    .restart local v0       #a:Lcom/google/android/common/SwipeySwitcher$Adapter;
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHint:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 868
    check-cast v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;

    .end local v0           #a:Lcom/google/android/common/SwipeySwitcher$Adapter;
    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 869
    .local v1, c:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHint:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00e8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGridDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 873
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGridDrawable:Landroid/graphics/drawable/Drawable;

    .line 875
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHint:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGridDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 876
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHint:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method private userActionDetected()V
    .locals 2

    .prologue
    .line 2051
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2052
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 2055
    :cond_0
    return-void
.end method


# virtual methods
.method public addToChat()V
    .locals 5

    .prologue
    .line 2065
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2066
    if-eqz v0, :cond_0

    .line 2067
    const-string v1, "show groupchat invite"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 2068
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/google/android/talk/GroupChatInviteeList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2070
    const-string v2, "accountId"

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2071
    const-string v2, "from"

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getMucParticipants()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2076
    :cond_0
    return-void
.end method

.method clearChat()V
    .locals 1

    .prologue
    .line 2025
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2026
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2030
    :goto_0
    return-void

    .line 2029
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->clearChat()V

    goto :goto_0
.end method

.method public currentChatUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1625
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1626
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 1629
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public leaveChat()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1945
    const-string v0, "leaveChat"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1947
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1948
    if-nez v0, :cond_0

    .line 2022
    :goto_0
    return-void

    .line 1952
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v1

    .line 1953
    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v2

    .line 1955
    if-le v2, v7, :cond_7

    .line 1956
    new-instance v3, Lcom/google/android/talk/fragments/ChatScreenFragment$20;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$20;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 1964
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedItemPosition()I

    move-result v4

    .line 1965
    sub-int v5, v2, v7

    if-ge v4, v5, :cond_1

    move v5, v7

    .line 1967
    :goto_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 1975
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v2, v7}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedChatViewAdjacent(Z)Landroid/view/View;

    move-result-object v2

    .line 1976
    instance-of v2, v2, Lcom/google/android/talk/ChatView;

    if-nez v2, :cond_8

    .line 1977
    if-nez v7, :cond_2

    move v2, v7

    .line 1979
    :goto_2
    if-ne v4, v7, :cond_3

    move v4, v8

    :goto_3
    invoke-interface {v1, v4}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 1986
    :goto_4
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1988
    iget-boolean v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-nez v4, :cond_6

    .line 1990
    const-string v4, "from"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1994
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getSelectedChatViewAdjacent(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->updateTitle(Landroid/view/View;)V

    .line 1998
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    const/16 v4, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->selectNext(ZLjava/lang/Runnable;I)V

    .line 1999
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->leaveChat()V

    goto :goto_0

    :cond_1
    move v5, v8

    .line 1965
    goto :goto_1

    :cond_2
    move v2, v8

    .line 1977
    goto :goto_2

    :cond_3
    move v4, v7

    .line 1979
    goto :goto_3

    .line 1981
    :cond_4
    if-eqz v5, :cond_5

    add-int/lit8 v2, v4, 0x1

    :goto_5
    invoke-interface {v1, v2}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    move v2, v5

    goto :goto_4

    :cond_5
    sub-int v2, v4, v7

    goto :goto_5

    .line 2002
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2003
    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 2004
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2008
    :cond_7
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->onLastChatClosed()V

    .line 2010
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->leaveChat()V

    .line 2011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 2016
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2017
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2018
    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2019
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2020
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->requery()V

    goto/16 :goto_0

    :cond_8
    move v2, v7

    goto :goto_2
.end method

.method public leaveChat(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 1929
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    .line 1930
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-nez v1, :cond_0

    .line 1942
    :goto_0
    return-void

    .line 1934
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    .line 1935
    .local v0, currentChatContact:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1938
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat()V

    goto :goto_0

    .line 1940
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v2}, Lcom/google/android/talk/util/ChatSwitcher;->requery()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1483
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1485
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1486
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1757
    packed-switch p1, :pswitch_data_0

    .line 1818
    :cond_0
    :goto_0
    return-void

    .line 1760
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1761
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "invitee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1762
    if-eqz v5, :cond_1

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1764
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1765
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1766
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1767
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1769
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1771
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1774
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$18;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/fragments/ChatScreenFragment$18;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    .line 1808
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1810
    iput-object v7, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInviteRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1815
    :pswitch_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onGroupChatApproval(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    goto :goto_1

    .line 1757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 1055
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1057
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;

    move-object v1, v0

    .line 1058
    .local v1, host:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1059
    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;->getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 1060
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    .line 1061
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1900
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1902
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1904
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1905
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1906
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1907
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/4 v6, 0x1

    .line 1203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1204
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->resolveIntent()V

    .line 1206
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    .line 1208
    invoke-virtual {p0, v6}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setHasOptionsMenu(Z)V

    .line 1210
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    .line 1211
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1212
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "accountId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1213
    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1214
    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1217
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 1219
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 1221
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1224
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCreated:Z

    .line 1225
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1911
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-nez v0, :cond_0

    .line 1912
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1914
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 1135
    const v1, 0x7f040010

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    .line 1137
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHint:Landroid/widget/TextView;

    .line 1138
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Landroid/view/View;

    .line 1140
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V

    .line 1141
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setupMessageBar()V

    .line 1143
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1144
    .local v0, chatRoot:Landroid/view/ViewGroup;
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTabletMode:Z

    if-eqz v1, :cond_2

    .line 1145
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$SimpleActiveChats;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    .line 1150
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->createChatSwitcher(Landroid/view/View;)V

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    .line 1157
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    if-nez v1, :cond_1

    .line 1158
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->showSoftKeyboard()V

    .line 1161
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mRoot:Landroid/view/View;

    return-object v1

    .line 1147
    :cond_2
    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;

    invoke-direct {v1, p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$SwipeySwitcherActiveChats;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1547
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1549
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$17;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$17;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 1559
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .parameter "hidden"

    .prologue
    .line 2125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 2127
    if-eqz p1, :cond_2

    .line 2128
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 2129
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2130
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 2131
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2133
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2138
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    if-eqz v2, :cond_1

    .line 2139
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mGallery:Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;

    invoke-interface {v2, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;->onHiddenChanged(Z)V

    .line 2141
    :cond_1
    return-void

    .line 2136
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2033
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2034
    packed-switch p1, :pswitch_data_0

    .line 2047
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2040
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->userActionDetected()V

    goto :goto_0

    .line 2034
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 1593
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1622
    :goto_0
    return-void

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1598
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->resolveIntent()V

    .line 1600
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1603
    const-string v0, "accountId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1604
    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 1605
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 1606
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got intent with account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; contact is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1609
    :cond_1
    iput-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1612
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mStarted:Z

    if-nez v0, :cond_3

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    goto :goto_0

    .line 1616
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mNeedToHandleNewIntent:Z

    .line 1618
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->pickChat(Ljava/lang/String;J)V

    .line 1621
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mVideoChatStateAccessor:Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->requestCallStateUpdate()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1490
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1495
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mContactIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1501
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$16;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$16;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 1509
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1918
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1463
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1464
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$15;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 1471
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1635
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1637
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/util/ChatColorMaker;->freeze(Landroid/os/Bundle;)V

    .line 1640
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1641
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {v0, p1}, Lcom/google/android/talk/ChatView;->saveState(Landroid/os/Bundle;)V

    .line 1644
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1457
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1458
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    .line 1459
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1541
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1542
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 1543
    return-void
.end method

.method public registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/ChatScreenFragment$12;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$12;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceStateChangedCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1378
    return-void
.end method

.method public serviceStateChanged()V
    .locals 3

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_4

    .line 1856
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    monitor-enter v1

    .line 1857
    :try_start_0
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 1859
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1860
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1862
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mWaitForServiceTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1863
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$19;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$19;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->foreachChat(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V

    .line 1881
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 1882
    if-eqz v0, :cond_1

    .line 1883
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    .line 1884
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->handleUnreadMessages(Z)V

    .line 1887
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    if-eqz v1, :cond_2

    .line 1888
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mFromStatusBarNotify:Z

    .line 1889
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->dismissAllChatNotifications(J)V

    .line 1896
    :cond_2
    :goto_2
    return-void

    .line 1889
    :cond_3
    iget-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    goto :goto_1

    .line 1893
    :cond_4
    const-string v0, "talk"

    const-string v1, "serviceStateChanged: service disconnected, finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public setupInputFieldAndSendButton(Landroid/view/View;)V
    .locals 6
    .parameter "inputContainer"

    .prologue
    const/4 v5, 0x0

    .line 1068
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    .line 1069
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    const v4, 0x7f100054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    .line 1070
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mInputContainer:Landroid/view/View;

    const v4, 0x7f100053

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    .line 1072
    new-instance v3, Lcom/google/android/talk/util/ChatColorMaker;

    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-direct {v3, v5, v4}, Lcom/google/android/talk/util/ChatColorMaker;-><init>(II)V

    iput-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mColorMaker:Lcom/google/android/talk/util/ChatColorMaker;

    .line 1073
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mSendButton:Landroid/view/View;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$6;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$6;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$7;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$7;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1096
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$8;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$8;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1108
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1112
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    new-instance v4, Lcom/google/android/talk/fragments/ChatScreenFragment$9;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$9;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1127
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatInputField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1128
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 1129
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v1, p0, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1130
    return-void
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 1572
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mCreated:Z

    if-nez v0, :cond_0

    .line 1573
    const-string v0, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    .line 1590
    :goto_0
    return-void

    .line 1576
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 1578
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;

    .line 1581
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1582
    const-string v0, "switchAccounts: mActivity is NULL"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1585
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1586
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    .line 1587
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mChatSwitcher:Lcom/google/android/talk/util/ChatSwitcher;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/util/ChatSwitcher;->changeAccount(J)Z

    .line 1589
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V

    goto :goto_0
.end method

.method public toggleOtr()V
    .locals 2

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActiveChat()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2059
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->goOffTheRecord(Z)V

    .line 2062
    :cond_0
    return-void

    .line 2060
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeServiceStateChangedCallback(Landroid/os/Handler;)V

    .line 1382
    return-void
.end method

.method public updateTitle(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 672
    instance-of v6, p1, Lcom/google/android/talk/ChatView;

    if-nez v6, :cond_0

    .line 691
    :goto_0
    return-void

    .line 675
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    move-object v3, v0

    .line 676
    .local v3, cv:Lcom/google/android/talk/ChatView;
    if-nez v3, :cond_1

    .line 677
    const-string v6, ""

    invoke-direct {p0, v6, v10, v10, v11}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 680
    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0c0049

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 681
    .local v5, title:Ljava/lang/String;
    invoke-direct {p0, v5, v10, v10, v11}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 683
    .end local v5           #title:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0c0048

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 684
    .restart local v5       #title:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getStatus()I

    move-result v4

    .line 685
    .local v4, status:I
    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getCapabilities()I

    move-result v1

    .line 687
    .local v1, capabilities:I
    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getClientType()I

    move-result v2

    .line 688
    .local v2, clientType:I
    invoke-direct {p0, v5, v2, v4, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->setTitle(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method
