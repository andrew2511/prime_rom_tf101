.class Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;Lcom/google/android/gm/HtmlConversationFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1532
    invoke-direct {p0, p1}, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;-><init>(Lcom/google/android/gm/HtmlConversationFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1560
    iget-object v5, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    monitor-enter v5

    .line 1561
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x-thread://conversation/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1563
    .local v2, conversationUrl:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1570
    const-string v6, "HCA.webviewRender"

    invoke-static {v6}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1575
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1576
    .local v4, senders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {v6, v7, v4}, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;-><init>(Lcom/google/android/gm/HtmlConversationFragment;Ljava/util/Set;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/google/android/gm/HtmlConversationFragment$UpdatePresenceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1580
    new-instance v3, Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;

    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v7

    invoke-direct {v3, v6, v7, v8}, Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;-><init>(Lcom/google/android/gm/HtmlConversationFragment;J)V

    .line 1582
    .local v3, handler:Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v6}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$700(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    .line 1584
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$1000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gm/HtmlConversationBuilder$RenderedState;->mInitialUnreadMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1585
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$700(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, account:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v1

    .line 1587
    .local v1, conversation:Lcom/google/android/gm/ConversationInfo;
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    new-instance v7, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;

    invoke-direct {v7, p0, v0, v1}, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient$1;-><init>(Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;Ljava/lang/String;Lcom/google/android/gm/ConversationInfo;)V

    invoke-static {v6, v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$1802(Lcom/google/android/gm/HtmlConversationFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1597
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v6}, Lcom/google/android/gm/HtmlConversationFragment;->access$900(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/MenuHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gm/MenuHandler;->getBackgroundTaskHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$1800(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1600
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #conversation:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    iget-object v6, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-object v7, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v7}, Lcom/google/android/gm/HtmlConversationFragment;->access$1900(Lcom/google/android/gm/HtmlConversationFragment;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gm/HtmlConversationFragment;->highlightTerms(Ljava/util/List;)V

    .line 1602
    .end local v3           #handler:Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;
    .end local v4           #senders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 1603
    return-void

    .line 1561
    .end local v2           #conversationUrl:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    move-object v2, v6

    goto/16 :goto_0

    .line 1602
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1535
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x-thread://conversation/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v4}, Lcom/google/android/gm/HtmlConversationFragment;->access$800(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1540
    .local v0, conversationUrl:Ljava/lang/String;
    :goto_0
    const-string v2, "data:text/html;utf-8,"

    .line 1544
    .local v2, emptyPageUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1545
    .local v1, disableJsInterface:Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "data:text/html;utf-8,"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move v1, v3

    .line 1550
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    .line 1551
    const-string v3, "Gmail"

    const-string v4, "Removing javascript interface, for external content"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const-string v3, "gmail"

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1556
    :goto_2
    return-void

    .line 1535
    .end local v0           #conversationUrl:Ljava/lang/String;
    .end local v1           #disableJsInterface:Z
    .end local v2           #emptyPageUrl:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 1546
    .restart local v0       #conversationUrl:Ljava/lang/String;
    .restart local v1       #disableJsInterface:Z
    .restart local v2       #emptyPageUrl:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move v1, v3

    goto :goto_1

    .line 1554
    :cond_3
    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v3}, Lcom/google/android/gm/HtmlConversationFragment;->access$1700(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationFragment$GmailJsInterface;

    move-result-object v3

    const-string v4, "gmail"

    invoke-virtual {p1, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1627
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-static {v0}, Lcom/google/android/gm/HtmlConversationFragment;->access$2000(Lcom/google/android/gm/HtmlConversationFragment;)Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gm/HtmlConversationFragment$ConversationCallbacks;->onConversationKeyDown(ILandroid/view/KeyEvent;)V

    .line 1630
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1607
    const/4 v1, 0x0

    .line 1608
    .local v1, result:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1609
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v3}, Lcom/google/android/gm/HtmlConversationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1612
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/HtmlConversationFragment$CustomWebViewClient;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/HtmlConversationFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    const/4 v1, 0x1

    .line 1619
    :goto_0
    return v1

    .line 1614
    :catch_0
    move-exception v2

    goto :goto_0
.end method
