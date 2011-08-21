.class public Lcom/android/settings/vpn/VpnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnEditor$2;
    }
.end annotation


# instance fields
.field private mAddingProfile:Z

.field private mOriginalProfileData:[B

.field private mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

.field private mVpnManager:Landroid/net/vpn/VpnManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 206
    return-void
.end method

.method private getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;
    .locals 2
    .parameter "p"

    .prologue
    .line 192
    sget-object v0, Lcom/android/settings/vpn/VpnEditor$2;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-direct {v0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    .end local p1
    :goto_0
    return-object v0

    .line 194
    .restart local p1
    :pswitch_0
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecEditor;-><init>(Landroid/net/vpn/L2tpIpsecProfile;)V

    goto :goto_0

    .line 197
    .restart local p1
    :pswitch_1
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecPskEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecPskEditor;-><init>(Landroid/net/vpn/L2tpIpsecPskProfile;)V

    goto :goto_0

    .line 200
    .restart local p1
    :pswitch_2
    new-instance v0, Lcom/android/settings/vpn/L2tpEditor;

    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    goto :goto_0

    .line 203
    .restart local p1
    :pswitch_3
    new-instance v0, Lcom/android/settings/vpn/PptpEditor;

    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/PptpEditor;-><init>(Landroid/net/vpn/PptpProfile;)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private getResult(Landroid/net/vpn/VpnProfile;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "vpn_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    return-object v0
.end method

.method static getTitle(Landroid/content/Context;Landroid/net/vpn/VpnProfile;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "profile"
    .parameter "adding"

    .prologue
    .line 160
    if-eqz p2, :cond_0

    const v1, 0x7f0804d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 163
    .local v0, formatString:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnType;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0           #formatString:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0804d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private initViewFor(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnProfileEditor;->loadPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 157
    return-void
.end method

.method private profileChanged()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 251
    .local v3, newParcel:Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 253
    .local v2, newData:[B
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v4, v4

    array-length v5, v2

    if-ne v4, v5, :cond_2

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v1, v4

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 255
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-eq v4, v5, :cond_0

    move v4, v7

    .line 259
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return v4

    .line 254
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 257
    goto :goto_1

    .end local v0           #i:I
    .end local v1           #n:I
    :cond_2
    move v4, v7

    .line 259
    goto :goto_1
.end method

.method private validateAndGetResult()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, errorMsg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v2

    .line 182
    :goto_0
    return-object v1

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getResult(Landroid/net/vpn/VpnProfile;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 182
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    new-instance v3, Landroid/net/vpn/VpnManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/vpn/VpnEditor;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 73
    if-eqz p1, :cond_1

    .line 74
    const-string v3, "profile"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 82
    .local v0, p:Landroid/net/vpn/VpnProfile;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 83
    .local v1, parcel:Landroid/os/Parcel;
    invoke-virtual {v0, v1, v5}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    .line 85
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    sget-object v3, Landroid/net/vpn/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 88
    .local v2, profile:Landroid/net/vpn/VpnProfile;
    invoke-direct {p0, v2}, Lcom/android/settings/vpn/VpnEditor;->getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    .line 89
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    .line 91
    invoke-direct {p0, v2}, Lcom/android/settings/vpn/VpnEditor;->initViewFor(Landroid/net/vpn/VpnProfile;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnEditor;->registerForContextMenu(Landroid/view/View;)V

    .line 94
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnEditor;->setHasOptionsMenu(Z)V

    .line 95
    return-void

    .line 76
    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    .end local v1           #parcel:Landroid/os/Parcel;
    .end local v2           #profile:Landroid/net/vpn/VpnProfile;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "vpn_profile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 77
    .restart local v0       #p:Landroid/net/vpn/VpnProfile;
    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "vpn_profile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    check-cast v0, Landroid/net/vpn/VpnProfile;

    .restart local v0       #p:Landroid/net/vpn/VpnProfile;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->addPreferencesFromResource(I)V

    .line 65
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0804c8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804b9

    new-instance v2, Lcom/android/settings/vpn/VpnEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnEditor$1;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 230
    :goto_1
    return-object v0

    .line 214
    :cond_0
    const v1, 0x7f0804c9

    goto :goto_0

    .line 230
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 107
    const/4 v0, 0x1

    const v1, 0x7f0804bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 109
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0804be

    :goto_0
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    return-void

    .line 109
    :cond_0
    const v1, 0x7f0804bf

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 119
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndGetResult()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 123
    .local v0, activity:Landroid/preference/PreferenceActivity;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v2}, Landroid/net/vpn/VpnManager;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    const v2, 0x7f080578

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .end local v0           #activity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_1
    move v2, v4

    .line 131
    goto :goto_0

    .line 127
    .restart local v0       #activity:Landroid/preference/PreferenceActivity;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_1

    .line 134
    .end local v0           #activity:Landroid/preference/PreferenceActivity;
    .end local v1           #resultIntent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnEditor;->showDialog(I)V

    :goto_2
    move v2, v4

    .line 139
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finishFragment()V

    goto :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    const-string v0, "profile"

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
