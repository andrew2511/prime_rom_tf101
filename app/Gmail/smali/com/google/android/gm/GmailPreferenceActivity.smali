.class public Lcom/google/android/gm/GmailPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "GmailPreferenceActivity.java"

# interfaces
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartAccountQuery:Z

.field private mSynced:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mSynced:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mRestartAccountQuery:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/GmailPreferenceActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/GmailPreferenceActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    return-object p1
.end method

.method private addAccountHeaders(Ljava/util/List;)V
    .locals 7
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
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v6, 0x1

    .line 103
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/google/android/gm/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    .line 106
    iget-boolean v4, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mSynced:Z

    if-nez v4, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/google/android/gm/GmailPreferenceActivity;->asyncInitAccounts()V

    .line 108
    iput-boolean v6, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mSynced:Z

    .line 124
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, account:Ljava/lang/String;
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 115
    .local v2, accountHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 116
    const-string v4, "com.google.android.gm.preference.AccountPreferenceFragment"

    iput-object v4, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v1, accountBundle:Landroid/os/Bundle;
    const-string v4, "account"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object v1, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 121
    invoke-interface {p1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private asyncInitAccounts()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/google/android/gm/GmailPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/GmailPreferenceActivity$1;-><init>(Lcom/google/android/gm/GmailPreferenceActivity;)V

    .line 151
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 152
    return-void
.end method


# virtual methods
.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "gm_settings"

    return-object v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
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
    .line 70
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 71
    .local v1, useGoogleMail:Z
    if-eqz v1, :cond_0

    const v2, 0x7f070003

    move v0, v2

    .line 73
    .local v0, headers:I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gm/GmailPreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/gm/GmailPreferenceActivity;->addAccountHeaders(Ljava/util/List;)V

    .line 76
    return-void

    .line 71
    .end local v0           #headers:I
    :cond_0
    const v2, 0x7f070007

    move v0, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x4

    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gm/GmailPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 43
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/gm/GmailPreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 81
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :sswitch_0
    invoke-static {p0}, Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;)V

    move v0, v1

    .line 90
    goto :goto_0

    .line 95
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/GmailPreferenceActivity;->finish()V

    move v0, v1

    .line 96
    goto :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0e00c5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mRestartAccountQuery:Z

    .line 51
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 56
    iget-boolean v0, p0, Lcom/google/android/gm/GmailPreferenceActivity;->mRestartAccountQuery:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/google/android/gm/GmailPreferenceActivity;->asyncInitAccounts()V

    .line 60
    :cond_0
    return-void
.end method
