.class public Lcom/google/android/music/AccountSettings;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceActivity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static accounts:[Landroid/accounts/Account;

.field private static sSelectedPreference:Lcom/google/android/music/AccountPreference;


# instance fields
.field private mAccountPreferences:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/AccountPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mMainScreen:Landroid/preference/PreferenceScreen;

.field private self:Lcom/google/android/music/AccountSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "AccountSettings"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AccountSettings;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    iput-object p0, p0, Lcom/google/android/music/AccountSettings;->self:Lcom/google/android/music/AccountSettings;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;

    .line 100
    new-instance v0, Lcom/google/android/music/AccountSettings$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/AccountSettings$1;-><init>(Lcom/google/android/music/AccountSettings;)V

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 123
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/music/AccountPreference;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/music/AccountSettings;->sSelectedPreference:Lcom/google/android/music/AccountPreference;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/google/android/music/AccountSettings;->sSelectedPreference:Lcom/google/android/music/AccountPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/music/AccountSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/music/AccountSettings;->authenticationSuccess(Lcom/google/android/music/AccountPreference;)V

    return-void
.end method

.method static synthetic access$302([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->self:Lcom/google/android/music/AccountSettings;

    return-object v0
.end method

.method private authenticationFailed(II)V
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/music/AccountSettings$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/AccountSettings$3;-><init>(Lcom/google/android/music/AccountSettings;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private authenticationSuccess(Lcom/google/android/music/AccountPreference;)V
    .locals 1
    .parameter "accountPref"

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/music/AccountSettings$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/AccountSettings$2;-><init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->addPreferencesFromResource(I)V

    .line 58
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 59
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const v1, 0x7f0c0047

    invoke-virtual {v0, p0, v1}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Landroid/content/Context;I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 61
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/AppState;->setUseSystemBackground(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/AppState;->setBottomBarEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->hideNoMusicView()V

    .line 64
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 65
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideAllButTitle()V

    .line 66
    iget-object v0, p0, Lcom/google/android/music/AccountSettings;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/music/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;

    .line 69
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 74
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts()[Landroid/accounts/Account;

    move-result-object v5

    sput-object v5, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    .line 75
    invoke-static {p0}, Lcom/google/android/music/AccountManagementHelper;->getSelectedAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    .line 77
    .local v4, selectedAccount:Landroid/accounts/Account;
    iget-object v5, p0, Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AccountPreference;

    .line 78
    .local v0, ap:Lcom/google/android/music/AccountPreference;
    iget-object v5, p0, Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 81
    .end local v0           #ap:Lcom/google/android/music/AccountPreference;
    :cond_0
    sget-object v5, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    if-eqz v5, :cond_2

    .line 82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 83
    new-instance v3, Lcom/google/android/music/AccountPreference;

    sget-object v5, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    aget-object v5, v5, v1

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 84
    .local v3, preference:Lcom/google/android/music/AccountPreference;
    iget-object v5, p0, Lcom/google/android/music/AccountSettings;->mChooseAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v5}, Lcom/google/android/music/AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    sget-object v5, Lcom/google/android/music/AccountSettings;->accounts:[Landroid/accounts/Account;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 87
    sput-object v3, Lcom/google/android/music/AccountSettings;->sSelectedPreference:Lcom/google/android/music/AccountPreference;

    .line 89
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/AccountSettings;->mMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 90
    iget-object v5, p0, Lcom/google/android/music/AccountSettings;->mAccountPreferences:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .end local v1           #i:I
    .end local v3           #preference:Lcom/google/android/music/AccountPreference;
    :cond_2
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/google/android/music/AccountSettings$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/AccountSettings$4;-><init>(Lcom/google/android/music/AccountSettings;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/AccountSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method
