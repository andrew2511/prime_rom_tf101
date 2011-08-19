.class Lcom/android/browser/Controller$3;
.super Landroid/os/Handler;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 463
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 534
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 465
    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v4}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto :goto_0

    .line 469
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 471
    .local v11, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "src"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 472
    .local v9, src:Ljava/lang/String;
    const-string v0, ""

    if-ne v1, v0, :cond_1

    move-object v1, v9

    .line 473
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 477
    .local v6, focusNodeMap:Ljava/util/HashMap;
    const-string v0, "webview"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    .line 479
    .local v12, view:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v0, v12, :cond_0

    .line 482
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 484
    :sswitch_2
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    iget-object v2, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/browser/Controller;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :sswitch_3
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    iget-object v2, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lcom/android/browser/Controller;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :sswitch_4
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v8

    .line 491
    .local v8, parent:Lcom/android/browser/Tab;
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v8, v1, v4}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/Tab;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v7

    .line 492
    .local v7, newTab:Lcom/android/browser/Tab;
    if-eqz v7, :cond_0

    if-eq v7, v8, :cond_0

    .line 493
    invoke-virtual {v8, v7}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 497
    .end local v7           #newTab:Lcom/android/browser/Tab;
    .end local v8           #parent:Lcom/android/browser/Tab;
    :sswitch_5
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0, v1}, Lcom/android/browser/Controller;->access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 501
    :sswitch_6
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v12}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 510
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #focusNodeMap:Ljava/util/HashMap;
    .end local v9           #src:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #view:Landroid/webkit/WebView;
    :sswitch_7
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    iget-object v2, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lcom/android/browser/Controller;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    .restart local p0
    :sswitch_8
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->stopLoading()V

    goto/16 :goto_0

    .line 518
    :sswitch_9
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 523
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 528
    :sswitch_a
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/browser/Tab;

    .line 529
    .local v10, tab:Lcom/android/browser/Tab;
    if-eqz v10, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/browser/Controller$3;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0, v10}, Lcom/android/browser/Controller;->access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_0
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
    .end sparse-switch

    .line 482
    :sswitch_data_1
    .sparse-switch
        0x7f1000a1 -> :sswitch_2
        0x7f1000d6 -> :sswitch_4
        0x7f1000d7 -> :sswitch_6
        0x7f1000d8 -> :sswitch_5
        0x7f1000da -> :sswitch_6
        0x7f1000db -> :sswitch_3
    .end sparse-switch
.end method
