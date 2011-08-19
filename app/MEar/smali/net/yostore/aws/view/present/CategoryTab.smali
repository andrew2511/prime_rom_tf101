.class public Lnet/yostore/aws/view/present/CategoryTab;
.super Landroid/app/TabActivity;
.source "CategoryTab.java"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private bBind:Z

.field private libIntent:Landroid/content/Intent;

.field private libTab:Landroid/widget/TabHost$TabSpec;

.field private mFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private playingStatus:I

.field private playlistIntent:Landroid/content/Intent;

.field private playlistTab:Landroid/widget/TabHost$TabSpec;

.field private searchIntent:Landroid/content/Intent;

.field private searchTab:Landroid/widget/TabHost$TabSpec;

.field private settingTab:Landroid/widget/TabHost$TabSpec;

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 56
    iput v1, p0, Lnet/yostore/aws/view/present/CategoryTab;->playingStatus:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 64
    iput-boolean v1, p0, Lnet/yostore/aws/view/present/CategoryTab;->bBind:Z

    .line 54
    return-void
.end method

.method private createTab()V
    .locals 4

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->libIntent:Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    const-string v1, "libTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/yostore/aws/view/navigate/LibActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->libTab:Landroid/widget/TabHost$TabSpec;

    .line 173
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    const-string v1, "playlistTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/yostore/aws/view/navigate/PlayListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->playlistTab:Landroid/widget/TabHost$TabSpec;

    .line 174
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    const-string v1, "searchTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/yostore/aws/view/search/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->searchTab:Landroid/widget/TabHost$TabSpec;

    .line 175
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    const-string v1, "settingTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/yostore/aws/view/present/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->settingTab:Landroid/widget/TabHost$TabSpec;

    .line 176
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lnet/yostore/aws/view/present/CategoryTab;->libTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 177
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lnet/yostore/aws/view/present/CategoryTab;->playlistTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 178
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lnet/yostore/aws/view/present/CategoryTab;->searchTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 179
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lnet/yostore/aws/view/present/CategoryTab;->settingTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 184
    return-void
.end method

.method private showTabContext()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lnet/yostore/aws/view/present/CategoryTab;->setContentView(I)V

    .line 78
    sput-boolean v7, Lcom/ecareme/mear/Mear;->onlinemode:Z

    .line 79
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v5, :cond_0

    .line 82
    :try_start_0
    sget-object v5, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v5}, Lnet/yostore/aws/service/PlayerServiceInterface;->setNeedUpdateToken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :cond_0
    :goto_0
    move-object v0, p0

    .line 96
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    .line 97
    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    const v6, 0x7f050003

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    .line 98
    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const v6, 0x7f050006

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    .line 100
    const-string v5, "MearPrefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lnet/yostore/aws/view/present/CategoryTab;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 102
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "MEAR_SERVICE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mFilter:Landroid/content/IntentFilter;

    .line 105
    const/high16 v5, 0x7f06

    invoke-virtual {p0, v5}, Lnet/yostore/aws/view/present/CategoryTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lnet/yostore/aws/view/present/CategoryTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mdialog:Landroid/app/ProgressDialog;

    .line 132
    :try_start_1
    new-instance v4, Lnet/yostore/aws/service/InitPlayingList;

    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v4, v5, v0}, Lnet/yostore/aws/service/InitPlayingList;-><init>(Lnet/yostore/aws/api/ApiConfig;Landroid/content/Context;)V

    .line 133
    .local v4, initPlist:Lnet/yostore/aws/service/InitPlayingList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_1

    invoke-virtual {v4}, Lnet/yostore/aws/service/InitPlayingList;->update()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    :cond_1
    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    sget-object v5, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    if-nez v5, :cond_2

    .line 141
    new-instance v5, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    iget-object v6, p0, Lnet/yostore/aws/view/present/CategoryTab;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v5, v6}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v5, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    .line 144
    :cond_2
    invoke-direct {p0}, Lnet/yostore/aws/view/present/CategoryTab;->createTab()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 168
    .end local v3           #i:I
    .end local v4           #initPlist:Lnet/yostore/aws/service/InitPlayingList;
    :goto_2
    return-void

    .line 84
    .end local v0           #ctx:Landroid/content/Context;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 87
    .local v2, e1:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v2           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 92
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #ctx:Landroid/content/Context;
    .restart local v3       #i:I
    .restart local v4       #initPlist:Lnet/yostore/aws/service/InitPlayingList;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v3           #i:I
    .end local v4           #initPlist:Lnet/yostore/aws/service/InitPlayingList;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 147
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    sget-object v5, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    if-eqz v5, :cond_4

    .line 149
    invoke-direct {p0}, Lnet/yostore/aws/view/present/CategoryTab;->createTab()V

    goto :goto_2

    .line 151
    :cond_4
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/CategoryTab;->finish()V

    goto :goto_2

    .line 153
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 156
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lnet/yostore/aws/view/present/CategoryTab;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    const v6, 0x7f06000a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 159
    const v6, 0x7f06000e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 160
    const v6, 0x7f060005

    new-instance v7, Lnet/yostore/aws/view/present/CategoryTab$1;

    invoke-direct {v7, p0}, Lnet/yostore/aws/view/present/CategoryTab$1;-><init>(Lnet/yostore/aws/view/present/CategoryTab;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 217
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 391
    iget-object v0, p0, Lnet/yostore/aws/view/present/CategoryTab;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v1

    .line 394
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 197
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 207
    return-void
.end method
