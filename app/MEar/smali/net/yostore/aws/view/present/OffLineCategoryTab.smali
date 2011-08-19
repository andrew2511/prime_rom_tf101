.class public Lnet/yostore/aws/view/present/OffLineCategoryTab;
.super Landroid/app/TabActivity;
.source "OffLineCategoryTab.java"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private bBind:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private playingStatus:I

.field private playlistIntent:Landroid/content/Intent;

.field private playlistTab:Landroid/widget/TabHost$TabSpec;

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 56
    iput v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->playingStatus:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 64
    iput-boolean v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->bBind:Z

    .line 54
    return-void
.end method

.method private createTab()V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    const-string v1, "playlistTab"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->playlistTab:Landroid/widget/TabHost$TabSpec;

    .line 160
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->playlistTab:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 162
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    const-string v2, "settingTab"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnet/yostore/aws/view/present/OffLineSettingActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 166
    return-void
.end method

.method private showTabContext()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->setContentView(I)V

    .line 77
    sput-boolean v3, Lcom/ecareme/mear/Mear;->onlinemode:Z

    .line 78
    move-object v0, p0

    .line 79
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    .line 80
    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    .line 81
    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setBackgroundColor(I)V

    .line 83
    const-string v1, "MearPrefs"

    invoke-virtual {p0, v1, v3}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->mPrefs:Landroid/content/SharedPreferences;

    .line 84
    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 85
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "MEAR_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->mFilter:Landroid/content/IntentFilter;

    .line 88
    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->mdialog:Landroid/app/ProgressDialog;

    .line 150
    invoke-direct {p0}, Lnet/yostore/aws/view/present/OffLineCategoryTab;->createTab()V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineCategoryTab;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v1

    .line 376
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
    .line 178
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 189
    return-void
.end method
