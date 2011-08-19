.class public Lcom/amazon/kcp/settings/SettingsActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/settings/SettingsActivity$5;,
        Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;,
        Lcom/amazon/kcp/settings/SettingsActivity$SettingsViewType;,
        Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;
    }
.end annotation


# static fields
.field private static final LOGOUT_DIALOG_ID:I = 0x1

.field private static final SPINNER_DIALOG_ID:I


# instance fields
.field private authManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

.field private final listAdapter:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

.field private final logoutFailure:Lcom/amazon/foundation/ICallback;

.field private final logoutSuccess:Lcom/amazon/foundation/ICallback;

.field private settingsItemsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;-><init>(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->listAdapter:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    .line 85
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/settings/SettingsActivity$1;-><init>(Lcom/amazon/kcp/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    .line 98
    new-instance v0, Lcom/amazon/kcp/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/settings/SettingsActivity$2;-><init>(Lcom/amazon/kcp/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->logoutFailure:Lcom/amazon/foundation/ICallback;

    .line 253
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->listAdapter:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/AuthenticationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/settings/SettingsActivity;->prepareSettingsItemCheckBox(Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/settings/SettingsActivity;->onSettingsItemCheckBoxChanged(Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/settings/SettingsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/settings/SettingsActivity;Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/settings/SettingsActivity;->onSettingsItemClick(Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/pages/internal/DeregisterPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    return-object v0
.end method

.method private buildLogoutDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const v5, 0x7f0b0076

    const/4 v4, 0x0

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    const v1, 0x7f0b0077

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kcp/settings/SettingsActivity;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AuthenticationManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    new-instance v1, Lcom/amazon/kcp/settings/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/settings/SettingsActivity$4;-><init>(Lcom/amazon/kcp/settings/SettingsActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    const v1, 0x7f0b000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private onSettingsItemCheckBoxChanged(Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$800()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 242
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setVolumeKeysArePageControls(Z)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized checkbox change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private onSettingsItemClick(Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$500()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/settings/SettingsActivity;->showDialog(I)V

    .line 222
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/welcome/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$800()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 215
    const v0, 0x7f0c003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 216
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized item click: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private populateSettingsList()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canChangeRegistrationSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$400()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$500()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$600()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$700()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$800()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method private prepareSettingsItemCheckBox(Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;Landroid/widget/CheckBox;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-static {}, Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;->access$800()Lcom/amazon/kcp/settings/SettingsActivity$SettingsItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized checkbox prepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->authManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 114
    new-instance v0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-virtual {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    iput-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getSuccessEventProvider()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getFailureEventProvider()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity;->logoutFailure:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 118
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/settings/SettingsActivity;->setContentView(I)V

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->populateSettingsList()V

    .line 123
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 124
    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity;->listAdapter:Lcom/amazon/kcp/settings/SettingsActivity$SettingsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    new-instance v1, Lcom/amazon/kcp/settings/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/settings/SettingsActivity$3;-><init>(Lcom/amazon/kcp/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->buildLogoutDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kcp/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getSuccessEventProvider()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity;->deregisterPage:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->getFailureEventProvider()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/settings/SettingsActivity;->logoutFailure:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 141
    return-void
.end method
