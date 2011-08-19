.class public Lcom/asus/livewallpaper/gl/MyWaterSettings;
.super Landroid/preference/PreferenceActivity;
.source "MyWaterSettings.java"


# static fields
.field static DIALOG_ABOUT:I

.field static KEY_ABOUT:Ljava/lang/String;

.field static KEY_ENABLE_ROTATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "rotate"

    sput-object v0, Lcom/asus/livewallpaper/gl/MyWaterSettings;->KEY_ENABLE_ROTATION:Ljava/lang/String;

    .line 31
    const-string v0, "about"

    sput-object v0, Lcom/asus/livewallpaper/gl/MyWaterSettings;->KEY_ABOUT:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/asus/livewallpaper/gl/MyWaterSettings;->DIALOG_ABOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isEnableRotation(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 43
    if-nez p0, :cond_0

    move v1, v2

    .line 48
    :goto_0
    return v1

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/asus/livewallpaper/gl/MyWaterSettings;->KEY_ENABLE_ROTATION:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 72
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->addPreferencesFromResource(I)V

    .line 74
    sget-object v1, Lcom/asus/livewallpaper/gl/MyWaterSettings;->KEY_ABOUT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 75
    .local v0, pref_about:Landroid/preference/Preference;
    new-instance v1, Lcom/asus/livewallpaper/gl/MyWaterSettings$1;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/gl/MyWaterSettings$1;-><init>(Lcom/asus/livewallpaper/gl/MyWaterSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 88
    sget v4, Lcom/asus/livewallpaper/gl/MyWaterSettings;->DIALOG_ABOUT:I

    if-eq p1, v4, :cond_0

    move-object v4, v7

    .line 101
    :goto_0
    return-object v4

    .line 89
    :cond_0
    const/high16 v4, 0x7f03

    invoke-static {p0, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, about_view:Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f05000a

    invoke-virtual {p0, v5}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    .local v3, versionText:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/MyWaterSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.asus.livewallpaper"

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 95
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    const/high16 v4, 0x7f08

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f050005

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 96
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 97
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "1.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
