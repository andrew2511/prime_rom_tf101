.class public Lcom/asus/setupwizard/SetupWizardActivity;
.super Landroid/app/Activity;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final WIFI_ONLY:Z


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasASUSkeyboard:Z

.field private mLocalePicker:Landroid/widget/Button;

.field private mLocalePopup:Landroid/widget/ListPopupWindow;

.field private mSetAllFinish:Z

.field private mSetWifiFinish:Z

.field private mStartButton:Landroid/widget/Button;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "wifi-only"

    const-string v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/asus/setupwizard/SetupWizardActivity;->WIFI_ONLY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetWifiFinish:Z

    .line 49
    iput-boolean v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetAllFinish:Z

    .line 52
    iput-boolean v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mHasASUSkeyboard:Z

    return-void
.end method

.method private adjustStatusBarLocked(Z)V
    .locals 2
    .parameter "ishide"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 292
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_2

    .line 296
    const-string v0, "AsusSetupWizard"

    const-string v1, "Could not get status bar manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    if-eqz p1, :cond_3

    .line 298
    iget-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 299
    :cond_3
    if-nez p1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 184
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 187
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    aget-object v2, p2, v1

    .line 192
    :goto_1
    return-object v2

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private startLauncher(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivity(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public finishSetupWizard(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 238
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 240
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 241
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 242
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    invoke-direct {p0, v10}, Lcom/asus/setupwizard/SetupWizardActivity;->adjustStatusBarLocked(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "setup_wizard_has_run"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "last_setup_shown"

    const-string v9, "honeycomb_epad_1"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.asus.setupwizard.Finished"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/asus/setupwizard/SetupWizardActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 266
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.setupwizard"

    const-string v8, "com.android.setupwizard.SetupWizardActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v6, setup:Landroid/content/ComponentName;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    .end local v6           #setup:Landroid/content/ComponentName;
    :goto_1
    new-instance v4, Landroid/content/ComponentName;

    const-string v7, "com.asus.setupwizard"

    const-string v8, "com.asus.setupwizard.SetupWizardActivity"

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v4, name:Landroid/content/ComponentName;
    invoke-virtual {v5, v4, v11, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 276
    invoke-direct {p0, p1}, Lcom/asus/setupwizard/SetupWizardActivity;->startLauncher(Landroid/content/Context;)V

    .line 277
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->finish()V

    .line 278
    return-void

    .line 243
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #name:Landroid/content/ComponentName;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 244
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AsusSetupWizard"

    const-string v8, "updateConfiguration fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 269
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "BaseStartUpActivity"

    const-string v8, "Google Mobile Services not installed on this device"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initUi()V
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePicker:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePicker:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mStartButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_0

    .line 201
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.android.setupwizard"

    const-string v3, "com.android.setupwizard.LocationSharingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v2, "firstRun"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetWifiFinish:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 207
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "AsusSetupWizard"

    const-string v3, "LocationSharingActivity not found because device doesn\'t have GMS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.DateTimeSettingsSetupWizard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    iput-boolean v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetWifiFinish:Z

    goto :goto_0

    .line 217
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_1
    if-eqz p2, :cond_0

    .line 218
    const-string v2, "AsusSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCATIONSHARE_SETUDATEANDTIME_SETUP return resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :pswitch_2
    if-ne p2, v2, :cond_0

    .line 224
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 225
    .restart local v1       #i:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.WifiSettingsForSetupWizardXL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 230
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_3
    const-string v2, "AsusSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATEANDTIME_SETUP return resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 124
    :pswitch_0
    new-instance v4, Landroid/widget/ListPopupWindow;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    .line 125
    iget-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePicker:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 126
    iget-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePicker:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 127
    iget-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 130
    iget-object v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 136
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 137
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 138
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v3, i:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mHasASUSkeyboard:Z

    if-eqz v4, :cond_0

    .line 145
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.setupwizard.AsusKeyBoardSetupWizard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v3, v7}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 139
    .end local v3           #i:Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 140
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "AsusSetupWizard"

    const-string v5, "updateConfiguration fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i:Landroid/content/Intent;
    :cond_0
    sget-boolean v4, Lcom/asus/setupwizard/SetupWizardActivity;->WIFI_ONLY:Z

    if-nez v4, :cond_1

    .line 149
    const-string v4, "com.asus.setupwizard"

    const-string v5, "com.asus.setupwizard.DataConnectSetupWizard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v3, v7}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 152
    :cond_1
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.wifi.WifiSettingsForSetupWizardXL"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/asus/setupwizard/SetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x7f070005
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/asus/setupwizard/SetupWizardActivity;->requestWindowFeature(I)Z

    .line 61
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/SetupWizardActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setup_wizard_has_run"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/asus/setupwizard/SetupWizardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->initUi()V

    .line 74
    invoke-direct {p0, v5}, Lcom/asus/setupwizard/SetupWizardActivity;->adjustStatusBarLocked(Z)V

    .line 76
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/asus/setupwizard/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 77
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 78
    if-nez v1, :cond_2

    move v2, v3

    .line 79
    :goto_0
    if-ge v3, v2, :cond_1

    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 81
    const-string v4, "com.nuance.xt9.input/.IME"

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iput-boolean v5, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mHasASUSkeyboard:Z

    .line 87
    :cond_1
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 89
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/asus/setupwizard/SetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePicker:Landroid/widget/Button;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/asus/setupwizard/SetupWizardActivity;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/setupwizard/SetupWizardActivity;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void

    .line 78
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 79
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 168
    .local v0, info:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 169
    .local v1, locale:Ljava/util/Locale;
    iget-object v2, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePicker:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 171
    iget-object v2, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mLocalePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 173
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 306
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 103
    iget-boolean v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetAllFinish:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0, p0}, Lcom/asus/setupwizard/SetupWizardActivity;->finishSetupWizard(Landroid/content/Context;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetWifiFinish:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/setupwizard/SetupWizardActivity;->mSetAllFinish:Z

    goto :goto_0
.end method
