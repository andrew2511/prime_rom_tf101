.class public Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DMSSettingsPrefsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;,
        Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DMSSettingsFT"

.field private static mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;


# instance fields
.field private bNeedReboot:Z

.field private mDMS:Landroid/preference/CheckBoxPreference;

.field protected mDefaultEnable:Z

.field protected mDefaultFriendlyName:Ljava/lang/String;

.field protected mDefaultMusic:Z

.field protected mDefaultPicture:Z

.field protected mDefaultShare:Ljava/lang/String;

.field protected mDefaultVideo:Z

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mPhoto:Landroid/preference/CheckBoxPreference;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mServerCBThread:Lcom/asus/DMS/ServerCBThread;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceIntent:Landroid/content/Intent;

.field private mShareFolder:Landroid/preference/ListPreference;

.field private mTextFriendlyname:Landroid/preference/EditTextPreference;

.field private mVideo:Landroid/preference/CheckBoxPreference;

.field private mWaiting:Landroid/app/ProgressDialog;

.field private mfolderNamelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mfolderlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceIntent:Landroid/content/Intent;

    .line 101
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServerCBThread:Lcom/asus/DMS/ServerCBThread;

    .line 102
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 103
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 108
    iput-boolean v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultVideo:Z

    .line 109
    iput-boolean v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultMusic:Z

    .line 110
    iput-boolean v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultPicture:Z

    .line 111
    iput-boolean v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultEnable:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultFriendlyName:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultShare:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    .line 115
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    .line 118
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->bNeedReboot:Z

    .line 423
    return-void
.end method

.method private Start()V
    .locals 3

    .prologue
    .line 278
    sget-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_0
    sget-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    invoke-interface {v1}, Lcom/asus/DMS/ServiceCommunication;->IsDMSRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    sget-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    invoke-interface {v1}, Lcom/asus/DMS/ServiceCommunication;->EnableDMS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 287
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iget-boolean v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->bNeedReboot:Z

    if-ne v1, v2, :cond_0

    .line 284
    sget-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    invoke-interface {v1}, Lcom/asus/DMS/ServiceCommunication;->UpdateConfiguration()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private Stop()V
    .locals 2

    .prologue
    .line 296
    sget-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    sget-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    invoke-interface {v1}, Lcom/asus/DMS/ServiceCommunication;->DisableDMS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 300
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private UpdateStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 378
    sget-object v2, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    if-nez v2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 381
    :cond_0
    :try_start_0
    sget-object v2, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    invoke-interface {v2}, Lcom/asus/DMS/ServiceCommunication;->IsUpdating()Z

    move-result v0

    .line 383
    .local v0, bRunning:Z
    if-ne v3, v0, :cond_1

    .line 384
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->fnShowWaitingDialog(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v0           #bRunning:Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 389
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bRunning:Z
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->fnShowWaitingDialog(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->UpdateStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400()Lcom/asus/DMS/ServiceCommunication;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    return-object v0
.end method

.method static synthetic access$402(Lcom/asus/DMS/ServiceCommunication;)Lcom/asus/DMS/ServiceCommunication;
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    sput-object p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    return-object p0
.end method

.method static synthetic access$500(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDMS:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->updateUILayout()V

    return-void
.end method

.method private checkTheDefaultFolder()V
    .locals 6

    .prologue
    .line 223
    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_sharefolder"

    invoke-static {}, Lcom/asus/DMS/Settings;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, strPrevSharedFolder:Ljava/lang/String;
    const/4 v1, -0x1

    .line 226
    .local v1, iMatch:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 228
    move v1, v0

    .line 233
    :cond_0
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2

    .line 234
    const-string v3, "DMSSettingsFT"

    const-string v4, "no match ! use internal storage as default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 240
    :goto_1
    return-void

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method private fnCreateWaitingDialog()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    .line 397
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 399
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;

    invoke-direct {v1, p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;-><init>(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 409
    :cond_0
    return-void
.end method

.method private fnShowWaitingDialog(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0
.end method

.method private prepareShareFolderList()V
    .locals 8

    .prologue
    .line 178
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 179
    const-string v5, "DMSSettingsFT"

    const-string v6, "Error!, mfolderlist is null !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 185
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 188
    :cond_2
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-static {}, Lcom/asus/DMS/Settings;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    const v6, 0x7f070039

    invoke-virtual {p0, v6}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {}, Landroid/os/Environment;->getEpadExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, strExternalStorageRoot:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, tempStrList:[Ljava/lang/String;
    array-length v2, v4

    .line 201
    .local v2, iT:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 202
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v5, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setListPrefDataSource()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 210
    .local v0, entriesArray:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 212
    .local v1, entriesValueArray:[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 214
    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 216
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 220
    :goto_0
    return-void

    .line 218
    .restart local p0
    :cond_0
    const-string v2, "DMSSettingsFT"

    const-string v3, " handle of share folder list is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateUILayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enableServer"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 350
    .local v0, bEnable:Z
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 353
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPhoto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 355
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 356
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 361
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPhoto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 362
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 363
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 364
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 123
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->addPreferencesFromResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 129
    const-string v1, "enableServer"

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDMS:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v1, "checkMusic"

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v1, "checkPicture"

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPhoto:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v1, "checkVideo"

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mVideo:Landroid/preference/CheckBoxPreference;

    .line 133
    const-string v1, "editTextFriendlyname"

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    .line 136
    const-string v1, "pref_sharefolder"

    invoke-virtual {p0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    .line 137
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    .line 140
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->prepareShareFolderList()V

    .line 141
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->setListPrefDataSource()V

    .line 142
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->checkTheDefaultFolder()V

    .line 144
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->fnCreateWaitingDialog()V

    .line 146
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enableServer"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultEnable:Z

    .line 147
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checkVideo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultVideo:Z

    .line 148
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checkMusic"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultMusic:Z

    .line 149
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checkPicture"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultPicture:Z

    .line 150
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_sharefolder"

    invoke-static {}, Lcom/asus/DMS/Settings;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultShare:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "editTextFriendlyname"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultFriendlyName:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->updateUILayout()V

    .line 162
    const/4 v1, 0x0

    sput-object v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceCommunication:Lcom/asus/DMS/ServiceCommunication;

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/asus/DMS/DLNAServerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceIntent:Landroid/content/Intent;

    .line 164
    new-instance v1, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;

    invoke-direct {v1, p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;-><init>(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 165
    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 168
    new-instance v0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;-><init>(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V

    .line 169
    .local v0, handler:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$MyHandler;
    new-instance v1, Lcom/asus/DMS/ServerCBThread;

    invoke-direct {v1, v0}, Lcom/asus/DMS/ServerCBThread;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServerCBThread:Lcom/asus/DMS/ServerCBThread;

    .line 170
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServerCBThread:Lcom/asus/DMS/ServerCBThread;

    invoke-virtual {v1}, Lcom/asus/DMS/ServerCBThread;->Start()V

    .line 171
    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 308
    const-string v1, "DMSSettingsFT"

    const-string v2, "setting activity, onDestroy(),  begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 312
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServerCBThread:Lcom/asus/DMS/ServerCBThread;

    invoke-virtual {v1}, Lcom/asus/DMS/ServerCBThread;->Stop()V

    .line 313
    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 316
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mShareFolder:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 319
    iput-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderlist:Ljava/util/ArrayList;

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 323
    iput-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mfolderNamelist:Ljava/util/ArrayList;

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enableServer"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 327
    .local v0, Enable:Z
    if-eqz v0, :cond_4

    .line 328
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->Start()V

    .line 333
    :goto_0
    invoke-virtual {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 335
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 336
    invoke-direct {p0, v4}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->fnShowWaitingDialog(Z)V

    .line 337
    iget-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 338
    iput-object v3, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mWaiting:Landroid/app/ProgressDialog;

    .line 341
    :cond_3
    const-string v1, "DMSSettingsFT"

    const-string v2, "setting activity, onDestroy(),  end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 330
    :cond_4
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->Stop()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, txtFriendlyname:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "editTextFriendlyname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 266
    iput-object v1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mDefaultFriendlyName:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->mTextFriendlyname:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 248
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, strClickedkey:Ljava/lang/String;
    const-string v1, "enableServer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->updateUILayout()V

    .line 255
    :goto_0
    return v2

    .line 253
    :cond_0
    iput-boolean v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->bNeedReboot:Z

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 455
    return-void
.end method
