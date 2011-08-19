.class public Lcom/asus/vibe2/Act_BuyBrowser;
.super Landroid/app/Activity;
.source "Act_BuyBrowser.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mLast:Landroid/view/MenuItem;

.field private mNext:Landroid/view/MenuItem;

.field private mOrderInfoUrl:Ljava/lang/String;

.field private mParam:Lcom/asus/vibe/item/VibeParam;

.field private mRefresh:Landroid/view/MenuItem;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    .line 29
    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mLast:Landroid/view/MenuItem;

    .line 30
    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mRefresh:Landroid/view/MenuItem;

    .line 31
    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mNext:Landroid/view/MenuItem;

    .line 34
    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 35
    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mOrderInfoUrl:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/asus/vibe2/Act_BuyBrowser$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_BuyBrowser$1;-><init>(Lcom/asus/vibe2/Act_BuyBrowser;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mHandler:Landroid/os/Handler;

    .line 57
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

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mOrderInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/asus/vibe2/Act_BuyBrowser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mOrderInfoUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mLast:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mNext:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mRefresh:Landroid/view/MenuItem;

    return-object v0
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
    .line 62
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

    .line 63
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/vibe2/Vibe;->setContext(Landroid/content/Context;)V

    .line 70
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_BuyBrowser;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_BuyBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    .line 75
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 76
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mIntent:Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mIntent:Landroid/content/Intent;

    const-string v2, "com.asus.vibe.PARAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/item/VibeItemParcelable;

    .line 78
    .local v0, vip:Lcom/asus/vibe/item/VibeItemParcelable;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->finish()V

    .line 126
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/item/VibeItemParcelable;->getItem()Lcom/asus/vibe/item/VibeItem;

    move-result-object v1

    check-cast v1, Lcom/asus/vibe/item/VibeParam;

    iput-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 80
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mParam:Lcom/asus/vibe/item/VibeParam;

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->finish()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/asus/vibe2/Utils_Vibe;->updateTitle(Ljava/lang/String;Landroid/app/Activity;)V

    .line 87
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 88
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 90
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 91
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/asus/vibe2/Act_BuyBrowser$2;

    invoke-direct {v2, p0}, Lcom/asus/vibe2/Act_BuyBrowser$2;-><init>(Lcom/asus/vibe2/Act_BuyBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 164
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 165
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 166
    const v1, 0x7f080020

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mLast:Landroid/view/MenuItem;

    .line 167
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mLast:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    const v1, 0x7f080021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mRefresh:Landroid/view/MenuItem;

    .line 169
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mRefresh:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 170
    const v1, 0x7f080022

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mNext:Landroid/view/MenuItem;

    .line 171
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mNext:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 144
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 145
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 146
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 148
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 149
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    .line 150
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mLast:Landroid/view/MenuItem;

    .line 151
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mRefresh:Landroid/view/MenuItem;

    .line 152
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mNext:Landroid/view/MenuItem;

    .line 154
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mIntent:Landroid/content/Intent;

    .line 155
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 156
    iput-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mOrderInfoUrl:Ljava/lang/String;

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 178
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 180
    :sswitch_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->finish()V

    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 188
    :sswitch_2
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 193
    :sswitch_3
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f080020 -> :sswitch_1
        0x7f080021 -> :sswitch_3
        0x7f080022 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_BuyBrowser;->finish()V

    .line 138
    return-void
.end method
