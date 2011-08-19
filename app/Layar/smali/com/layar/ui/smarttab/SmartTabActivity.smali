.class public Lcom/layar/ui/smarttab/SmartTabActivity;
.super Lcom/layar/OurActivityGroup;
.source "SmartTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/layar/OurActivityGroup;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTabIndex:I

    .line 22
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    if-nez v0, :cond_0

    .line 102
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabActivity;->setContentView(I)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/layar/ui/smarttab/SmartTabHost;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabActivity;->ensureTabHost()V

    .line 125
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost;->getTabWidget()Lcom/layar/ui/smarttab/SmartTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/layar/OurActivityGroup;->onContentChanged()V

    .line 90
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/smarttab/SmartTabHost;

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    .line 92
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    .line 94
    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/ui/smarttab/SmartTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 98
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/layar/OurActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabActivity;->ensureTabHost()V

    .line 67
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v0}, Lcom/layar/ui/smarttab/SmartTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTab(I)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/layar/OurActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabActivity;->ensureTabHost()V

    .line 48
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v1, v0}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    iget-object v2, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    iget v2, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/layar/ui/smarttab/SmartTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/layar/OurActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mTabHost:Lcom/layar/ui/smarttab/SmartTabHost;

    invoke-virtual {v1}, Lcom/layar/ui/smarttab/SmartTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTabIndex:I

    .line 42
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/smarttab/SmartTabActivity;->mDefaultTabIndex:I

    .line 32
    return-void
.end method
