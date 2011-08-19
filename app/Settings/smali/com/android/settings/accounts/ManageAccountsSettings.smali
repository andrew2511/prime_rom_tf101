.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final LDEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

.field private mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/ManageAccountsSettings;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTypeToAuthDescription:Ljava/util/Map;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ManageAccountsSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->setBackgroundDataInt(Z)V

    return-void
.end method

.method private setBackgroundDataInt(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 236
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    goto :goto_0
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 172
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080545

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 178
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 12
    .parameter "accounts"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    .line 344
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 321
    const/4 v3, 0x0

    .local v3, i:I
    array-length v7, p1

    .local v7, n:I
    :goto_1
    if-ge v3, v7, :cond_4

    .line 322
    aget-object v0, p1, v3

    .line 323
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 325
    .local v2, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 326
    .local v10, showAccount:Z
    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v11, :cond_1

    if-eqz v2, :cond_1

    .line 327
    const/4 v10, 0x0

    .line 328
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v6, :cond_1

    aget-object v9, v1, v4

    .line 329
    .local v9, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 330
    const/4 v10, 0x1

    .line 336
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #requestedAuthority:Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 337
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 338
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11, v0, v5, v2}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 340
    .local v8, preference:Lcom/android/settings/AccountPreference;
    iget-object v11, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 321
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #preference:Lcom/android/settings/AccountPreference;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 328
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v9       #requestedAuthority:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 343
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #requestedAuthority:Ljava/lang/String;
    .end local v10           #showAccount:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 123
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    const-string v2, "backgroundDataCheckBox"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v2, "syncAutomaticallyCheckBox"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v2, "manageAccountsCategory"

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 132
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "authorities"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 135
    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AccountPreference;

    .line 350
    .local v1, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-virtual {v1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v1           #pref:Lcom/android/settings/AccountPreference;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 182
    packed-switch p1, :pswitch_data_0

    move-object v1, v4

    .line 202
    :goto_0
    return-object v1

    .line 184
    :pswitch_0
    const-string v1, "backgroundDataCheckBox"

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 186
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08054b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08054c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 215
    const/4 v1, 0x1

    const v2, 0x7f080547

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020038

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 218
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 220
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 111
    const v1, 0x7f040025

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onAddAccountClicked()V

    move v0, v1

    .line 228
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 145
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 148
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    .line 149
    .local v2, oldBackgroundDataSetting:Z
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 150
    .local v0, backgroundDataSetting:Z
    if-eq v2, v0, :cond_0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->setBackgroundDataInt(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .end local v0           #backgroundDataSetting:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #oldBackgroundDataSetting:Z
    .end local p2
    :cond_0
    :goto_0
    move v3, v5

    .line 168
    :goto_1
    return v3

    .line 156
    .restart local v0       #backgroundDataSetting:Z
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #oldBackgroundDataSetting:Z
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/android/settings/accounts/ManageAccountsSettings;->showDialog(I)V

    goto :goto_0

    .line 160
    .end local v0           #backgroundDataSetting:Z
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #oldBackgroundDataSetting:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    .line 163
    :cond_3
    instance-of v3, p2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_4

    .line 164
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    goto :goto_0

    .line 166
    .restart local p2
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 141
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 32

    .prologue
    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    if-nez v28, :cond_0

    .line 315
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string v29, "connectivity"

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 245
    .local v10, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v9

    .line 246
    .local v9, backgroundDataSetting:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mBackgroundDataCheckBox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 247
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v17

    .line 248
    .local v17, masterSyncAutomatically:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v12

    .line 253
    .local v12, currentSync:Landroid/content/SyncInfo;
    const/4 v5, 0x0

    .line 256
    .local v5, anySyncFailed:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v22

    .line 257
    .local v22, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 258
    .local v27, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, k:I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .local v18, n:I
    :goto_1
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 259
    aget-object v20, v22, v15

    .line 260
    .local v20, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 261
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 264
    .end local v20           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    .local v11, count:I
    :goto_2
    if-ge v13, v11, :cond_e

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 266
    .local v19, pref:Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v28, v0

    if-nez v28, :cond_3

    .line 264
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 270
    :cond_3
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/settings/AccountPreference;

    move-object v3, v0

    .line 271
    .local v3, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 272
    .local v2, account:Landroid/accounts/Account;
    const/16 v23, 0x0

    .line 273
    .local v23, syncCount:I
    const/16 v25, 0x0

    .line 274
    .local v25, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v6

    .line 275
    .local v6, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    .line 276
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 277
    .local v7, authority:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v21

    .line 278
    .local v21, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    if-eqz v17, :cond_5

    if-eqz v9, :cond_5

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v28

    if-lez v28, :cond_5

    const/16 v28, 0x1

    move/from16 v24, v28

    .line 282
    .local v24, syncEnabled:Z
    :goto_5
    invoke-static {v2, v7}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 283
    .local v8, authorityIsPending:Z
    if-eqz v12, :cond_6

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    new-instance v28, Landroid/accounts/Account;

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v12

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x1

    move/from16 v4, v28

    .line 287
    .local v4, activelySyncing:Z
    :goto_6
    if-eqz v21, :cond_7

    if-eqz v24, :cond_7

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_7

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    const/16 v28, 0x1

    move/from16 v16, v28

    .line 292
    .local v16, lastSyncFailed:Z
    :goto_7
    if-eqz v16, :cond_4

    if-nez v4, :cond_4

    if-nez v8, :cond_4

    .line 293
    const/16 v25, 0x1

    .line 294
    const/4 v5, 0x1

    .line 296
    :cond_4
    if-eqz v24, :cond_8

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    const/16 v28, 0x1

    :goto_8
    add-int v23, v23, v28

    .line 297
    goto/16 :goto_4

    .line 278
    .end local v4           #activelySyncing:Z
    .end local v8           #authorityIsPending:Z
    .end local v16           #lastSyncFailed:Z
    .end local v24           #syncEnabled:Z
    :cond_5
    const/16 v28, 0x0

    move/from16 v24, v28

    goto :goto_5

    .line 283
    .restart local v8       #authorityIsPending:Z
    .restart local v24       #syncEnabled:Z
    :cond_6
    const/16 v28, 0x0

    move/from16 v4, v28

    goto :goto_6

    .line 287
    .restart local v4       #activelySyncing:Z
    :cond_7
    const/16 v28, 0x0

    move/from16 v16, v28

    goto :goto_7

    .line 296
    .restart local v16       #lastSyncFailed:Z
    :cond_8
    const/16 v28, 0x0

    goto :goto_8

    .line 299
    .end local v4           #activelySyncing:Z
    .end local v7           #authority:Ljava/lang/String;
    .end local v8           #authorityIsPending:Z
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #lastSyncFailed:Z
    .end local v21           #status:Landroid/content/SyncStatusInfo;
    .end local v24           #syncEnabled:Z
    :cond_9
    sget-object v28, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 300
    sget-object v28, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "no syncadapters found for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_a
    const/16 v26, 0x1

    .line 304
    .local v26, syncStatus:I
    if-eqz v25, :cond_c

    .line 305
    const/16 v26, 0x2

    .line 311
    :cond_b
    :goto_9
    move-object v0, v3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_3

    .line 306
    :cond_c
    if-nez v23, :cond_d

    .line 307
    const/16 v26, 0x1

    goto :goto_9

    .line 308
    :cond_d
    if-lez v23, :cond_b

    .line 309
    const/16 v26, 0x0

    goto :goto_9

    .line 314
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v6           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #pref:Landroid/preference/Preference;
    .end local v23           #syncCount:I
    .end local v25           #syncIsFailing:Z
    .end local v26           #syncStatus:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v5, :cond_f

    const/16 v29, 0x0

    :goto_a
    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_f
    const/16 v29, 0x8

    goto :goto_a
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/settings/accounts/ManageAccountsSettings;->TAG:Ljava/lang/String;

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 210
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    return-void
.end method
