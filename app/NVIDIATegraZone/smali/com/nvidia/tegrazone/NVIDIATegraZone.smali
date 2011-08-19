.class public Lcom/nvidia/tegrazone/NVIDIATegraZone;
.super Landroid/app/TabActivity;
.source "NVIDIATegraZone.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;


# static fields
.field public static final SHARED_PREFS:Ljava/lang/String; = "startupPrefs"


# instance fields
.field public aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

.field public builtTabs:Ljava/lang/Boolean;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field public tabHost:Landroid/widget/TabHost;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->builtTabs:Ljava/lang/Boolean;

    .line 48
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 38
    return-void
.end method

.method private mentionUpdate()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->showUpdateApp(Landroid/app/Activity;)V

    .line 371
    return-void
.end method

.method private setTabTextStyle(I)V
    .locals 7
    .parameter "i"

    .prologue
    .line 208
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 209
    .local v2, tv:Landroid/widget/TextView;
    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    const v3, 0x7f060072

    invoke-virtual {p0, v3}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 214
    .local v1, scale:F
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    float-to-int v6, v1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    .end local v0           #layout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #scale:F
    :cond_0
    :goto_0
    return-void

    .line 218
    .restart local v0       #layout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #scale:F
    :cond_1
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/high16 v6, 0x4100

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public checkFirstTimeLaunch()V
    .locals 8

    .prologue
    .line 239
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    :try_start_0
    const-string v3, "startupPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    .local v1, mysettings:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v4, "showedSplashScreen"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->showedSplashScreen:Ljava/lang/Boolean;

    .line 245
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->showedSplashScreen:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->showAboutMenu()V

    .line 247
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->showedSplashScreen:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :try_start_1
    const-string v3, "startupPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 251
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "showedSplashScreen"

    iget-object v4, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->showedSplashScreen:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 263
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v4, "UA-1273456-49"

    invoke-virtual {v3, v4, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 265
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v5

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "DeviceInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    const-string v5, "Initial Load App"

    .line 268
    iget-object v6, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->carrierString:Ljava/lang/String;

    .line 269
    const/4 v7, 0x0

    .line 265
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v1           #mysettings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    return-void

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getLocalizedURLs()V

    goto :goto_1

    .line 273
    :catch_0
    move-exception v3

    goto :goto_1

    .line 254
    .restart local v1       #mysettings:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public colorSelectedTab()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f020056

    move v0, v1

    .line 233
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    return-void

    .line 232
    .end local v0           #id:I
    :cond_0
    const v1, 0x7f020057

    move v0, v1

    goto :goto_0
.end method

.method public getLocalizedURLs()V
    .locals 5

    .prologue
    .line 283
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    .line 285
    .local v1, localizedMgr:Lcom/nvidia/tegrazone/services/ServiceManager;
    const/16 v2, 0xb

    :try_start_0
    invoke-static {}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildLocalizedUrls()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 288
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleTabChange(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    .line 223
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->colorSelectedTab()V

    .line 229
    return-void

    .line 224
    :cond_0
    if-nez v0, :cond_1

    const v2, 0x7f020068

    move v1, v2

    .line 225
    .local v1, id:I
    :goto_1
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-direct {p0, v0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->setTabTextStyle(I)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v1           #id:I
    :cond_1
    const v2, 0x7f020069

    move v1, v2

    goto :goto_1
.end method

.method public hideTitleBar()V
    .locals 2

    .prologue
    .line 358
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->requestWindowFeature(I)Z

    move-result v0

    .line 359
    .local v0, customTitleSupported:Z
    return-void
.end method

.method public initMasthead()V
    .locals 2

    .prologue
    .line 326
    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, masthead:Landroid/view/View;
    new-instance v1, Lcom/nvidia/tegrazone/NVIDIATegraZone$2;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone$2;-><init>(Lcom/nvidia/tegrazone/NVIDIATegraZone;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method public initTabs()V
    .locals 13

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getTabHost()Landroid/widget/TabHost;

    move-result-object v10

    iput-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    .line 124
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/nvidia/tegrazone/HomeActivity;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 127
    .local v4, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    const-string v11, "home"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    .line 128
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f06001f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    .line 129
    invoke-virtual {v10, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 130
    .local v7, spec:Landroid/widget/TabHost$TabSpec;
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->builtTabs:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    .line 131
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v10, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 135
    :cond_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/nvidia/tegrazone/AppListActivity;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 136
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    const-string v11, "appListing"

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    .line 137
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060020

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    .line 138
    invoke-virtual {v10, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 139
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->builtTabs:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    .line 140
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v10, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 142
    :cond_1
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->builtTabs:Ljava/lang/Boolean;

    .line 151
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v10

    if-lt v2, v10, :cond_3

    .line 180
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    new-instance v11, Lcom/nvidia/tegrazone/NVIDIATegraZone$1;

    invoke-direct {v11, p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone$1;-><init>(Lcom/nvidia/tegrazone/NVIDIATegraZone;)V

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, extras:Landroid/os/Bundle;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 193
    .local v6, setGames:Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 194
    const-string v10, "games"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 197
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 198
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 203
    :goto_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->colorSelectedTab()V

    .line 204
    return-void

    .line 152
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v6           #setGames:Ljava/lang/Boolean;
    :cond_3
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    .line 154
    .local v8, tabWidget:Landroid/widget/TabWidget;
    invoke-virtual {v8, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 155
    .local v9, v:Landroid/view/View;
    if-nez v2, :cond_4

    const v10, 0x7f020068

    move v3, v10

    .line 156
    .local v3, id:I
    :goto_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 160
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nvidia/tegrazone/model/NVModel;->isLandscape(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 161
    invoke-virtual {v8, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const/16 v11, 0x36

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    :goto_3
    invoke-direct {p0, v2}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->setTabTextStyle(I)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 155
    .end local v3           #id:I
    :cond_4
    const v10, 0x7f020069

    move v3, v10

    goto :goto_2

    .line 163
    .restart local v3       #id:I
    :cond_5
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v5, v10, Landroid/util/DisplayMetrics;->density:F

    .line 164
    .local v5, scale:F
    const v10, 0x7f060071

    invoke-virtual {p0, v10}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, height:I
    invoke-virtual {v8, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    int-to-float v11, v1

    mul-float/2addr v11, v5

    float-to-int v11, v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 167
    .end local v1           #height:I
    .end local v5           #scale:F
    :cond_6
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v10, v10, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 168
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v5, v10, Landroid/util/DisplayMetrics;->density:F

    .line 169
    .restart local v5       #scale:F
    const/16 v1, 0x32

    .line 170
    .restart local v1       #height:I
    invoke-virtual {v8, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    int-to-float v11, v1

    mul-float/2addr v11, v5

    float-to-int v11, v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 172
    .end local v1           #height:I
    .end local v5           #scale:F
    :cond_7
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v5, v10, Landroid/util/DisplayMetrics;->density:F

    .line 173
    .restart local v5       #scale:F
    const v10, 0x7f060071

    invoke-virtual {p0, v10}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 174
    .restart local v1       #height:I
    invoke-virtual {v8, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    int-to-float v11, v1

    mul-float/2addr v11, v5

    float-to-int v11, v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 200
    .end local v1           #height:I
    .end local v3           #id:I
    .end local v5           #scale:F
    .end local v8           #tabWidget:Landroid/widget/TabWidget;
    .end local v9           #v:Landroid/view/View;
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v6       #setGames:Ljava/lang/Boolean;
    :cond_8
    iget-object v10, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    .line 59
    .local v1, versionManager:Lcom/nvidia/tegrazone/services/ServiceManager;
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchNoInternet(Landroid/app/Activity;)V

    .line 61
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->finish()V

    .line 111
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isHighBandwidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isHighBandwidth(Landroid/app/Activity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v2, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 73
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 75
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v3, "UA-1273456-49"

    invoke-virtual {v2, v3, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 77
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "DeviceInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v4, "User loaded App"

    .line 80
    iget-object v5, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v5, v5, Lcom/nvidia/tegrazone/model/NVModel;->carrierString:Ljava/lang/String;

    .line 81
    const/4 v6, 0x0

    .line 77
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 85
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->hideTitleBar()V

    .line 88
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 92
    iget-object v2, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->checkedForVersion:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    const/16 v2, 0x9

    :try_start_0
    iget-object v3, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->versionName:Ljava/lang/String;

    invoke-static {v3}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildCheckVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->checkFirstTimeLaunch()V

    .line 106
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->initMasthead()V

    .line 110
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->initTabs()V

    goto/16 :goto_0

    .line 96
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 297
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 365
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 366
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "running out of memory"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    invoke-static {}, Lcom/nvidia/tegrazone/components/ImageLoader;->clearCache()V

    .line 352
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 306
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->shareThis()V

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->showAboutMenu()V

    move v0, v1

    .line 310
    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 422
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->checkAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 425
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/TabActivity;->onRestart()V

    .line 403
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 437
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nvidia/tegrazone/NVIDIATegraZone$3;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone$3;-><init>(Lcom/nvidia/tegrazone/NVIDIATegraZone;)V

    .line 441
    const-wide/16 v2, 0x1f4

    .line 437
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    :cond_1
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 444
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 409
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isCurrentVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->mentionUpdate()V

    .line 412
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    :cond_1
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 414
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->restartAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 416
    :cond_2
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getLocalizedURLs()V

    .line 397
    return-void
.end method

.method public serviceFault(II)V
    .locals 2
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    .line 388
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkVersion error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method public serviceResult(I)V
    .locals 1
    .parameter "methodName"

    .prologue
    .line 378
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isCurrentVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->mentionUpdate()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->checkFirstTimeLaunch()V

    goto :goto_0
.end method

.method public shareThis()V
    .locals 4

    .prologue
    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public showAboutMenu()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 345
    return-void
.end method
