.class public Lcom/asus/vibe2/Act_WebViewPlayer;
.super Landroid/app/Activity;
.source "Act_WebViewPlayer.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mParam:Lcom/asus/vibe/item/VibeParam;

.field private mUri:Landroid/net/Uri;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    .line 26
    iput-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mIntent:Landroid/content/Intent;

    .line 27
    iput-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 28
    iput-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    .line 32
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setContext(Landroid/content/Context;)V

    .line 45
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/asus/vibe2/Act_WebViewPlayer;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-static {p0}, Lcom/asus/vibe2/Utils_SrvPlayback;->doBindService(Landroid/app/Activity;)V

    .line 51
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/asus/vibe2/Act_WebViewPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    .line 53
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mIntent:Landroid/content/Intent;

    .line 54
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mIntent:Landroid/content/Intent;

    const-string v4, "com.asus.vibe.PARAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/asus/vibe/item/VibeItemParcelable;

    .line 55
    .local v2, vip:Lcom/asus/vibe/item/VibeItemParcelable;
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->finish()V

    .line 102
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {v2}, Lcom/asus/vibe/item/VibeItemParcelable;->getItem()Lcom/asus/vibe/item/VibeItem;

    move-result-object v3

    check-cast v3, Lcom/asus/vibe/item/VibeParam;

    iput-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 57
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_2

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->finish()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Detail;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/vibe/item/VibeUri;

    .line 62
    .local v1, uri:Lcom/asus/vibe/item/VibeUri;
    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "preview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v4, "BROWSER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v4, "application/x-shockwave-flash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    :cond_4
    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 67
    :cond_5
    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "free"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriType:Ljava/lang/String;

    const-string v4, "premium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_6
    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v4, "BROWSER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uriPlayerType:Ljava/lang/String;

    const-string v4, "application/x-shockwave-flash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    :cond_7
    iget-object v3, v1, Lcom/asus/vibe/item/VibeUri;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    .line 75
    .end local v1           #uri:Lcom/asus/vibe/item/VibeUri;
    :cond_8
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 76
    :cond_9
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->finish()V

    goto/16 :goto_0

    .line 80
    :cond_a
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/asus/vibe2/Utils_Vibe;->updateTitle(Ljava/lang/String;Landroid/app/Activity;)V

    .line 82
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 83
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 85
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 86
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 87
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "Mozilla/5.0 (Linux; U; Linux Ventana; en-US) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/8.0 Safari/533.1"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/asus/vibe2/Act_WebViewPlayer$1;

    invoke-direct {v4, p0}, Lcom/asus/vibe2/Act_WebViewPlayer$1;-><init>(Lcom/asus/vibe2/Act_WebViewPlayer;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    if-eqz p1, :cond_b

    .line 96
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto/16 :goto_0

    .line 98
    :cond_b
    iget-object v3, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lcom/asus/vibe2/Utils_SrvPlayback;->stop()V

    .line 140
    invoke-static {p0}, Lcom/asus/vibe2/Utils_SrvPlayback;->doUnbindService(Landroid/app/Activity;)V

    .line 141
    iget-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 142
    iget-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 143
    iget-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 145
    iput-object v2, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    .line 147
    iput-object v2, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mIntent:Landroid/content/Intent;

    .line 148
    iput-object v2, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 149
    iput-object v2, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mUri:Landroid/net/Uri;

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_WebViewPlayer;->finish()V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    invoke-static {p0}, Lcom/asus/vibe2/Utils_FlashCheck;->isFlashSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "market://details?id=com.adobe.flashplayer"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    const/4 v1, 0x1

    const v2, 0x7f04001b

    const v3, 0x7f04001c

    invoke-static {p0, v1, v0, v2, v3}, Lcom/asus/vibe2/VibeErr;->showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V

    .line 125
    iget-object v1, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 126
    iget-object v1, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 128
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/asus/vibe2/Act_WebViewPlayer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 134
    return-void
.end method
