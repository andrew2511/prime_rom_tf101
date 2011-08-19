.class public Lcom/google/android/voicesearch/DeviceCapabilityManager;
.super Ljava/lang/Object;
.source "DeviceCapabilityManager.java"


# static fields
.field public static final PACKAGE_NOT_INSTALLED:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mScreenSize:I

.field private final mTelephoneCapable:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    .line 44
    iput-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    .line 46
    iput-object v1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    iget-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceCapableCompat;->isVoiceCapable(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    .line 64
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    goto :goto_0
.end method


# virtual methods
.method public getInstalledPackageVersion(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 113
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasLargeScreen()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmallScreen()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mScreenSize:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTelephoneCapable()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mTelephoneCapable:Z

    return v0
.end method

.method public supportsActivity(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    move v0, v2

    .line 98
    goto :goto_0
.end method

.method public supportsIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/DeviceCapabilityManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
