.class Lcom/android/browser/Tab$2;
.super Landroid/webkit/WebViewClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDontResend:Landroid/os/Message;

.field private mResend:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/browser/Tab$2;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/browser/Tab$2;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/browser/Tab$2;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p3}, Lcom/android/browser/WebViewController;->doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V

    .line 699
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 687
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 648
    const-string v0, "Tab"

    const-string v1, "onFormResubmission should not be called again while dialog is still up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 653
    :cond_1
    iput-object p2, p0, Lcom/android/browser/Tab$2;->mDontResend:Landroid/os/Message;

    .line 654
    iput-object p3, p0, Lcom/android/browser/Tab$2;->mResend:Landroid/os/Message;

    .line 655
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001b

    new-instance v2, Lcom/android/browser/Tab$2$3;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$3;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001a

    new-instance v2, Lcom/android/browser/Tab$2$2;

    invoke-direct {v2, p0}, Lcom/android/browser/Tab$2$2;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/Tab$2$1;

    invoke-direct {v1, p0}, Lcom/android/browser/Tab$2$1;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 601
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_SECURE:Lcom/android/browser/Tab$LockIcon;

    if-ne v0, v1, :cond_0

    .line 606
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_MIXED:Lcom/android/browser/Tab$LockIcon;

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    .line 612
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$400(Lcom/android/browser/Tab;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Lcom/android/browser/LogTag;->logPageFinishedLoading(Ljava/lang/String;J)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 556
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    if-eqz p2, :cond_3

    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 562
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mLockIcon:Lcom/android/browser/Tab$LockIcon;

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onPageFinished(Lcom/android/browser/Tab;)V

    .line 568
    return-void

    .line 558
    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 503
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1, v6}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;Z)Z

    .line 504
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/browser/Tab;->access$202(Lcom/android/browser/Tab;I)I

    .line 505
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, v3, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v4, p2, p3}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/android/browser/Tab;->access$302(Lcom/android/browser/Tab;Lcom/android/browser/Tab$PageState;)Lcom/android/browser/Tab$PageState;

    .line 507
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/browser/Tab;->access$402(Lcom/android/browser/Tab;J)J

    .line 508
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v1, :cond_0

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, i:Landroid/content/Intent;
    const-string v1, "flush"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    iput-object v5, v1, Lcom/android/browser/DownloadTouchIcon;->mTab:Lcom/android/browser/Tab;

    .line 524
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iput-object v5, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ErrorConsoleView;->clearErrorMessages()V

    .line 530
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$600(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 537
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/DeviceAccountLogin;->cancel()V

    .line 538
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1, v5}, Lcom/android/browser/Tab;->access$802(Lcom/android/browser/Tab;Lcom/android/browser/DeviceAccountLogin;)Lcom/android/browser/DeviceAccountLogin;

    .line 539
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewController;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2, p1, p3}, Lcom/android/browser/WebViewController;->onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 545
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->updateBookmarkedStatus()V

    .line 546
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 621
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    const/4 v0, -0x6

    if-eq p2, v0, :cond_0

    const/16 v0, -0xc

    if-eq p2, v0, :cond_0

    const/16 v0, -0xa

    if-eq p2, v0, :cond_0

    const/16 v0, -0xd

    if-eq p2, v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0, p2, p3}, Lcom/android/browser/Tab;->access$1000(Lcom/android/browser/Tab;ILjava/lang/String;)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    const-string v0, "Tab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/browser/WebViewController;->onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 828
    new-instance v0, Lcom/android/browser/DeviceAccountLogin;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/browser/DeviceAccountLogin;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/android/browser/Tab;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/browser/DeviceAccountLogin;->handleLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 9
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const v8, 0x7f100070

    const v7, 0x7f040026

    const/4 v6, 0x0

    .line 707
    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v4}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 708
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 709
    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    sget-object v5, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    invoke-static {v4, v5}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;Lcom/android/browser/Tab$LockIcon;)V

    .line 785
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->showSecurityWarnings()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 713
    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 715
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f040027

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 717
    .local v3, warningsView:Landroid/view/View;
    const v4, 0x7f10005b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 720
    .local v2, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 721
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 723
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090025

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 725
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 728
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 729
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 731
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090026

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 733
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 737
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 739
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 741
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 745
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 747
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 749
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090022

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090021

    new-instance v6, Lcom/android/browser/Tab$2$7;

    invoke-direct {v6, p0, p2}, Lcom/android/browser/Tab$2$7;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090023

    new-instance v6, Lcom/android/browser/Tab$2$6;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/Tab$2$6;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090024

    new-instance v6, Lcom/android/browser/Tab$2$5;

    invoke-direct {v6, p0}, Lcom/android/browser/Tab$2$5;-><init>(Lcom/android/browser/Tab$2;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/Tab$2$4;

    invoke-direct {v5, p0, p2}, Lcom/android/browser/Tab$2$4;-><init>(Lcom/android/browser/Tab$2;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 783
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v2           #placeholder:Landroid/widget/LinearLayout;
    .end local v3           #warningsView:Landroid/view/View;
    :cond_5
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto/16 :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/browser/WebViewController;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/android/browser/homepages/HomeProvider;->shouldInterceptRequest(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 806
    .local v0, res:Landroid/webkit/WebResourceResponse;
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x0

    .line 814
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/browser/WebViewController;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, logIntent:Landroid/content/Intent;
    const-string v1, "extra_event"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 585
    .end local v0           #logIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/browser/WebViewController;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 589
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
