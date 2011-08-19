.class Lcom/android/browser/Tab$3;
.super Landroid/webkit/WebChromeClient;
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
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/browser/Tab$3;ZLandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 849
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .locals 7
    .parameter "dialog"
    .parameter "msg"

    .prologue
    .line 852
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 854
    .local v1, transport:Landroid/webkit/WebView$WebViewTransport;
    if-eqz p1, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->createSubWindow()Z

    .line 856
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v2, v3}, Lcom/android/browser/WebViewController;->attachSubWindow(Lcom/android/browser/Tab;)V

    .line 857
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 867
    :goto_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 868
    return-void

    .line 859
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    sget-object v4, Lcom/android/browser/IntentHandler;->EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/browser/WebViewController;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 862
    .local v0, newTab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    if-eq v0, v2, :cond_1

    .line 863
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 865
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 1137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1154
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/browser/WebViewController;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 1155
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "window"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(I)Z

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->closeTab(Lcom/android/browser/Tab;)V

    .line 953
    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .parameter "consoleMessage"

    .prologue
    const/4 v4, 0x1

    .line 1075
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 1078
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0, p1}, Lcom/android/browser/ErrorConsoleView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 1079
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v2}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getShowState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1082
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 1087
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 1111
    :goto_0
    return v2

    .line 1089
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Console: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, message:Ljava/lang/String;
    sget-object v2, Lcom/android/browser/Tab$8;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v2, v4

    .line 1111
    goto :goto_0

    .line 1095
    :pswitch_0
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1098
    :pswitch_1
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1101
    :pswitch_2
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1104
    :pswitch_3
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1107
    :pswitch_4
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 10
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f09001b

    const/4 v7, 0x1

    const v6, 0x1080027

    const/4 v5, 0x0

    .line 874
    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 932
    :goto_0
    return v3

    .line 878
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$1400(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 879
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090110

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090111

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v5

    .line 885
    goto :goto_0

    .line 886
    :cond_1
    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v3}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_2

    .line 887
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09010e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09010f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v5

    .line 893
    goto :goto_0

    .line 897
    :cond_2
    if-eqz p3, :cond_3

    .line 898
    invoke-direct {p0, p2, p4}, Lcom/android/browser/Tab$3;->createWindow(ZLandroid/os/Message;)V

    move v3, v7

    .line 899
    goto :goto_0

    .line 903
    :cond_3
    new-instance v0, Lcom/android/browser/Tab$3$1;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/browser/Tab$3$1;-><init>(Lcom/android/browser/Tab$3;ZLandroid/os/Message;)V

    .line 912
    .local v0, allowListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/browser/Tab$3$2;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/Tab$3$2;-><init>(Lcom/android/browser/Tab$3;Landroid/os/Message;)V

    .line 920
    .local v1, blockListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09010a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09010b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09010c

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09010d

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 931
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v3, v7

    .line 932
    goto/16 :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1018
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1022
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1700(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$1700(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1066
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->hideCustomView()V

    .line 1001
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0, p2}, Lcom/android/browser/Tab;->access$202(Lcom/android/browser/Tab;I)I

    .line 958
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 959
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1037
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/WebStorageSizeManager;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1040
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 970
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/browser/WebViewController;->onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 971
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "title"

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$300(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$PageState;

    move-result-object v0

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 964
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p2}, Lcom/android/browser/WebViewController;->onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v5, 0x0

    .line 976
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 979
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    invoke-virtual {v1, v5}, Lcom/android/browser/DownloadTouchIcon;->cancel(Z)Z

    .line 981
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-nez v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/DownloadTouchIcon;

    iget-object v3, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/android/browser/DownloadTouchIcon;-><init>(Lcom/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 987
    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 989
    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v1}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(I)Z

    .line 941
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/browser/WebViewController;->showCustomView(Lcom/android/browser/Tab;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 996
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$900(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    invoke-static {v0}, Lcom/android/browser/Tab;->access$700(Lcom/android/browser/Tab;)Lcom/android/browser/WebViewController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/browser/WebViewController;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 1147
    :goto_0
    return-void

    .line 1145
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    .line 1160
    move-object v3, p1

    .line 1161
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/browser/Tab$3;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mActivity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1164
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040023

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1166
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001b

    new-instance v6, Lcom/android/browser/Tab$3$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/browser/Tab$3$3;-><init>(Lcom/android/browser/Tab$3;Landroid/view/View;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001a

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1192
    return-void
.end method
