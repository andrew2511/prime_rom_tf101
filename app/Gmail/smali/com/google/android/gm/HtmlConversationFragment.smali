.class public Lcom/google/android/gm/HtmlConversationFragment;
.super Landroid/app/Fragment;
.source "HtmlConversationFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/HtmlConversationFragment$9;,
        Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;,
        Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;,
        Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;,
        Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;,
        Lcom/google/android/gm/HtmlConversationFragment$CustomWebChromeClient;,
        Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;,
        Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;,
        Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;,
        Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;,
        Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
        ">;",
        "Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;",
        "Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;"
    }
.end annotation


# static fields
.field private static DOWNLOADING_STRING:Ljava/lang/String;

.field private static DOWNLOAD_FAILED_STRING:Ljava/lang/String;

.field private static SAVED_STRING:Ljava/lang/String;

.field private static WAITING_FOR_WIFI_STRING:Ljava/lang/String;

.field private static mDownloadingAttachmentsLock:Ljava/lang/Object;

.field private static sRenderCache:Lcom/google/android/gm/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gm/LRUCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUndoBarTransitioner:Landroid/animation/LayoutTransition;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mContentToBeViewed:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mConversationCallbacks:Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;

.field private mConversationIdToBeViewed:J

.field private mConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadingAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;",
            ">;"
        }
    .end annotation
.end field

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

.field private final mHandler:Landroid/os/Handler;

.field private mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

.field private mInfoToRenderWhenVisible:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

.field private mInitialized:Z

.field private mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field private mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

.field private mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

.field private mMessageIdToBeViewed:J

.field private mNewMessageNotificationText:Landroid/widget/TextView;

.field private mNewMessageNotificationView:Landroid/view/View;

.field private mPartIdToBeViewed:Ljava/lang/String;

.field private mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

.field private mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSearchTerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetReadTask:Ljava/lang/Runnable;

.field private final mSpawnedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUndoView:Lcom/google/android/gm/UndoBarView;

.field private mUriToBeViewed:Landroid/net/Uri;

.field private mVisible:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

.field private mWebViewScrim:Landroid/view/View;

.field private mWebViewY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    sput-object v0, Lcom/google/android/gm/HtmlConversationFragment;->sUndoBarTransitioner:Landroid/animation/LayoutTransition;

    .line 219
    new-instance v0, Lcom/google/android/gm/LRUCache;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Lcom/google/android/gm/LRUCache;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachmentsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    iput v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    .line 159
    iput-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    .line 200
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSpawnedActivities:Ljava/util/Set;

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHandler:Landroid/os/Handler;

    .line 2307
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->updateRenderedInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/gm/HtmlConversationFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/gm/HtmlConversationFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/gm/HtmlConversationFragment;J)Ljava/lang/Long;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/HtmlConversationFragment;->getLocalMessageId(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSetReadTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/gm/HtmlConversationFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSetReadTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSearchTerms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationCallbacks:Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->DOWNLOADING_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->clearAttachmentToBeViewed()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/gm/HtmlConversationFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment;->showAttachmentTooLargeDialog(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/gm/HtmlConversationFragment;JJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/HtmlConversationFragment;->cancelAttachment(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->WAITING_FOR_WIFI_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->showDownloadingDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentState(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/HtmlConversationFragment;->startTrackingAttachmentProgress(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/google/android/gm/HtmlConversationFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->refreshWithPendingData()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->sendViewIntent()V

    return-void
.end method

.method static synthetic access$3100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachmentsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/android/gm/HtmlConversationFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachments:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/android/gm/HtmlConversationFragment;JJLjava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/HtmlConversationFragment;->getAttachment(JJLjava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->SAVED_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->DOWNLOAD_FAILED_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/gm/HtmlConversationFragment;JLjava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentStates(JLjava/util/List;I)V

    return-void
.end method

.method static synthetic access$3700()Lcom/google/android/gm/LRUCache;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentProgresses(JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/HtmlConversationFragment;->viewOrDownload(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    return-object v0
.end method

.method private declared-synchronized addSpawnedActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSpawnedActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    monitor-exit p0

    return-void

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelAttachment(JJLjava/lang/String;)V
    .locals 13
    .parameter "conversationId"
    .parameter "serverMessageId"
    .parameter "partId"

    .prologue
    .line 1759
    sget-object v2, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachmentsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1760
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1761
    .local v11, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1762
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    .line 1763
    .local v10, attachment:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    iget-wide v3, v10, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->messageId:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_0

    iget-object v3, v10, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->partId:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1764
    iget-object v3, v10, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, v10, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1765
    iget-object v3, v10, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1767
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 1771
    .end local v10           #attachment:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v12

    .line 1774
    .local v12, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v12, :cond_3

    .line 1775
    invoke-virtual {v12}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v2

    sget-object v8, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v9, 0x0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/provider/AttachmentManager;->cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I

    .line 1777
    invoke-virtual {v12}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v2

    sget-object v8, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v9, 0x1

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/provider/AttachmentManager;->cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I

    .line 1780
    :cond_3
    return-void

    .line 1771
    .end local v11           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;>;"
    .end local v12           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private declared-synchronized cleanupCursors()V
    .locals 1

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 724
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearAttachmentToBeViewed()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 2202
    iput-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationIdToBeViewed:J

    .line 2203
    iput-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageIdToBeViewed:J

    .line 2204
    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPartIdToBeViewed:Ljava/lang/String;

    .line 2205
    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    .line 2206
    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContentToBeViewed:Ljava/lang/String;

    .line 2207
    return-void
.end method

.method private clearFade()V
    .locals 2

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2557
    return-void
.end method

.method private clearView()V
    .locals 4

    .prologue
    .line 1650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 1651
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 1655
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method private dismissLoadingStatus()V
    .locals 2

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1667
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    return-void
.end method

.method private getAttachment(JJLjava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;
    .locals 8
    .parameter "conversationId"
    .parameter "serverMessageId"
    .parameter "partId"

    .prologue
    const/4 v7, 0x0

    .line 1934
    monitor-enter p0

    .line 1935
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1936
    monitor-exit p0

    move-object v4, v7

    .line 1953
    :goto_0
    return-object v4

    .line 1939
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/gm/HtmlConversationFragment;->getLocalMessageId(J)Ljava/lang/Long;

    move-result-object v3

    .line 1940
    .local v3, messageId:Ljava/lang/Long;
    if-nez v3, :cond_1

    .line 1941
    monitor-exit p0

    move-object v4, v7

    goto :goto_0

    .line 1945
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveToMessage(J)V

    .line 1946
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAttachmentInfos()Ljava/util/ArrayList;

    move-result-object v1

    .line 1947
    .local v1, attachmentInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 1948
    .local v0, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    iget-object v4, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1949
    monitor-exit p0

    move-object v4, v0

    goto :goto_0

    .line 1952
    .end local v0           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    :cond_3
    monitor-exit p0

    move-object v4, v7

    .line 1953
    goto :goto_0

    .line 1952
    .end local v1           #attachmentInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #messageId:Ljava/lang/Long;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getAttachmentProgress(Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;)I
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x64

    .line 2364
    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2365
    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 2366
    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2367
    iget v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->size:I

    if-lez v0, :cond_0

    .line 2370
    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    const-string v1, "bytes_so_far"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2372
    iget-object v1, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2373
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget v2, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->size:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 2389
    :goto_0
    return v0

    .line 2378
    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2380
    iget-object v1, p1, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2381
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2389
    goto :goto_0
.end method

.method private declared-synchronized getLastMessageId()J
    .locals 3

    .prologue
    .line 1041
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const-wide/16 v0, -0x1

    .line 1047
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 1046
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 1047
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLocalMessageId(J)Ljava/lang/Long;
    .locals 2
    .parameter "serverMessageId"

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 1925
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1930
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getSendingMessageIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendingMessageIds:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasAlreadySpawned(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, activity:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSpawnedActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideNewMessageNotification()V
    .locals 2

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    return-void
.end method

.method private initializeWebView()V
    .locals 3

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->resetWebView()V

    .line 1678
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    const-string v2, "gmail"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewClient:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1680
    return-void
.end method

.method private declared-synchronized refreshWithPendingData()V
    .locals 6

    .prologue
    .line 1079
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1080
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1085
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    iput v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    .line 1088
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 1089
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v0

    .line 1090
    .local v0, maxMessageId:J
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gm/ConversationInfo;->updateMaxMessageId(J)V

    .line 1093
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 1094
    .local v2, oldCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-direct {p0, v3}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 1096
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 1097
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eq v2, v3, :cond_1

    .line 1098
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1079
    .end local v0           #maxMessageId:J
    .end local v2           #oldCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized resetSpawnedActivities()V
    .locals 1

    .prologue
    .line 950
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSpawnedActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    monitor-exit p0

    return-void

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetWebView()V
    .locals 4

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, "gmail"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1639
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 1643
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    return-void
.end method

.method private sendGviewIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2296
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/gm/GviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2297
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2298
    const-string v1, "threadId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2299
    const-string v1, "attId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2300
    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2301
    invoke-virtual {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 2302
    return-void
.end method

.method private sendViewIntent()V
    .locals 3

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2278
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2279
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2281
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContentToBeViewed:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2283
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->clearAttachmentToBeViewed()V

    .line 2289
    return-void

    .line 2284
    :catch_0
    move-exception v0

    .line 2286
    const-string v1, "Gmail"

    const-string v2, "Coun\'t find Activity for intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showAttachmentTooLargeDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 2232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2233
    packed-switch p1, :pswitch_data_0

    .line 2242
    :goto_0
    :pswitch_0
    new-instance v1, Lcom/google/android/gm/HtmlConversationFragment$5;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HtmlConversationFragment$5;-><init>(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 2255
    const v2, 0x7f0d00e8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d00eb

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0026

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2259
    return-void

    .line 2236
    :pswitch_1
    const v1, 0x7f0d00e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2239
    :pswitch_2
    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized showConversationInternal(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;)V
    .locals 8
    .parameter "renderState"

    .prologue
    .line 777
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-nez v0, :cond_0

    .line 778
    const-string v0, "Gmail"

    const-string v1, "Cannot show conversation when the webview is invisible."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :goto_0
    monitor-exit p0

    return-void

    .line 781
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 782
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->dismissLoadingStatus()V

    .line 783
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->hideNewMessageNotification()V

    .line 785
    const-string v0, "HCA.webviewRender"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 786
    iget-object v0, p1, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v6

    .line 787
    .local v6, conversationId:J
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->attachToConversation(J)V

    .line 793
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 794
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x-thread://conversation/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mHtml:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationCallbacks:Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;

    invoke-interface {v0}, Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;->onConversationLoaded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 777
    .end local v6           #conversationId:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 7
    .parameter "messageCursor"

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-nez v0, :cond_1

    .line 755
    const-string v0, "Gmail"

    const-string v1, "Cannot show conversation when the webview is invisible."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 759
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 761
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSearchTerms:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/HtmlConversationBuilder;->getConversationHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v6

    .line 764
    .local v6, renderState:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    invoke-direct {p0, v6}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;)V

    .line 765
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 754
    .end local v6           #renderState:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showDownloadingDialog()V
    .locals 3

    .prologue
    .line 2214
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2215
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d00e6

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 2216
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2217
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2218
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/gm/HtmlConversationFragment$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HtmlConversationFragment$4;-><init>(Lcom/google/android/gm/HtmlConversationFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2224
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2225
    return-void
.end method

.method private showLoadingStatus()V
    .locals 2

    .prologue
    .line 1659
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->clearView()V

    .line 1661
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1662
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1663
    return-void
.end method

.method private showNewMessageNotification(Ljava/lang/String;)V
    .locals 2
    .parameter "notificationMsg"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2263
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    return-void
.end method

.method private startTrackingAttachmentProgress(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;)V
    .locals 3
    .parameter "conversationId"
    .parameter "attachment"

    .prologue
    .line 2349
    sget-object v0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachmentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2350
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachments:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2351
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2352
    new-instance v1, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;-><init>(Lcom/google/android/gm/HtmlConversationFragment;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2354
    :cond_0
    monitor-exit v0

    .line 2355
    return-void

    .line 2354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAttachmentProgresses(JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2395
    sget-object v2, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachmentsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2396
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadingAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2397
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    .line 2399
    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->getAttachmentProgress(Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;)I

    move-result v4

    .line 2402
    const/16 v5, 0x64

    if-ge v4, v5, :cond_1

    .line 2403
    const-string v5, ",\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->messageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    const-string v5, ",\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->partId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    const-string v5, ",\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    iget-wide v5, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->messageId:J

    iget-wide v7, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageIdToBeViewed:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->partId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPartIdToBeViewed:Ljava/lang/String;

    if-ne v0, v5, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gm/HtmlConversationFragment$6;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gm/HtmlConversationFragment$6;-><init>(Lcom/google/android/gm/HtmlConversationFragment;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2428
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2422
    :cond_1
    :try_start_1
    iget-object v4, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 2423
    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2425
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2428
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2429
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    .line 2434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2435
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gm/HtmlConversationFragment$7;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/HtmlConversationFragment$7;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentProgressesTask;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2449
    :cond_4
    return-void
.end method

.method private updateAttachmentState(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V
    .locals 1
    .parameter "conversationId"
    .parameter "attachment"
    .parameter "state"

    .prologue
    .line 2155
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2156
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2157
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentStates(JLjava/util/List;I)V

    .line 2158
    return-void
.end method

.method private declared-synchronized updateAttachmentStates(JLjava/util/List;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2064
    monitor-enter p0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2093
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2068
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2069
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    .line 2070
    const-string v3, ",\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->messageId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    const-string v3, ",\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->partId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    const-string v3, ",\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2074
    :cond_2
    const/16 v0, 0x5d

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2076
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2078
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2080
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/HtmlConversationFragment$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gm/HtmlConversationFragment$3;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized updateConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 21
    .parameter "messageCursor"

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationFragment;->getSendingMessageIds()Ljava/util/HashSet;

    move-result-object v14

    .line 814
    .local v14, sendingMessageIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mDraftMessageIds:Ljava/util/HashSet;

    invoke-static {v15}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    .line 816
    .local v3, deletedDraftMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v15, -0x1

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 817
    const/4 v10, 0x0

    .line 818
    .local v10, newMessages:I
    const/4 v11, 0x0

    .line 819
    .local v11, newSender:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v4

    .line 821
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 822
    .local v8, messageIsSending:Z
    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLabelCount()I

    move-result v15

    if-lez v15, :cond_1

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v15

    if-nez v15, :cond_0

    .line 825
    sget-object v15, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gm/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    move-object v15, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v13

    .line 831
    .local v13, sender:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    const-string v15, "javascript:gm.updateSender(\'%s\', \'%s\', \'%s\', \'%s\')"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gm/HtmlConversationBuilder;->domIdForMessageId(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v13}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v13}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getClickSafeAddress()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/gm/HtmlConversationBuilder;->getColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, js:Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    move-object v15, v0

    invoke-virtual {v15, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 854
    .end local v6           #js:Ljava/lang/String;
    .end local v13           #sender:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 805
    .end local v3           #deletedDraftMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v4           #id:J
    .end local v8           #messageIsSending:Z
    .end local v10           #newMessages:I
    .end local v11           #newSender:Ljava/lang/String;
    .end local v14           #sendingMessageIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 838
    .restart local v3       #deletedDraftMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v4       #id:J
    .restart local v8       #messageIsSending:Z
    .restart local v10       #newMessages:I
    .restart local v11       #newSender:Ljava/lang/String;
    .restart local v14       #sendingMessageIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-object v15, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getMessageId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->hasRenderedMessage(J)Z

    move-result v15

    if-nez v15, :cond_0

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 845
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    .end local v4           #id:J
    .end local v8           #messageIsSending:Z
    :goto_2
    monitor-exit p0

    return-void

    .line 849
    .restart local v4       #id:J
    .restart local v8       #messageIsSending:Z
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 850
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 856
    .end local v4           #id:J
    .end local v8           #messageIsSending:Z
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 858
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    goto :goto_2

    .line 862
    :cond_5
    if-lez v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 864
    sget-object v15, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/gm/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const/4 v15, 0x1

    if-ne v10, v15, :cond_7

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    move-object v15, v0

    invoke-virtual {v15, v11}, Lcom/google/android/gm/HtmlConversationBuilder;->getEmailAddress(Ljava/lang/String;)Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;

    move-result-object v2

    .line 871
    .local v2, address:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getName()Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 873
    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 875
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0156

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 881
    .end local v2           #address:Lcom/google/android/gm/HtmlConversationBuilder$EmailAddress;
    .end local v9           #name:Ljava/lang/String;
    .local v7, message:Ljava/lang/String;
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 885
    .local v12, sb:Ljava/lang/StringBuilder;
    :try_start_3
    invoke-static {v12, v7}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 891
    :goto_4
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->showNewMessageNotification(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 896
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    goto/16 :goto_2

    .line 878
    .end local v7           #message:Ljava/lang/String;
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0157

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #message:Ljava/lang/String;
    goto :goto_3

    .line 898
    .end local v7           #message:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-object v15, v0

    if-eqz v15, :cond_9

    .line 901
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mPendingMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    goto/16 :goto_2

    .line 908
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 909
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/HtmlConversationFragment;->updateRenderedInfo()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 886
    .restart local v7       #message:Ljava/lang/String;
    .restart local v12       #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v15

    goto :goto_4
.end method

.method private updateRenderedInfo()V
    .locals 6

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSearchTerms:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/HtmlConversationBuilder;->getConversationHtml(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;Z)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 920
    return-void
.end method

.method private viewOrDownload(JLjava/lang/String;I)V
    .locals 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1783
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/HtmlConversationFragment;->getLocalMessageId(J)Ljava/lang/Long;

    move-result-object v14

    .line 1784
    if-nez v14, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v6

    move-object/from16 v5, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    .line 1788
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gm/HtmlConversationFragment;->getAttachment(JJLjava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;

    move-result-object v11

    .line 1789
    if-eqz v11, :cond_0

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v12, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v5

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v12, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v8

    .line 1799
    const/4 v9, 0x1

    move/from16 v0, p4

    move v1, v9

    if-eq v0, v1, :cond_2

    const/4 v9, 0x4

    move/from16 v0, p4

    move v1, v9

    if-ne v0, v1, :cond_3

    .line 1800
    :cond_2
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gm/HtmlConversationFragment;->mConversationIdToBeViewed:J

    .line 1801
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gm/HtmlConversationFragment;->mMessageIdToBeViewed:J

    .line 1802
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mPartIdToBeViewed:Ljava/lang/String;

    .line 1803
    const/4 v9, 0x1

    move/from16 v0, p4

    move v1, v9

    if-ne v0, v1, :cond_4

    move-object v9, v5

    :goto_1
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    .line 1804
    iget-object v9, v11, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/HtmlConversationFragment;->mContentToBeViewed:Ljava/lang/String;

    .line 1807
    :cond_3
    new-instance v12, Lcom/google/android/gm/HtmlConversationFragment$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v13, p0

    move-wide/from16 v15, p1

    move-object/from16 v17, p3

    move-object/from16 v18, v11

    move/from16 v19, p4

    move-wide/from16 v20, v6

    invoke-direct/range {v12 .. v21}, Lcom/google/android/gm/HtmlConversationFragment$2;-><init>(Lcom/google/android/gm/HtmlConversationFragment;Landroid/content/ContentResolver;JLjava/lang/String;Lcom/google/android/gm/provider/Gmail$Attachment;IJ)V

    .line 1876
    packed-switch p4, :pswitch_data_0

    goto/16 :goto_0

    .line 1878
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    move-object v9, v0

    iget-object v12, v11, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    iget-object v13, v11, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    move-object/from16 v8, p0

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gm/HtmlConversationFragment;->sendGviewIntent(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1803
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 1882
    :pswitch_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail;->getAttachmentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1886
    :pswitch_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v8}, Lcom/google/android/gm/provider/Gmail;->getAttachmentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1890
    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1891
    const v6, 0x7f0d00e4

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d00e5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1895
    :pswitch_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v8}, Lcom/google/android/gm/provider/Gmail;->getAttachmentDownloadUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v5, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    .line 1899
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gm/HtmlConversationFragment;->cancelAttachment(JJLjava/lang/String;)V

    .line 1900
    new-instance v8, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    const-wide/16 v13, -0x1

    iget v15, v11, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    invoke-direct/range {v8 .. v16}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide v1, v6

    move-object v3, v8

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentState(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V

    goto/16 :goto_0

    .line 1876
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public bindActivityInfo(Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Lcom/google/android/gm/ConversationInfo;Ljava/util/List;Lcom/google/android/gm/MenuHandler;)V
    .locals 3
    .parameter "callbacks"
    .parameter "gmail"
    .parameter "account"
    .parameter "info"
    .parameter
    .parameter "menuHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;",
            "Lcom/google/android/gm/provider/Gmail;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gm/MenuHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    .local p5, searchQueryTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 360
    iput-object p3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    .line 361
    new-instance v0, Lcom/google/android/gm/HtmlConversationBuilder;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    .line 362
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationCallbacks:Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;

    .line 363
    iput-object p6, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 365
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    .line 366
    return-void
.end method

.method public declared-synchronized clearConversation()V
    .locals 3

    .prologue
    .line 700
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 702
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->cleanupCursors()V

    .line 704
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 706
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->attachToConversation(J)V

    .line 708
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->clearView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_0
    monitor-exit p0

    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fadeOnDestructiveCommand()V
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewScrim:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2561
    return-void
.end method

.method public declared-synchronized forward()V
    .locals 4

    .prologue
    .line 1027
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getLastMessageId()J

    move-result-wide v0

    .line 1028
    .local v0, messageId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1029
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->forward(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :cond_0
    monitor-exit p0

    return-void

    .line 1027
    .end local v0           #messageId:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized forward(J)V
    .locals 2
    .parameter

    .prologue
    .line 1013
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->hasAlreadySpawned(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1017
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gm/ComposeActivity;->forward(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1019
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->addSpawnedActivity(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInitialUnreadMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2452
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessagesIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    iget-object v0, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mMessageIds:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hideUndoView(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 2479
    if-eqz p1, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/google/android/gm/HtmlConversationFragment;->sUndoBarTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2484
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->hide()V

    .line 2485
    return-void

    .line 2482
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public declared-synchronized highlightTerms(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "javascript:highlightInMessageBodies(["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x1

    .line 1057
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1058
    if-nez v3, :cond_0

    .line 1059
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :cond_0
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 1066
    :cond_1
    const-string v0, "]);"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    :cond_2
    monitor-exit p0

    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationLoadingOrRendered()Z
    .locals 1

    .prologue
    .line 2099
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationLoadingOrRendered(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2109
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationLoadingOrRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationRendered()Z
    .locals 1

    .prologue
    .line 2116
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConversationRendered(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2125
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataLoaded()Z
    .locals 1

    .prologue
    .line 2135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataLoaded(J)Z
    .locals 2
    .parameter "conversationId"

    .prologue
    .line 2143
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;

    .line 344
    .local v0, initializer:Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;
    invoke-interface {v0, p0}, Lcom/google/android/gm/HtmlConversationFragment$ConversationFragmentInitializer;->initializeFragment(Lcom/google/android/gm/HtmlConversationFragment;)V

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInitialized:Z

    .line 347
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->startLoadingConversation()V

    .line 350
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 2539
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2541
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2543
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2545
    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2547
    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2549
    const v2, 0x7f0c003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2551
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const v2, 0x7f0c003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2553
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    .line 296
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mDownloadManager:Landroid/app/DownloadManager;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    const-string v1, "renderinfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 299
    const-string v1, "webview-y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    .line 302
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->setRetainInstance(Z)V

    .line 303
    sget-object v1, Lcom/google/android/gm/HtmlConversationFragment;->DOWNLOADING_STRING:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/HtmlConversationFragment;->DOWNLOADING_STRING:Ljava/lang/String;

    .line 306
    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/HtmlConversationFragment;->SAVED_STRING:Ljava/lang/String;

    .line 307
    const v1, 0x7f0d00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/HtmlConversationFragment;->DOWNLOAD_FAILED_STRING:Ljava/lang/String;

    .line 308
    const v1, 0x7f0d00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/HtmlConversationFragment;->WAITING_FOR_WIFI_STRING:Ljava/lang/String;

    .line 310
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    const-string v2, "conversationId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 483
    .local v0, conversationId:J
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorLoader(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/android/gm/provider/MessageCursorLoader;

    move-result-object v2

    return-object v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 315
    const v0, 0x7f04001b

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    .line 316
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    .line 317
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->restrictWebView(Landroid/webkit/WebView;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewScrim:Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gm/HtmlConversationFragment$CustomWebChromeClient;

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/HtmlConversationFragment$CustomWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 322
    new-instance v0, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    invoke-direct {v0, p0}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;-><init>(Lcom/google/android/gm/HtmlConversationFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    .line 323
    new-instance v0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;-><init>(Lcom/google/android/gm/HtmlConversationFragment;Lcom/google/android/gm/HtmlConversationFragment$1;)V

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewClient:Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;

    .line 325
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0053

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/UndoBarView;

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    new-instance v1, Lcom/google/android/gm/HtmlConversationFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/HtmlConversationFragment$1;-><init>(Lcom/google/android/gm/HtmlConversationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationView:Landroid/view/View;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mNewMessageNotificationText:Landroid/widget/TextView;

    .line 336
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 450
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 451
    .local v0, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gm/provider/AttachmentManager;->unregisterAttachmentObserver(Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;)V

    .line 454
    :cond_0
    return-void
.end method

.method public onDownloadFinished(JJLjava/lang/String;ZZLjava/lang/String;)V
    .locals 10
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "saveToSd"
    .parameter "success"
    .parameter "fileUri"

    .prologue
    .line 2167
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/HtmlConversationFragment;->getAttachment(JJLjava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;

    move-result-object v9

    .line 2168
    .local v9, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    if-nez v9, :cond_1

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2171
    :cond_1
    new-instance v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;

    const-wide/16 v5, -0x1

    iget v7, v9, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;-><init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V

    .line 2174
    .local v0, attachmentState:Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
    if-nez p7, :cond_2

    .line 2175
    sget-object v1, Lcom/google/android/gm/HtmlConversationFragment;->DOWNLOAD_FAILED_STRING:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    .line 2176
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentState(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V

    goto :goto_0

    .line 2178
    :cond_2
    if-eqz p6, :cond_4

    .line 2179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gm/HtmlConversationFragment;->SAVED_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget v3, v9, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    .line 2181
    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentState(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V

    .line 2189
    :goto_1
    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationIdToBeViewed:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageIdToBeViewed:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mPartIdToBeViewed:Ljava/lang/String;

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2191
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    if-nez v1, :cond_3

    if-eqz p6, :cond_3

    .line 2192
    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    .line 2194
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUriToBeViewed:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2195
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->sendViewIntent()V

    goto :goto_0

    .line 2183
    :cond_4
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->updateAttachmentState(JLcom/google/android/gm/HtmlConversationFragment$AttachmentState;I)V

    goto :goto_1
.end method

.method public declared-synchronized onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 8
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 573
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "^u"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v7

    .line 577
    .local v2, uiInvalidated:Z
    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v4}, Lcom/google/android/gm/MenuHandler;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p4, v4}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/provider/Label;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v7

    .line 580
    .local v3, updateUi:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 584
    sget-object v4, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gm/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationLoadingOrRendered(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    .line 616
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .end local v2           #uiInvalidated:Z
    .end local v3           #updateUi:Z
    :cond_2
    move v2, v6

    .line 573
    goto :goto_0

    .restart local v2       #uiInvalidated:Z
    :cond_3
    move v3, v6

    .line 577
    goto :goto_1

    .line 592
    .restart local v3       #updateUi:Z
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4, p1, p4}, Lcom/google/android/gm/ConversationInfo;->updateLabel(Lcom/google/android/gm/provider/Label;Z)V

    .line 594
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 599
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getDisplayableLabel(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 600
    .local v0, displayableLabel:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 601
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:gm.setLabels(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment;->mHtmlBuilder:Lcom/google/android/gm/HtmlConversationBuilder;

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v7}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gm/HtmlConversationBuilder;->getLabelsHtml(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gm/Utils;->escapeHtmlParamForJsUri(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    iget-object v4, v4, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4, p1, p4}, Lcom/google/android/gm/ConversationInfo;->updateLabel(Lcom/google/android/gm/provider/Label;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 607
    .end local v0           #displayableLabel:Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 614
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while getting display label: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 573
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #uiInvalidated:Z
    .end local v3           #updateUi:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$MessageCursor;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v0

    .line 489
    .local v0, messageCursorCount:I
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v1

    .line 491
    .local v1, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    sget-object v2, Lcom/google/android/gm/HtmlConversationFragment$9;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 515
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 549
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 495
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    if-nez v2, :cond_2

    .line 496
    new-instance v2, Lcom/google/android/gm/comm/NetworkProgressMonitor;

    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gm/comm/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/comm/NetworkProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 488
    .end local v0           #messageCursorCount:I
    .end local v1           #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 505
    .restart local v0       #messageCursorCount:I
    .restart local v1       #status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    invoke-virtual {v2}, Lcom/google/android/gm/comm/NetworkProgressMonitor;->done()V

    .line 507
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mProgressMonitor:Lcom/google/android/gm/comm/NetworkProgressMonitor;

    goto :goto_0

    .line 511
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationCallbacks:Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;

    invoke-interface {v2}, Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;->onConversationLoadError()V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eq p2, v2, :cond_1

    .line 529
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 530
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 531
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load completed in (this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") was for conversation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but expecting conversation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    :cond_4
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    if-nez v2, :cond_6

    .line 540
    iget-boolean v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-eqz v2, :cond_5

    .line 541
    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    goto/16 :goto_1

    .line 543
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->clearView()V

    .line 544
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    goto/16 :goto_1

    .line 547
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/android/gm/HtmlConversationFragment;->updateConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    check-cast p2, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/HtmlConversationFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/Gmail$MessageCursor;>;"
    return-void
.end method

.method public onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    .line 2498
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gm/provider/AttachmentManager;->registerAttachmentObserver(Lcom/google/android/gm/provider/AttachmentManager$AttachmentObserver;)V

    .line 2502
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Urls;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2503
    .local v0, uri:Ljava/lang/String;
    new-instance v1, Lcom/google/android/gm/HtmlConversationFragment$8;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/HtmlConversationFragment$8;-><init>(Lcom/google/android/gm/HtmlConversationFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getAuthToken(Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 2527
    return-void
.end method

.method public declared-synchronized onMarkUnread()V
    .locals 2

    .prologue
    .line 2532
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSetReadTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/MenuHandler;->getBackgroundTaskHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSetReadTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    :cond_0
    monitor-exit p0

    return-void

    .line 2532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1103
    .line 1104
    packed-switch p1, :pswitch_data_0

    move v0, v3

    .line 1132
    :goto_0
    return v0

    .line 1106
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    if-nez v0, :cond_0

    move v0, v3

    .line 1110
    goto :goto_0

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getInitialUnreadMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1113
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getMessagesIds()Ljava/util/Set;

    move-result-object v1

    .line 1114
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1115
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 1119
    if-lez v2, :cond_1

    if-eq v2, v1, :cond_1

    move-object v2, v0

    .line 1122
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    const-string v4, "^u"

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 1124
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v1, v0, v7}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 1125
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    const/4 v4, 0x0

    const v5, 0x7f0e00b0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    move v0, v7

    .line 1129
    goto :goto_0

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 438
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 439
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    .line 440
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 433
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->resetSpawnedActivities()V

    .line 434
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "renderinfo"

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 477
    :cond_0
    const-string v0, "webview-y"

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 405
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->initializeWebView()V

    .line 407
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/HtmlConversationBuilder;->getZoomValue(Landroid/content/Context;)F

    move-result v0

    .line 410
    .local v0, currentZoomValue:F
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isDirty(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 417
    .local v1, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->validForSenderWhitelist(Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {v2}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->markDirtyAndUncacheable()V

    .line 421
    .end local v1           #whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isDirty(F)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-direct {p0, v2}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;)V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->startLoadingConversation()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 445
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 462
    move v1, p1

    .line 463
    .local v1, activityHasFocus:Z
    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 465
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gm/Utils;->cancelNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public declared-synchronized reply()V
    .locals 4

    .prologue
    .line 974
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getLastMessageId()J

    move-result-wide v0

    .line 975
    .local v0, messageId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 976
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->reply(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :cond_0
    monitor-exit p0

    return-void

    .line 974
    .end local v0           #messageId:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized reply(J)V
    .locals 3
    .parameter

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->hasAlreadySpawned(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 964
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/gm/ComposeActivity;->reply(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 966
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->addSpawnedActivity(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replyAll()V
    .locals 4

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getLastMessageId()J

    move-result-wide v0

    .line 1002
    .local v0, messageId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1003
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment;->replyAll(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    :cond_0
    monitor-exit p0

    return-void

    .line 1001
    .end local v0           #messageId:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replyAll(J)V
    .locals 3
    .parameter

    .prologue
    .line 987
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->hasAlreadySpawned(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 991
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mAccount:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/gm/ComposeActivity;->reply(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 993
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->addSpawnedActivity(Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retryLoad()V
    .locals 1

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->retry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_0
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWebViewVisibility(Z)V
    .locals 5
    .parameter "isVisible"

    .prologue
    const/4 v4, 0x0

    .line 375
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 378
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    .line 383
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 388
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 398
    :cond_1
    :goto_2
    iput-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursorWhenVisible:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 399
    iput-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInfoToRenderWhenVisible:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_1

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInfoToRenderWhenVisible:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInfoToRenderWhenVisible:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    iget-object v1, v1, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInfoToRenderWhenVisible:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;)V

    goto :goto_2
.end method

.method public declared-synchronized showConversation(Lcom/google/android/gm/ConversationInfo;Ljava/util/List;)V
    .locals 5
    .parameter "info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p2, searchQueryTerms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/ConversationInfo;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 658
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->cleanupCursors()V

    .line 660
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebViewY:I

    .line 661
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 662
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRenderedInfo:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 663
    iput-object p2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mSearchTerms:Ljava/util/List;

    .line 665
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->clearFade()V

    .line 667
    iget-boolean v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 668
    sget-object v2, Lcom/google/android/gm/HtmlConversationFragment;->sRenderCache:Lcom/google/android/gm/LRUCache;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gm/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    .line 669
    .local v0, cached:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 674
    .local v1, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/ConversationInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->isCacheable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->validForSenderWhitelist(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    iget-boolean v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mVisible:Z

    if-eqz v2, :cond_2

    .line 678
    invoke-direct {p0, v0}, Lcom/google/android/gm/HtmlConversationFragment;->showConversationInternal(Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;)V

    .line 690
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->startLoadingConversation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 654
    .end local v0           #cached:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .end local v1           #whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 680
    .restart local v0       #cached:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;
    .restart local v1       #whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mInfoToRenderWhenVisible:Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    goto :goto_1

    .line 683
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mGmailJsInterface:Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;->attachToConversation(J)V

    .line 684
    invoke-direct {p0}, Lcom/google/android/gm/HtmlConversationFragment;->showLoadingStatus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public showUndoView(Lcom/google/android/gm/UndoOperation;Z)V
    .locals 2
    .parameter "undoOperation"
    .parameter "animate"

    .prologue
    .line 2467
    if-eqz p2, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    sget-object v1, Lcom/google/android/gm/HtmlConversationFragment;->sUndoBarTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2472
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mUndoView:Lcom/google/android/gm/UndoBarView;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/UndoBarView;->show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V

    .line 2473
    return-void

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public declared-synchronized startLoadingConversation()V
    .locals 4

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v1, :cond_0

    .line 734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "conversationId"

    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 740
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 741
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    monitor-exit p0

    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toggleStar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 622
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isDataLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment;->mMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;

    .line 624
    .local v1, messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v3

    if-lez v3, :cond_0

    .line 625
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 626
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v3}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    const-string v4, "^t"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v5

    .line 627
    .local v2, newState:Z
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gm/HtmlConversationBuilder;->domIdForMessageId(J)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:gm.setStar(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    .end local v2           #newState:Z
    :cond_0
    monitor-exit p0

    return-void

    .line 626
    .restart local v1       #messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 622
    .end local v1           #messageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized unstarAllMessages()V
    .locals 2

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/HtmlConversationFragment;->isConversationRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment;->mWebView:Landroid/webkit/WebView;

    const-string v1, "javascript:gm.unstarAllMessages()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :cond_0
    monitor-exit p0

    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
