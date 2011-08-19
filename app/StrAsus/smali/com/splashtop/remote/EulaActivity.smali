.class public Lcom/splashtop/remote/EulaActivity;
.super Landroid/app/Activity;
.source "EulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bUserTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/EulaActivity;->bUserTracking:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/splashtop/remote/EulaActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/splashtop/remote/EulaActivity;->finish()V

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 38
    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FIRSTRUN"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/splashtop/remote/EulaActivity;->setResult(I)V

    .line 41
    invoke-virtual {p0}, Lcom/splashtop/remote/EulaActivity;->finish()V

    goto :goto_0

    .line 44
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/splashtop/remote/EulaActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/splashtop/remote/EulaActivity;->finish()V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x7f09000d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/splashtop/remote/EulaActivity;->setContentView(I)V

    .line 26
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/splashtop/remote/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/splashtop/remote/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/splashtop/remote/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 30
    .local v0, eulaLayout:Landroid/webkit/WebView;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 31
    const-string v1, "file:///android_asset/V10_EULA_101111.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "USRTRACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/EulaActivity;->bUserTracking:Z

    .line 55
    iget-boolean v1, p0, Lcom/splashtop/remote/EulaActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 63
    iget-boolean v0, p0, Lcom/splashtop/remote/EulaActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method
