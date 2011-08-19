.class public Lcom/google/android/talk/GTalkPreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "GTalkPreferencesActivity.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;


# instance fields
.field private mAccountId:J

.field private mActiveAccount:Landroid/preference/PreferenceActivity$Header;

.field private mApp:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 110
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onAccountListChanged()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->finish()V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->invalidateHeaders()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v5, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v3

    .line 131
    .local v3, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    if-nez v3, :cond_0

    .line 157
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 138
    .local v0, account:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 141
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 142
    .local v2, accountHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iput-object v5, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 143
    const-string v5, "com.google.android.talk.fragments.SettingsFragment"

    iput-object v5, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 144
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v1, accountBundle:Landroid/os/Bundle;
    const-string v5, "accountId"

    iget-wide v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    iput-object v1, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 147
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-wide v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v7, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mAccountId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 151
    iput-object v2, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    goto :goto_1

    .line 156
    .end local v0           #account:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v1           #accountBundle:Landroid/os/Bundle;
    .end local v2           #accountHeader:Landroid/preference/PreferenceActivity$Header;
    :cond_2
    const v5, 0x7f060001

    invoke-virtual {p0, v5, p1}, Lcom/google/android/talk/GTalkPreferencesActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    .line 43
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 44
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mAccountId:J

    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 74
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    const/4 v1, 0x1

    return v1
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GTalkPreferencesActivity;->mActiveAccount:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 82
    :sswitch_0
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAddAccountActivity(Landroid/app/Activity;)V

    move v0, v1

    .line 83
    goto :goto_0

    .line 88
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->finish()V

    move v0, v1

    .line 89
    goto :goto_0

    .line 92
    :sswitch_2
    const-string v0, "talk_settings"

    invoke-static {p0, v0}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 93
    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f100011 -> :sswitch_0
        0x7f1000a9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->registerForAccountListChanged()V

    .line 62
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 68
    invoke-direct {p0}, Lcom/google/android/talk/GTalkPreferencesActivity;->unregisterForAccountListChanged()V

    .line 69
    return-void
.end method
