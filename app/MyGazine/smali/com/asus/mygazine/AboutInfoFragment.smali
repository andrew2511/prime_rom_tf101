.class public Lcom/asus/mygazine/AboutInfoFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutInfoFragment.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final KEY_LEGAL_INFO:Ljava/lang/String; = "legal_info"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "AboutInfoFragment"


# instance fields
.field private mLegalInfoPref:Landroid/preference/DialogPreference;

.field private mVersionPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/AboutInfoFragment;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Lcom/asus/mygazine/AboutInfoFragment;->addPreferencesFromResource(I)V

    .line 28
    const-string v3, "version"

    invoke-virtual {p0, v3}, Lcom/asus/mygazine/AboutInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/mygazine/AboutInfoFragment;->mVersionPref:Landroid/preference/Preference;

    .line 29
    const-string v3, "legal_info"

    invoke-virtual {p0, v3}, Lcom/asus/mygazine/AboutInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/DialogPreference;

    iput-object v3, p0, Lcom/asus/mygazine/AboutInfoFragment;->mLegalInfoPref:Landroid/preference/DialogPreference;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, versionText:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/mygazine/AboutInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.mygazine"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v3, p0, Lcom/asus/mygazine/AboutInfoFragment;->mVersionPref:Landroid/preference/Preference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    return-void

    .line 35
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 36
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "1.0.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
