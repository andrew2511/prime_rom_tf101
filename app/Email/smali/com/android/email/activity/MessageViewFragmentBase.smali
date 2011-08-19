.class public abstract Lcom/android/email/activity/MessageViewFragmentBase;
.super Landroid/app/Fragment;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;,
        Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;,
        Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;,
        Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    }
.end annotation


# static fields
.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field private static PREVIEW_ICON_HEIGHT:I

.field private static PREVIEW_ICON_WIDTH:I

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static final ZOOM_SCALE_ARRAY:[F


# instance fields
.field private mAccountId:J

.field private mAddressesView:Landroid/widget/TextView;

.field private mAttachmentCount:I

.field private mAttachmentTab:Landroid/widget/TextView;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttachmentsScroll:Landroid/view/View;

.field private mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

.field private mContactStatusState:I

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTab:I

.field private mDateTimeView:Landroid/widget/TextView;

.field private mFromAddressView:Landroid/widget/TextView;

.field private mFromBadge:Landroid/widget/ImageView;

.field private mFromNameView:Landroid/widget/TextView;

.field private mHtmlTextRaw:Ljava/lang/String;

.field private mHtmlTextWebView:Ljava/lang/String;

.field private mInviteScroll:Landroid/view/View;

.field private mInviteTab:Landroid/widget/TextView;

.field private mIsMessageLoadedForTest:Z

.field private mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

.field private mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

.field private mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

.field private mLoadWhenResumed:Z

.field private mLoadingProgress:Landroid/view/View;

.field private mMainView:Landroid/view/View;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mMessageContentView:Landroid/webkit/WebView;

.field private mMessageId:J

.field private mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

.field private mMessageTab:Landroid/widget/TextView;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

.field private mRestoredPictureLoaded:Z

.field private mRestoredTab:I

.field private mResumed:Z

.field private mSenderPresenceView:Landroid/widget/ImageView;

.field private mShowDetailsButton:Landroid/widget/Button;

.field private mShowPicturesTab:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTabFlags:I

.field private mTabSection:Landroid/view/View;

.field private final mUpdatePreviewIconTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e

    .line 106
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 108
    const-string v0, "(?i)http|https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 110
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    .line 111
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    .line 216
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->ZOOM_SCALE_ARRAY:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 136
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 137
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 200
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 205
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 209
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mUpdatePreviewIconTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 262
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 1761
    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->queryContactStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mUpdatePreviewIconTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V

    return-void
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1340
    const v1, 0x7f04002a

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1342
    const v0, 0x7f0f0072

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1343
    const v1, 0x7f0f0090

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1344
    const v2, 0x7f0f008f

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1345
    const v3, 0x7f0f0095

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1346
    const v4, 0x7f0f0092

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1347
    const v5, 0x7f0f0091

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1348
    const v6, 0x7f0f0094

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1349
    const v7, 0x7f0f000f

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1350
    const v8, 0x7f0f0084

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1352
    new-instance v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v11, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, p1, v8, v12}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 1356
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1357
    const/4 v8, 0x1

    invoke-static {v10, v8}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1002(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1360
    :cond_0
    invoke-static {v10, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2402(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1361
    invoke-static {v10, v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2502(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1362
    invoke-static {v10, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1363
    invoke-static {v10, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1364
    invoke-static {v10, v7}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$902(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1365
    invoke-static {v10, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2302(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1367
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1369
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1370
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1371
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1374
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1376
    iget-object v2, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSize:J

    invoke-static {v0, v2, v3}, Lcom/android/email/UiUtilities;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1380
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1381
    return-void
.end method

.method private blockNetworkLoads(Z)V
    .locals 1
    .parameter "block"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method private cancelAllTasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 430
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mUpdatePreviewIconTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 431
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 432
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 433
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 434
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    .line 435
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 436
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 437
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 438
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 439
    return-void
.end method

.method private final clearTabFlags(I)V
    .locals 2
    .parameter "tabFlags"

    .prologue
    .line 553
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 554
    return-void
.end method

.method private doFinishLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 857
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 858
    .local v0, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_0

    .line 859
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1002(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 860
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 862
    :cond_0
    return-void
.end method

.method private findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 1591
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentView(J)Landroid/view/View;

    move-result-object v0

    .line 1592
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-object v1, p0

    .line 1595
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 5
    .parameter "attachmentId"

    .prologue
    .line 1384
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1385
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1387
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    move-object v3, v0

    .line 1391
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :goto_1
    return-object v3

    .line 1384
    .restart local v0       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1391
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findAttachmentView(J)Landroid/view/View;
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 1580
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1581
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1582
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1583
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1587
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return-object v4

    .line 1580
    .restart local v0       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1587
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private formatDate(JZ)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1474
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1475
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x80011

    if-eqz p3, :cond_0

    const/4 v3, 0x4

    :goto_0
    or-int v6, v2, v3

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 1480
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1475
    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private static getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1158
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-wide v0, p1, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    sget v4, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    sget v5, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1166
    :goto_0
    return-object v0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment preview failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabContentViewForFlag(I)Landroid/view/View;
    .locals 1
    .parameter "tabFlag"

    .prologue
    .line 639
    packed-switch p1, :pswitch_data_0

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 641
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 645
    :goto_0
    return-object v0

    .line 643
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    goto :goto_0

    .line 645
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getTabViewForFlag(I)Landroid/view/View;
    .locals 1
    .parameter "tabFlag"

    .prologue
    .line 627
    packed-switch p1, :pswitch_data_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 633
    :goto_0
    return-object v0

    .line 631
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    goto :goto_0

    .line 633
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getWebViewZoom()I
    .locals 4

    .prologue
    .line 532
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 533
    .local v0, density:F
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    .line 534
    .local v1, zoom:I
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->ZOOM_SCALE_ARRAY:[F

    aget v2, v2, v1

    mul-float/2addr v2, v0

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private initContactStatusViews()V
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    const v1, 0x108006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V

    .line 542
    return-void
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 573
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "visible"

    .prologue
    .line 566
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 567
    .local v0, visibility:I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 568
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 570
    :cond_0
    return-void

    .line 566
    .end local v0           #visibility:I
    :cond_1
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method

.method private onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 2
    .parameter "attachment"

    .prologue
    .line 844
    iget-wide v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 846
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 847
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 849
    :cond_0
    return-void
.end method

.method private onClickSender()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 670
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 671
    .local v2, senderEmail:Lcom/android/emailcommon/mail/Address;
    if-nez v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    if-nez v4, :cond_2

    .line 675
    iput v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    goto :goto_0

    .line 678
    :cond_2
    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    if-eq v4, v5, :cond_0

    .line 682
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 683
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    const/4 v7, 0x3

    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_3
    const-string v4, "mailto"

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 688
    .local v1, mailUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 692
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, senderPersonal:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 698
    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    :cond_4
    const/high16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onInfoAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 3
    .parameter "attachment"

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mDenyFlags:I

    invoke-static {v1, v2}, Lcom/android/email/activity/AttachmentInfoDialog;->newInstance(Landroid/content/Context;I)Lcom/android/email/activity/AttachmentInfoDialog;

    move-result-object v0

    .line 807
    .local v0, dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/AttachmentInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 7
    .parameter "attachment"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 811
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 814
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 838
    :goto_0
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgressIndeterminate()V

    .line 839
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->loadAttachment(JJJ)V

    .line 840
    return-void

    .line 836
    :cond_0
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 19
    .parameter "info"

    .prologue
    .line 749
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08008b

    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 793
    :goto_0
    return-void

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    move-wide v4, v0

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 758
    .local v11, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    move-wide v3, v0

    iget-wide v5, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v12

    .line 761
    .local v12, attachmentUri:Landroid/net/Uri;
    :try_start_0
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 763
    .local v14, downloads:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 764
    iget-object v3, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 765
    .local v15, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13

    .line 767
    .local v13, contentUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 768
    .local v16, in:Ljava/io/InputStream;
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 769
    .local v18, out:Ljava/io/OutputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 770
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 771
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 772
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f08008a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 786
    .local v2, dm:Landroid/app/DownloadManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mContentType:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSize:J

    move-wide v8, v0

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 790
    .end local v2           #dm:Landroid/app/DownloadManager;
    .end local v13           #contentUri:Landroid/net/Uri;
    .end local v14           #downloads:Ljava/io/File;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #in:Ljava/io/InputStream;
    .end local v18           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 791
    .local v17, ioe:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08008b

    invoke-static {v3, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    goto/16 :goto_0
.end method

.method private onShowDetails()V
    .locals 7

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDate(JZ)Ljava/lang/String;

    move-result-object v2

    .line 879
    const-string v0, "\n"

    .line 880
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    const-string v3, "\n"

    invoke-static {v0, v3}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 881
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    const-string v4, "\n"

    invoke-static {v0, v4}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 882
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    const-string v5, "\n"

    invoke-static {v0, v5}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 883
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    const-string v6, "\n"

    invoke-static {v0, v6}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 884
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->newInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/activity/MessageViewMessageDetailsDialog;

    move-result-object v0

    .line 886
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onShowPicturesInHtml()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 866
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 867
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 868
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 870
    :cond_0
    return-void
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 796
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 798
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0800aa

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private queryContactStatus()V
    .locals 6

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initContactStatusViews()V

    .line 941
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_0

    .line 942
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 943
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 952
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #sender:Lcom/android/emailcommon/mail/Address;
    :cond_0
    return-void
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1492
    .line 1493
    iput-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 1496
    if-nez p2, :cond_6

    .line 1501
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<html><body>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1502
    if-eqz p1, :cond_4

    .line 1504
    invoke-static {p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1506
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1507
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1508
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 1514
    if-eqz v3, :cond_0

    sub-int/2addr v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    .line 1515
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 1516
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1518
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1527
    :goto_1
    const-string v5, "<a href=\"%s\">%s</a>"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1528
    invoke-virtual {v2, v0, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 1525
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1531
    :cond_2
    const-string v3, "$0"

    invoke-virtual {v2, v0, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 1534
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1536
    :cond_4
    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v7

    .line 1548
    :goto_2
    if-eqz v0, :cond_5

    .line 1549
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    if-eqz v0, :cond_7

    .line 1550
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 1551
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 1555
    iput-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    .line 1560
    :cond_5
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 1563
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-direct {v0, p0, v9}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 1564
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    new-array v1, v8, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1566
    iput-boolean v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 1567
    return-void

    .line 1540
    :cond_6
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 1541
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    move-object v1, p2

    goto :goto_2

    .line 1557
    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    goto :goto_3
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 420
    const-string v0, "MessageViewFragmentBase.currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 421
    const-string v0, "MessageViewFragmentBase.pictureLoaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    .line 422
    return-void
.end method

.method private setAttachmentCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 557
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    .line 558
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    if-lez v0, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->clearTabFlags(I)V

    goto :goto_0
.end method

.method private setCurrentTab(I)V
    .locals 6
    .parameter "tab"

    .prologue
    const/16 v5, 0x67

    const/16 v4, 0x66

    const/16 v3, 0x65

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 612
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 615
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 616
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 617
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 618
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 619
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 620
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 622
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 623
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 624
    return-void
.end method

.method private setMessageHtml(Ljava/lang/String;)V
    .locals 6
    .parameter "html"

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    const-string p1, ""

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_1
    return-void
.end method

.method private showContent(ZZ)V
    .locals 2
    .parameter "showContent"
    .parameter "showProgressWhenHidden"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 500
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showDefaultQuickContactBadgeImage()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    return-void
.end method

.method private updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1255
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;

    .line 1256
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    .line 1257
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v1

    .line 1258
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v2

    .line 1259
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2600(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v3

    .line 1260
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v4

    .line 1262
    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowView:Z

    if-nez v5, :cond_0

    .line 1263
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1265
    :cond_0
    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-nez v5, :cond_1

    .line 1266
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1269
    :cond_1
    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowView:Z

    if-nez v5, :cond_2

    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-nez v5, :cond_2

    .line 1271
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 1272
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1273
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1274
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1275
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1276
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1326
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1327
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1328
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1329
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1330
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1331
    return-void

    .line 1277
    :cond_2
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1282
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgress(I)V

    .line 1283
    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-eqz v5, :cond_3

    .line 1284
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1286
    :cond_3
    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowView:Z

    if-eqz v5, :cond_5

    .line 1288
    iget-object v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1290
    :cond_4
    const v5, 0x7f080085

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 1296
    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1298
    :cond_5
    iget v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mDenyFlags:I

    if-nez v5, :cond_8

    .line 1299
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1303
    :goto_2
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1304
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1306
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 1291
    :cond_6
    iget-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowInstall:Z

    if-eqz v5, :cond_7

    .line 1292
    const v5, 0x7f080084

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 1294
    :cond_7
    const v5, 0x7f080083

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 1301
    :cond_8
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1311
    :cond_9
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1312
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1313
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1317
    iget-wide v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1318
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgressIndeterminate()V

    .line 1319
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1320
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1322
    :cond_a
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1323
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateAttachmentTab()V
    .locals 7

    .prologue
    .line 1240
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1241
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1242
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1243
    .local v3, oldInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 1245
    .local v2, newInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1246
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    .end local v2           #newInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #oldInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 2
    .parameter "attachmentInfo"

    .prologue
    .line 1758
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->execute([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1759
    return-void
.end method

.method private updateTabs(I)V
    .locals 11
    .parameter "tabFlags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 580
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 581
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_2

    move v1, v10

    .line 583
    .local v1, messageTabVisible:Z
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 584
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_3

    move v4, v10

    :goto_1
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 585
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_4

    move v4, v10

    :goto_2
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 587
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_5

    move v0, v10

    .line 588
    .local v0, hasPictures:Z
    :goto_3
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_6

    move v2, v10

    .line 589
    .local v2, pictureLoaded:Z
    :goto_4
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    move v4, v10

    :goto_5
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 591
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0005

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_0
    move v4, v10

    :goto_6
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 600
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 602
    iput v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 604
    :cond_1
    return-void

    .end local v0           #hasPictures:Z
    .end local v1           #messageTabVisible:Z
    .end local v2           #pictureLoaded:Z
    :cond_2
    move v1, v9

    .line 581
    goto/16 :goto_0

    .restart local v1       #messageTabVisible:Z
    :cond_3
    move v4, v9

    .line 584
    goto/16 :goto_1

    :cond_4
    move v4, v9

    .line 585
    goto :goto_2

    :cond_5
    move v0, v9

    .line 587
    goto :goto_3

    .restart local v0       #hasPictures:Z
    :cond_6
    move v2, v9

    .line 588
    goto :goto_4

    .restart local v2       #pictureLoaded:Z
    :cond_7
    move v4, v9

    .line 589
    goto :goto_5

    :cond_8
    move v4, v9

    .line 596
    goto :goto_6
.end method


# virtual methods
.method protected final addTabFlags(I)V
    .locals 1
    .parameter "tabFlags"

    .prologue
    .line 549
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 550
    return-void
.end method

.method public clearContent()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 475
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 476
    return-void
.end method

.method public clearIsMessageLoadedForTest()V
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 1792
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method protected final getController()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method protected final getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public isMessageLoadedForTest()Z
    .locals 1

    .prologue
    .line 1787
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return v0
.end method

.method protected final isMessageOpen()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isMessageSpecified()Z
.end method

.method protected final loadMessageIfResumed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 479
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    if-nez v0, :cond_0

    .line 480
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 488
    :goto_0
    return-void

    .line 483
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 484
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 485
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 486
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 487
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 342
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 343
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 914
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 899
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V

    goto :goto_0

    .line 902
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 905
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onInfoAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 908
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 911
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_0

    .line 917
    :sswitch_6
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0

    .line 920
    :sswitch_7
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0

    .line 923
    :sswitch_8
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_0

    .line 926
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onShowPicturesInHtml()V

    goto :goto_0

    .line 929
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onShowDetails()V

    goto :goto_0

    .line 894
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f000f -> :sswitch_0
        0x7f0f0091 -> :sswitch_2
        0x7f0f0092 -> :sswitch_4
        0x7f0f0094 -> :sswitch_3
        0x7f0f0095 -> :sswitch_5
        0x7f0f009c -> :sswitch_1
        0x7f0f009d -> :sswitch_1
        0x7f0f009e -> :sswitch_1
        0x7f0f009f -> :sswitch_1
        0x7f0f00a4 -> :sswitch_6
        0x7f0f00a5 -> :sswitch_7
        0x7f0f00a6 -> :sswitch_8
        0x7f0f00a7 -> :sswitch_9
        0x7f0f00b0 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 273
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 276
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 277
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 279
    if-eqz p1, :cond_0

    .line 280
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 290
    const v3, 0x7f04002c

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0f0003

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 293
    const v3, 0x7f0f009e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    .line 294
    const v3, 0x7f0f009f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    .line 295
    const v3, 0x7f0f00a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    .line 296
    const v3, 0x7f0f00a1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 297
    const v3, 0x7f0f0066

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 298
    const v3, 0x7f0f0064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 299
    const v3, 0x7f0f00a3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 300
    const v3, 0x7f0f009c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 301
    const v3, 0x7f0f009d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    .line 302
    const v3, 0x7f0f00ab

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Landroid/view/View;

    .line 303
    const v3, 0x7f0f00aa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 304
    const v3, 0x7f0f00b0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowDetailsButton:Landroid/widget/Button;

    .line 306
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v3, 0x7f0f00a4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 312
    const v3, 0x7f0f00a6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 313
    const v3, 0x7f0f00a7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    .line 315
    const v3, 0x7f0f00a5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 317
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowDetailsButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v3, 0x7f0f00a9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    .line 324
    const v3, 0x7f0f00a8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    .line 326
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 327
    .local v2, webSettings:Landroid/webkit/WebSettings;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 329
    .local v0, supportMultiTouch:Z
    if-nez v0, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 330
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 331
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 332
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 333
    return-object v1

    :cond_0
    move v3, v6

    .line 329
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewGone()V

    .line 399
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 401
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 403
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 404
    return-void
.end method

.method protected onMessageShown(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "mailboxType"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewShown(I)V

    .line 1052
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    .line 382
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 383
    return-void
.end method

.method protected onPostLoadBody()V
    .locals 0

    .prologue
    .line 1058
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentTab()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 412
    const-string v0, "MessageViewFragmentBase.currentTab"

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v0, "MessageViewFragmentBase.pictureLoaded"

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    return-void

    .line 413
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 351
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 391
    return-void
.end method

.method protected abstract openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 4
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1405
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 1407
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->register(Landroid/net/Uri;)V

    .line 1409
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1416
    if-eqz p2, :cond_0

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 1418
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 1425
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 1422
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 1423
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected resetView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 505
    invoke-direct {p0, v3, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 506
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 507
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 508
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 510
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 511
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 514
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 515
    .local v0, settings:Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 516
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 518
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 519
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 520
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 521
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initContactStatusViews()V

    .line 523
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 425
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 426
    return-void

    :cond_0
    move-object v0, p1

    .line 425
    goto :goto_0
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 6
    .parameter

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1434
    if-eqz v0, :cond_4

    .line 1435
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 1436
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1437
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, " "

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDate(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1447
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1448
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    .line 1450
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    .line 1452
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1453
    const v5, 0x7f08007d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1454
    const-string v5, " "

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1455
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1457
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1458
    const-string v2, "  "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1459
    const v2, 0x7f08007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1460
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1461
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1463
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1464
    const-string v2, "  "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1465
    const v2, 0x7f08007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1466
    const-string v0, " "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1467
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1469
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    return-void

    .line 1440
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
