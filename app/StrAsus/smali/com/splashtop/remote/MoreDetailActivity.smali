.class public Lcom/splashtop/remote/MoreDetailActivity;
.super Landroid/app/Activity;
.source "MoreDetailActivity.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private bUserTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const-string v0, "IRISView"

    iput-object v0, p0, Lcom/splashtop/remote/MoreDetailActivity;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/splashtop/remote/MoreDetailActivity;->bUserTracking:Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x64

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/splashtop/remote/MoreDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 29
    const-string v9, "position"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 30
    .local v5, layoutFlag:I
    packed-switch v5, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 32
    :pswitch_0
    const v9, 0x7f030006

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->setContentView(I)V

    .line 33
    const v9, 0x7f09000f

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 34
    .local v4, helpLayout:Landroid/webkit/WebView;
    invoke-virtual {v4, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 35
    const-string v9, "file:///android_asset/help.html"

    invoke-virtual {v4, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v4           #helpLayout:Landroid/webkit/WebView;
    :pswitch_1
    const v9, 0x7f030004

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->setContentView(I)V

    .line 39
    const v9, 0x7f09000b

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 40
    .local v2, eulaLayout:Landroid/webkit/WebView;
    invoke-virtual {v2, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 41
    const-string v9, "file:///android_asset/V10_EULA_101111.html"

    invoke-virtual {v2, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v2           #eulaLayout:Landroid/webkit/WebView;
    :pswitch_2
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->setContentView(I)V

    .line 45
    const v9, 0x7f090003

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 46
    .local v0, acknowledgementLayout:Landroid/webkit/WebView;
    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 47
    const-string v9, "file:///android_asset/Acknowledgements.htm"

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0           #acknowledgementLayout:Landroid/webkit/WebView;
    :pswitch_3
    const/high16 v9, 0x7f03

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->setContentView(I)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/splashtop/remote/MoreDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/splashtop/remote/MoreDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 53
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lcom/splashtop/remote/MoreDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070025

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, version:Ljava/lang/String;
    const v9, 0x7f090001

    invoke-virtual {p0, v9}, Lcom/splashtop/remote/MoreDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 55
    .local v8, versionText:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 56
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #version:Ljava/lang/String;
    .end local v8           #versionText:Landroid/widget/TextView;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 57
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "IRISView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MoreDetailActivity::onCreate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "USRTRACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/splashtop/remote/MoreDetailActivity;->bUserTracking:Z

    .line 73
    iget-boolean v1, p0, Lcom/splashtop/remote/MoreDetailActivity;->bUserTracking:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/splashtop/remote/utils/Common;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    iget-boolean v0, p0, Lcom/splashtop/remote/MoreDetailActivity;->bUserTracking:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 84
    :cond_0
    return-void
.end method
