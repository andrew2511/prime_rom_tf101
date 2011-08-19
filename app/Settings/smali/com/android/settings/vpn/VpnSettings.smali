.class public Lcom/android/settings/vpn/VpnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnSettings$16;,
        Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;,
        Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PROFILES_ROOT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sVpnProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveProfile:Landroid/net/vpn/VpnProfile;

.field private mAddVpn:Landroid/preference/PreferenceScreen;

.field private mConnectDialogShowing:Z

.field private mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

.field private mConnectingErrorCode:I

.field private mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mShowingDialog:Landroid/app/Dialog;

.field private mUnlockAction:Ljava/lang/Runnable;

.field private mVpnListContainer:Landroid/preference/PreferenceCategory;

.field private mVpnManager:Landroid/net/vpn/VpnManager;

.field private mVpnPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/vpn/VpnSettings;->$assertionsDisabled:Z

    .line 79
    const-class v0, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/vpn/VpnManager;->getProfilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 127
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 131
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;-><init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    .line 134
    iput v2, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    .line 138
    iput-boolean v2, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectDialogShowing:Z

    .line 1075
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->startVpnTypeSelection()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/vpn/VpnSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/vpn/VpnSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/vpn/VpnSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectDialogShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/vpn/VpnSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    return-object v0
.end method

.method private addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    .locals 3
    .parameter "p"
    .parameter "addToContainer"

    .prologue
    .line 653
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    .line 654
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 657
    :cond_0
    new-instance v1, Lcom/android/settings/vpn/VpnSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$13;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 664
    return-object v0
.end method

.method private addProfile(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 642
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 643
    invoke-static {p1}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 645
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 647
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    .line 648
    return-void
.end method

.method private changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    .locals 3
    .parameter "p"
    .parameter "state"

    .prologue
    .line 799
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v0

    .line 800
    .local v0, oldState:Landroid/net/vpn/VpnState;
    invoke-virtual {p1, p2}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    .line 801
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 836
    :goto_0
    return-void

    .line 806
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 807
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 808
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_0

    .line 812
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    if-nez v1, :cond_0

    .line 813
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 817
    :cond_0
    :pswitch_2
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 818
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_0

    .line 822
    :pswitch_3
    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 826
    :pswitch_4
    sget-boolean v1, Lcom/android/settings/vpn/VpnSettings;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-eq v1, p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 828
    :cond_1
    iget v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    if-nez v1, :cond_2

    .line 829
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    goto :goto_0

    .line 831
    :cond_2
    iget v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    .line 832
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    goto :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkDuplicateName(Landroid/net/vpn/VpnProfile;I)Z
    .locals 4
    .parameter "p"
    .parameter "index"

    .prologue
    .line 572
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    .line 573
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 574
    .local v1, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 576
    iget-object v2, v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    .line 578
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 935
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID inconsistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v0, 0x0

    .line 939
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSecrets(Landroid/net/vpn/VpnProfile;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 979
    .line 981
    instance-of v1, p1, Landroid/net/vpn/L2tpIpsecProfile;

    if-eqz v1, :cond_9

    .line 982
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v1, v0

    .line 984
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 987
    :cond_0
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpIpsecProfile;->setCaCertificate(Ljava/lang/String;)V

    move v2, v7

    .line 991
    :goto_0
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v3

    .line 992
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 994
    :cond_1
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpIpsecProfile;->setUserCertificate(Ljava/lang/String;)V

    move v2, v7

    .line 999
    :cond_2
    :goto_1
    instance-of v1, p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    if-eqz v1, :cond_4

    .line 1000
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v1, v0

    .line 1001
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v3

    .line 1002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1004
    :cond_3
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    move v2, v7

    .line 1009
    :cond_4
    instance-of v1, p1, Landroid/net/vpn/L2tpProfile;

    if-eqz v1, :cond_7

    .line 1010
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 1011
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1012
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v3

    .line 1013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_l"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1014
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1015
    :cond_5
    invoke-virtual {v1, v8}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    move v1, v7

    .line 1021
    :goto_2
    if-eqz v1, :cond_6

    .line 1022
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 1023
    const/16 v1, 0xca

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    move v1, v9

    .line 1026
    :goto_3
    return v1

    :cond_6
    move v1, v7

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v2, v9

    goto/16 :goto_0

    :cond_9
    move v2, v9

    goto/16 :goto_1
.end method

.method private checkVpnConnectionStatus()V
    .locals 3

    .prologue
    .line 927
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 928
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v2, v1}, Landroid/net/vpn/VpnManager;->getState(Landroid/net/vpn/VpnProfile;)Landroid/net/vpn/VpnState;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_0

    .line 930
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    return-void
.end method

.method private declared-synchronized connect(Landroid/net/vpn/VpnProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->needKeyStoreToConnect(Landroid/net/vpn/VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$14;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$14;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 766
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 776
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 769
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->checkSecrets(Landroid/net/vpn/VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 771
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->isConnectDialogNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 774
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/settings/vpn/VpnProfileActor;->connect(Landroid/app/Dialog;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 780
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 781
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 796
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 783
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 780
    .end local v0           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 792
    .restart local v0       #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :pswitch_2
    :try_start_2
    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 793
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 781
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804ad

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$7;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804ae

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$6;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804ad

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$5;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createConnectDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 302
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v2}, Lcom/android/settings/vpn/VpnProfileActor;->createConnectView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804a6

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v5}, Lcom/android/settings/vpn/VpnProfileActor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804ac

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createEditDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 340
    sparse-switch p1, :sswitch_data_0

    .line 354
    const/4 v1, 0x0

    .line 356
    :goto_0
    return-object v1

    .line 342
    :sswitch_0
    const v0, 0x7f0804c1

    .line 356
    .local v0, msgId:I
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 346
    .end local v0           #msgId:I
    :sswitch_1
    const v0, 0x7f0804c0

    .line 347
    .restart local v0       #msgId:I
    goto :goto_1

    .line 350
    .end local v0           #msgId:I
    :sswitch_2
    const v0, 0x7f0804c6

    .line 351
    .restart local v0       #msgId:I
    goto :goto_1

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x2a -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private createReconnectDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 333
    const v0, 0x7f0804be

    .line 335
    .local v0, msgId:I
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 317
    .end local v0           #msgId:I
    :sswitch_0
    const v0, 0x7f0804c3

    .line 318
    .restart local v0       #msgId:I
    goto :goto_0

    .line 321
    .end local v0           #msgId:I
    :sswitch_1
    const v0, 0x7f0804c4

    .line 322
    .restart local v0       #msgId:I
    goto :goto_0

    .line 325
    .end local v0           #msgId:I
    :sswitch_2
    const v0, 0x7f0804bf

    .line 326
    .restart local v0       #msgId:I
    goto :goto_0

    .line 329
    .end local v0           #msgId:I
    :sswitch_3
    const v0, 0x7f0804c5

    .line 330
    .restart local v0       #msgId:I
    goto :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x30 -> :sswitch_3
        0x33 -> :sswitch_0
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method private createSecretNotSetDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804ad

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$4;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;
    .locals 2
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    const-class v1, Landroid/net/vpn/VpnType;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/net/vpn/VpnType;

    invoke-virtual {v0, p0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteProfile(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 593
    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 595
    .local v1, target:Landroid/net/vpn/VpnProfile;
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$12;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings$12;-><init>(Lcom/android/settings/vpn/VpnSettings;ILandroid/net/vpn/VpnProfile;)V

    .line 611
    .local v0, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804bb

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804ae

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 618
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 947
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/vpn/VpnProfile;

    .line 948
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 952
    :goto_0
    return-object v0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    sget-object v1, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v2, "deserialize a profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableProfilePreferencesIfOneActive()V
    .locals 4

    .prologue
    .line 846
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v2, :cond_1

    .line 860
    :cond_0
    return-void

    .line 848
    :cond_1
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 849
    .local v1, p:Landroid/net/vpn/VpnProfile;
    sget-object v2, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 857
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_0

    .line 853
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_0

    .line 849
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enableProfilePreferences()V
    .locals 4

    .prologue
    .line 863
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 864
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_0

    .line 866
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    return-void
.end method

.method private getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;
    .locals 2
    .parameter "p"

    .prologue
    .line 971
    new-instance v0, Lcom/android/settings/vpn/AuthenticationActor;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/vpn/AuthenticationActor;-><init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    return-object v0
.end method

.method private getProfile(I)Landroid/net/vpn/VpnProfile;
    .locals 1
    .parameter "position"

    .prologue
    .line 588
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnProfile;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/vpn/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIndexFromId(Ljava/lang/String;)I
    .locals 4
    .parameter "id"

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, index:I
    sget-object v3, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 560
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 566
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_1
    return v3

    .line 563
    .restart local v2       #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I
    .locals 2
    .parameter "menuInfo"

    .prologue
    .line 583
    iget v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 958
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 966
    const v1, 0x7f0804d0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 960
    :pswitch_0
    const v1, 0x7f0804cd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 962
    :pswitch_1
    const v1, 0x7f0804ce

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 964
    :pswitch_2
    const v1, 0x7f0804cf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 958
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 701
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needKeyStoreToConnect(Landroid/net/vpn/VpnProfile;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 726
    sget-object v0, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 735
    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .line 729
    .restart local p1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :pswitch_1
    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-virtual {p1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v0

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needKeyStoreToSave(Landroid/net/vpn/VpnProfile;)Z
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x1

    .line 706
    sget-object v4, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 720
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 708
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v3, v0

    .line 709
    .local v3, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v3}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, presharedKey:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    goto :goto_0

    .line 713
    .end local v2           #presharedKey:Ljava/lang/String;
    .end local v3           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :cond_1
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 714
    .local v1, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 716
    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onIdle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 840
    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 841
    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 842
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->enableProfilePreferences()V

    .line 843
    return-void
.end method

.method private processSecrets(Landroid/net/vpn/VpnProfile;)V
    .locals 6
    .parameter

    .prologue
    .line 1031
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$16;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1058
    :goto_0
    return-void

    .line 1033
    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v1, v0

    .line 1034
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1036
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v3, v2}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1038
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore write failed: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    invoke-virtual {v1, v3}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    .line 1044
    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v1, v0

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1047
    invoke-virtual {v1}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v3

    .line 1048
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1050
    sget-object v3, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore write failed: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_1
    invoke-virtual {v1, v2}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1054
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 882
    invoke-static {p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private replaceProfile(ILandroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    .line 670
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/vpn/VpnSettings$VpnPreference;>;"
    sget-object v3, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 671
    .local v1, oldProfile:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 672
    .local v2, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v3, v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    if-eq v3, v1, :cond_0

    .line 673
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "inconsistent state!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 676
    :cond_0
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p2}, Lcom/android/settings/vpn/VpnSettings;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 683
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    .line 686
    :cond_1
    invoke-static {p2}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 688
    invoke-virtual {v2, p2}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setProfile(Landroid/net/vpn/VpnProfile;)V

    .line 689
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 177
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v1, "ActiveProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, profileId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 181
    const-string v1, "ProfileConnecting"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 184
    :cond_2
    const-string v1, "ConnectDialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectDialogShowing:Z

    goto :goto_0
.end method

.method private retrieveVpnListFromStorage()V
    .locals 8

    .prologue
    .line 901
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/vpn/VpnSettings;->PROFILES_ROOT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 904
    if-eqz v1, :cond_0

    .line 905
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 906
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, ".pobj"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 907
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 905
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 909
    :cond_3
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/settings/vpn/VpnSettings;->deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;

    move-result-object v5

    .line 910
    if-eqz v5, :cond_2

    .line 911
    invoke-direct {p0, v4, v5}, Lcom/android/settings/vpn/VpnSettings;->checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 913
    sget-object v4, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 914
    :catch_0
    move-exception v4

    .line 915
    sget-object v5, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v6, "retrieveVpnListFromStorage()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 918
    :cond_4
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$15;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 923
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_0
.end method

.method static saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 875
    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".pobj"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 877
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 878
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 879
    return-void
.end method

.method private setProfileId(Landroid/net/vpn/VpnProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    .line 627
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 631
    sget-object v3, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 632
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 638
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_0
    return-void

    .line 637
    :cond_2
    invoke-virtual {p1, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startVpnEditor(Landroid/net/vpn/VpnProfile;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 751
    const-string v0, "vpn_profile"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/vpn/VpnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/settings/vpn/VpnEditor;->getTitle(Landroid/content/Context;Landroid/net/vpn/VpnProfile;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private startVpnTypeSelection()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/vpn/VpnTypeSelection;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0804c7

    const/4 v6, 0x2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "p"
    .parameter "action"

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->isKeyStoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 744
    :goto_0
    return v0

    .line 742
    :cond_0
    iput-object p2, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 743
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 744
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePreferenceMap()V
    .locals 4

    .prologue
    .line 886
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    .line 887
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 888
    sget-object v2, Lcom/android/settings/vpn/VpnSettings;->sVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 889
    .local v1, p:Landroid/net/vpn/VpnProfile;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    goto :goto_0

    .line 893
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 895
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    .line 897
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 456
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 457
    :cond_0
    sget-object v7, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v8, "no result returned by editor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    .line 462
    const-string v7, "vpn_type"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, typeName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;Z)V

    goto :goto_0

    .line 464
    .end local v6           #typeName:Ljava/lang/String;
    :cond_3
    if-ne p1, v8, :cond_8

    .line 465
    const-string v7, "vpn_profile"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/vpn/VpnProfile;

    .line 466
    .local v4, p:Landroid/net/vpn/VpnProfile;
    if-nez v4, :cond_4

    .line 467
    sget-object v7, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v8, "null object returned by editor"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 472
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/vpn/VpnSettings;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v3

    .line 473
    .local v3, index:I
    invoke-direct {p0, v4, v3}, Lcom/android/settings/vpn/VpnSettings;->checkDuplicateName(Landroid/net/vpn/VpnProfile;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 474
    move-object v5, v4

    .line 475
    .local v5, profile:Landroid/net/vpn/VpnProfile;
    const v7, 0x7f0804ba

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings/vpn/VpnSettings$8;

    invoke-direct {v8, p0, v5}, Lcom/android/settings/vpn/VpnSettings$8;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    invoke-static {v1, v7, v8}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 486
    .end local v5           #profile:Landroid/net/vpn/VpnProfile;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->needKeyStoreToSave(Landroid/net/vpn/VpnProfile;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 487
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/vpn/VpnSettings$9;-><init>(Lcom/android/settings/vpn/VpnSettings;IILandroid/content/Intent;)V

    .line 492
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, v4, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeyStore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 496
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_6
    if-gez v3, :cond_7

    .line 497
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->addProfile(Landroid/net/vpn/VpnProfile;)V

    .line 498
    const v7, 0x7f0804d3

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/settings/vpn/Util;->showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 506
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 507
    .local v2, e:Ljava/io/IOException;
    move-object v5, v4

    .line 508
    .restart local v5       #profile:Landroid/net/vpn/VpnProfile;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings/vpn/VpnSettings$10;

    invoke-direct {v8, p0, v5}, Lcom/android/settings/vpn/VpnSettings$10;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    invoke-static {v1, v7, v8}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 501
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #profile:Landroid/net/vpn/VpnProfile;
    :cond_7
    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/settings/vpn/VpnSettings;->replaceProfile(ILandroid/net/vpn/VpnProfile;)V

    .line 502
    const v7, 0x7f0804d4

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/settings/vpn/Util;->showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 518
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #index:I
    .end local v4           #p:Landroid/net/vpn/VpnProfile;
    :cond_8
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown request code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 525
    monitor-enter p0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 526
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v2, v0

    .line 527
    .local v2, d:Landroid/app/Dialog;
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v4, v2}, Lcom/android/settings/vpn/VpnProfileActor;->validateInputs(Landroid/app/Dialog;)Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, error:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 529
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v4, v2}, Lcom/android/settings/vpn/VpnProfileActor;->connect(Landroid/app/Dialog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v2           #d:Landroid/app/Dialog;
    .end local v3           #error:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 532
    .restart local v2       #d:Landroid/app/Dialog;
    .restart local v3       #error:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 533
    .local v1, activity:Landroid/app/Activity;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0804b8

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0804af

    new-instance v6, Lcom/android/settings/vpn/VpnSettings$11;

    invoke-direct {v6, p0}, Lcom/android/settings/vpn/VpnSettings$11;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 549
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 550
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #d:Landroid/app/Dialog;
    .end local v3           #error:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 553
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    sget-object v5, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn/VpnSettings;->getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I

    move-result v1

    .line 431
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    .line 433
    .local v0, p:Landroid/net/vpn/VpnProfile;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 448
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 436
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V

    move v2, v3

    .line 437
    goto :goto_0

    .line 440
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;Z)V

    move v2, v3

    .line 441
    goto :goto_0

    .line 444
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->deleteProfile(I)V

    move v2, v3

    .line 445
    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f05002b

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->addPreferencesFromResource(I)V

    .line 145
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 147
    const-string v0, "vpn_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    .line 150
    const-string v0, "add_new_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mAddVpn:Landroid/preference/PreferenceScreen;

    .line 151
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mAddVpn:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$1;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->retrieveVpnListFromStorage()V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 404
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 406
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/settings/vpn/VpnSettings;->getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v2

    .line 408
    .local v2, p:Landroid/net/vpn/VpnProfile;
    if-eqz v2, :cond_1

    .line 409
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v3

    .line 410
    .local v3, state:Landroid/net/vpn/VpnState;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 412
    sget-object v4, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne v3, v4, :cond_2

    move v0, v7

    .line 413
    .local v0, isIdle:Z
    :goto_0
    if-nez v0, :cond_0

    sget-object v4, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    if-eq v3, v4, :cond_0

    sget-object v4, Landroid/net/vpn/VpnState;->CANCELLED:Landroid/net/vpn/VpnState;

    if-ne v3, v4, :cond_3

    :cond_0
    move v1, v7

    .line 415
    .local v1, isNotConnect:Z
    :goto_1
    const v4, 0x7f0804b4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v5, :cond_4

    move v5, v7

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 417
    const/4 v4, 0x2

    const v5, 0x7f0804b5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v5, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    if-ne v3, v5, :cond_5

    move v5, v7

    :goto_3
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 420
    const/4 v4, 0x3

    const v5, 0x7f0804b6

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 422
    const/4 v4, 0x4

    const v5, 0x7f0804b7

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 425
    .end local v0           #isIdle:Z
    .end local v1           #isNotConnect:Z
    .end local v3           #state:Landroid/net/vpn/VpnState;
    :cond_1
    return-void

    .restart local v3       #state:Landroid/net/vpn/VpnState;
    :cond_2
    move v0, v6

    .line 412
    goto :goto_0

    .restart local v0       #isIdle:Z
    :cond_3
    move v1, v6

    .line 413
    goto :goto_1

    .restart local v1       #isNotConnect:Z
    :cond_4
    move v5, v6

    .line 415
    goto :goto_2

    :cond_5
    move v5, v6

    .line 417
    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 263
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn/VpnSettings$2;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 276
    sparse-switch p1, :sswitch_data_0

    .line 295
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create reconnect dialog for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->createReconnectDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 278
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectDialogShowing:Z

    .line 279
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn/VpnSettings$3;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 284
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 287
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createSecretNotSetDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 292
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->createEditDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x2a -> :sswitch_2
        0x66 -> :sswitch_2
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 254
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 247
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 248
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnManager;->unregisterConnectivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->updatePreferenceMap()V

    .line 215
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-virtual {v1, v2}, Landroid/net/vpn/VpnManager;->registerConnectivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->isKeyStoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 219
    .local v0, action:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectDialogShowing:Z

    if-nez v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v1

    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-eq v1, v2, :cond_2

    .line 230
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->checkVpnConnectionStatus()V

    .line 240
    :cond_2
    :goto_0
    return-void

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    invoke-virtual {v1}, Landroid/net/vpn/VpnManager;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v1, :cond_2

    .line 236
    :cond_4
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->removeDialog(I)V

    .line 237
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->checkVpnConnectionStatus()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "ActiveProfile"

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "ProfileConnecting"

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string v0, "ConnectDialogShowing"

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    return-void

    .line 168
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
