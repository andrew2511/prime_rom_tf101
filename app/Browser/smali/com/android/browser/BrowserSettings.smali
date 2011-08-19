.class public Lcom/android/browser/BrowserSettings;
.super Ljava/util/Observable;
.source "BrowserSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$RlzUpdateTask;,
        Lcom/android/browser/BrowserSettings$DeleteProfileFromDbTask;,
        Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;,
        Lcom/android/browser/BrowserSettings$AutoFillProfileDbTask;,
        Lcom/android/browser/BrowserSettings$LoadFromDbTask;,
        Lcom/android/browser/BrowserSettings$Observer;
    }
.end annotation


# static fields
.field public static final RLZ_PROVIDER_URI:Landroid/net/Uri;

.field private static defaultFixedFontSize:I

.field private static defaultFontSize:I

.field private static minimumFontSize:I

.field private static minimumLogicalFontSize:I

.field private static pageCacheCapacity:I

.field private static sSingleton:Lcom/android/browser/BrowserSettings;

.field private static textSize:Landroid/webkit/WebSettings$TextSize;

.field private static zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field private appCacheEnabled:Z

.field private appCacheMaxSize:J

.field private appCachePath:Ljava/lang/String;

.field private autoFillActiveProfileId:I

.field private autoFillEnabled:Z

.field private autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

.field private autoFitPage:Z

.field private databaseEnabled:Z

.field private databasePath:Ljava/lang/String;

.field private defaultTextEncodingName:Ljava/lang/String;

.field private domStorageEnabled:Z

.field private geolocationDatabasePath:Ljava/lang/String;

.field private geolocationEnabled:Z

.field private hardwareAccelerated:Z

.field private homeUrl:Ljava/lang/String;

.field private javaScriptCanOpenWindowsAutomatically:Z

.field private javaScriptEnabled:Z

.field private jsFlags:Ljava/lang/String;

.field public layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private lightTouch:Z

.field private loadsImagesAutomatically:Z

.field private loadsPageInOverviewMode:Z

.field private mController:Lcom/android/browser/Controller;

.field private mLoadFromDbComplete:Z

.field private mRlzValue:Ljava/lang/String;

.field private mWebSettingsToObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Lcom/android/browser/BrowserSettings$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private navDump:Z

.field private openInBackground:Z

.field private pluginState:Landroid/webkit/WebSettings$PluginState;

.field private quickControls:Z

.field private rememberPasswords:Z

.field private saveFormData:Z

.field private searchEngine:Lcom/android/browser/search/SearchEngine;

.field private showConsole:Z

.field private showDebugSettings:Z

.field private showSecurityWarnings:Z

.field private showVisualIndicator:Z

.field private tracing:Z

.field private uaDefaultValue:Ljava/lang/String;

.field private useInstant:Z

.field private useMostVisitedHomepage:Z

.field private useWideViewPort:Z

.field private userAgent:I

.field private webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

.field private workersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 128
    sput v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    .line 129
    sput v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    .line 130
    const/16 v0, 0x10

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    .line 131
    const/16 v0, 0xd

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    .line 132
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    sput-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 134
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sput-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    .line 211
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserSettings;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 885
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 97
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->uaDefaultValue:Ljava/lang/String;

    .line 109
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 111
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 112
    iput v2, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 113
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->hardwareAccelerated:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showVisualIndicator:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->useInstant:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mRlzValue:Ljava/lang/String;

    .line 886
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 887
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method static synthetic access$1300()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->autoFillEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput p0, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/browser/BrowserSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/browser/BrowserSettings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/browser/BrowserSettings;Landroid/webkit/WebSettings$AutoFillProfile;)Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/browser/BrowserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/browser/BrowserSettings;)Lcom/android/browser/WebStorageSizeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/browser/BrowserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/browser/BrowserSettings;->autoFillActiveProfileId:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/browser/BrowserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/browser/BrowserSettings;->autoFillActiveProfileId:I

    return p1
.end method

.method static synthetic access$3400()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/browser/BrowserSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/browser/BrowserSettings;->mLoadFromDbComplete:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/browser/BrowserSettings;->retrieveRlzValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/browser/BrowserSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mRlzValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->updateHomePageRlzParameter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->updateBookmarksRlzParameter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showVisualIndicator:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    return v0
.end method

.method static getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 878
    const-string v1, "{CID}"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 881
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0}, Lcom/android/browser/BrowserSettings;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    .line 788
    :cond_0
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method private getUADefault()Ljava/lang/String;
    .locals 4

    .prologue
    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, SKUvalue:Ljava/lang/String;
    const-string v1, "0"

    .line 921
    .local v1, UADefaultValue:Ljava/lang/String;
    const-string v2, "ro.product.name"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    const-string v2, "TW_epad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CN_epad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 923
    :cond_0
    const-string v1, "1"

    .line 926
    :goto_0
    return-object v1

    .line 925
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 894
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 895
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 896
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 897
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 898
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 899
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 900
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 901
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->autoFillEnabled:Z

    .line 902
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 903
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 904
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 905
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 906
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    .line 908
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 909
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 910
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 911
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 912
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 914
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getUADefault()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->uaDefaultValue:Ljava/lang/String;

    .line 915
    return-void
.end method

.method private static retrieveRlzValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1087
    const-string v9, ""

    .line 1088
    .local v9, rlz:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1089
    .local v8, pm:Landroid/content/pm/PackageManager;
    const-string v0, "com.google.android.partnersetup.rlzappprovider"

    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v10, v9

    .line 1110
    .end local v9           #rlz:Ljava/lang/String;
    .local v10, rlz:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 1093
    .end local v10           #rlz:Ljava/lang/String;
    .restart local v9       #rlz:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090159

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1094
    .local v6, ap:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v10, v9

    .line 1095
    .end local v9           #rlz:Ljava/lang/String;
    .restart local v10       #rlz:Ljava/lang/String;
    goto :goto_0

    .line 1098
    .end local v10           #rlz:Ljava/lang/String;
    .restart local v9       #rlz:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/browser/BrowserSettings;->RLZ_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1099
    .local v1, rlzUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1101
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1102
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1103
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1106
    :cond_2
    if-eqz v7, :cond_3

    .line 1107
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v9

    .line 1110
    .end local v9           #rlz:Ljava/lang/String;
    .restart local v10       #rlz:Ljava/lang/String;
    goto :goto_0

    .line 1106
    .end local v10           #rlz:Ljava/lang/String;
    .restart local v9       #rlz:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1107
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private setActiveAutoFillProfileId(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "activeProfileId"

    .prologue
    .line 736
    iput p2, p0, Lcom/android/browser/BrowserSettings;->autoFillActiveProfileId:I

    .line 737
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 739
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autofill_active_profile_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 741
    return-void
.end method

.method private updateBookmarksRlzParameter(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 1043
    const/4 v7, 0x0

    .line 1045
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const-string v3, "url LIKE \'%rlz=%\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1047
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1070
    :cond_0
    if-eqz v7, :cond_1

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_1
    :goto_0
    return-void

    .line 1050
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1051
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1052
    .local v8, id:J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1053
    .local v12, url:Ljava/lang/String;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1050
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1070
    .end local v8           #id:J
    .end local v12           #url:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1057
    .restart local v8       #id:J
    .restart local v12       #url:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1058
    .local v11, uri:Landroid/net/Uri;
    const-string v0, "rlz"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v11}, Lcom/android/browser/UrlUtils;->isGoogleUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1059
    invoke-direct {p0, v12}, Lcom/android/browser/BrowserSettings;->updateRlzParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1060
    .local v10, newUrl:Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1061
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1062
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "url"

    invoke-virtual {v13, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-static {p1}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1065
    .local v6, bookmarkUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v13, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1070
    .end local v6           #bookmarkUri:Landroid/net/Uri;
    .end local v8           #id:J
    .end local v10           #newUrl:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #url:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_6
    if-eqz v7, :cond_1

    .line 1071
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateHomePageRlzParameter(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1032
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1033
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "rlz"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/browser/UrlUtils;->isGoogleUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1034
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserSettings;->updateRlzParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, newHomeUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1036
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1039
    .end local v0           #newHomeUrl:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateRlzParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 1077
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1078
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "rlz"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, oldRlz:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rlz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rlz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mRlzValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1082
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private updateSearchEngine(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "searchEngineName"
    .parameter "force"

    .prologue
    .line 504
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v1, :cond_2

    .line 507
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 517
    :cond_2
    invoke-static {p1, p2}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    .line 519
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    instance-of v1, v1, Lcom/android/browser/InstantSearchEngine;

    if-eqz v1, :cond_3

    .line 520
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    check-cast v1, Lcom/android/browser/InstantSearchEngine;

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, v2}, Lcom/android/browser/InstantSearchEngine;->setController(Lcom/android/browser/Controller;)V

    .line 523
    :cond_3
    return-void
.end method

.method private updateTabControlSettings()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setShouldShowErrorConsole(Z)V

    .line 851
    return-void

    .line 849
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;
    .locals 3
    .parameter "s"

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserSettings$Observer;

    .line 759
    .local v1, old:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v1, :cond_0

    .line 760
    invoke-super {p0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 762
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserSettings$Observer;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserSettings$Observer;-><init>(Landroid/webkit/WebSettings;)V

    .line 763
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 765
    return-object v0
.end method

.method public asyncLoadFromDb(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 402
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mLoadFromDbComplete:Z

    .line 408
    new-instance v0, Lcom/android/browser/BrowserSettings$LoadFromDbTask;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/BrowserSettings$LoadFromDbTask;-><init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings$LoadFromDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method

.method clearCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 812
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 813
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 815
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 816
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 819
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 822
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 823
    return-void
.end method

.method clearDatabases(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 854
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 855
    return-void
.end method

.method clearFormData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 832
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 833
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 835
    .local v0, currentTopView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 839
    .end local v0           #currentTopView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearHistory(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 827
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 828
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 829
    return-void
.end method

.method clearLocationAccess(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 858
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 859
    return-void
.end method

.method clearPasswords(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 842
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 843
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 844
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 845
    return-void
.end method

.method public deleteObserver(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserSettings$Observer;

    .line 774
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v0, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 778
    :cond_0
    return-void
.end method

.method disableAutoFill(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 744
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->autoFillEnabled:Z

    .line 745
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 746
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autofill_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 747
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 748
    return-void
.end method

.method public getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    return-object v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "content://com.android.browser.home/"

    .line 633
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getJsFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    return-object v0
.end method

.method getRlzValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mRlzValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->hardwareAccelerated:Z

    return v0
.end method

.method public isNavDump()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "p"
    .parameter "key"

    .prologue
    .line 981
    const-string v1, "enable_hardware_accel"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    const-string v1, "enable_hardware_accel"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->hardwareAccelerated:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->hardwareAccelerated:Z

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    const-string v1, "enable_visual_indicator"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 984
    const-string v1, "enable_visual_indicator"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showVisualIndicator:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showVisualIndicator:Z

    goto :goto_0

    .line 985
    :cond_2
    const-string v1, "user_agent"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 986
    const-string v1, "user_agent"

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->uaDefaultValue:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 987
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    goto :goto_0

    .line 988
    :cond_3
    const-string v1, "enable_quick_controls"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 989
    const-string v1, "enable_quick_controls"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    goto :goto_0

    .line 990
    :cond_4
    const-string v1, "use_most_visited_homepage"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 991
    const-string v1, "use_most_visited_homepage"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    goto :goto_0

    .line 992
    :cond_5
    const-string v1, "use_instant_search"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 993
    const-string v1, "use_instant_search"

    iget-boolean v2, p0, Lcom/android/browser/BrowserSettings;->useInstant:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->useInstant:Z

    .line 994
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "google"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 995
    :cond_6
    const-string v1, "search_engine"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    const-string v1, "search_engine"

    const-string v2, "google"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, searchEngineName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public openInBackground()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    return v0
.end method

.method resetDefaultPreferences(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x1

    .line 862
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 863
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 864
    .local v0, p:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 865
    const v1, 0x7f060004

    invoke-static {p1, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 866
    const v1, 0x7f060008

    invoke-static {p1, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 867
    const/high16 v1, 0x7f06

    invoke-static {p1, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 869
    invoke-static {p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v1}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 872
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/browser/BrowserSettings;->setActiveAutoFillProfileId(Landroid/content/Context;I)V

    .line 873
    return-void
.end method

.method public setAutoFillProfile(Landroid/content/Context;Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V
    .locals 4
    .parameter "ctx"
    .parameter "profile"
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 717
    if-eqz p2, :cond_1

    .line 718
    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getUniqueId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/BrowserSettings;->setActiveAutoFillProfileId(Landroid/content/Context;I)V

    .line 720
    new-instance v0, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;-><init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;Landroid/os/Message;)V

    new-array v1, v1, [Landroid/webkit/WebSettings$AutoFillProfile;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings$SaveProfileToDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 728
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/browser/BrowserSettings;->autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    .line 729
    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Lcom/android/browser/BrowserSettings$DeleteProfileFromDbTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/browser/BrowserSettings$DeleteProfileFromDbTask;-><init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;Landroid/os/Message;)V

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->autoFillProfile:Landroid/webkit/WebSettings$AutoFillProfile;

    invoke-virtual {v2}, Landroid/webkit/WebSettings$AutoFillProfile;->getUniqueId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings$DeleteProfileFromDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 725
    invoke-direct {p0, p1, v3}, Lcom/android/browser/BrowserSettings;->setActiveAutoFillProfileId(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method setController(Lcom/android/browser/Controller;)V
    .locals 2
    .parameter "ctrl"

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    .line 796
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    .line 798
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    instance-of v0, v0, Lcom/android/browser/InstantSearchEngine;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    check-cast v0, Lcom/android/browser/InstantSearchEngine;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/InstantSearchEngine;->setController(Lcom/android/browser/Controller;)V

    .line 801
    :cond_0
    return-void
.end method

.method public setHomePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 649
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 653
    iput-object p2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public showDebugSettings()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    return v0
.end method

.method public showSecurityWarnings()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    return v0
.end method

.method syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "ctx"
    .parameter "p"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 527
    const-string v4, "homepage"

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 530
    const-string v4, "use_instant_search"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->useInstant:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->useInstant:Z

    .line 531
    const-string v4, "search_engine"

    const-string v5, "google"

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, searchEngineName:Ljava/lang/String;
    invoke-direct {p0, p1, v2, v7}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 535
    const-string v4, "load_images"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 537
    const-string v4, "enable_javascript"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 539
    const-string v4, "plugin_state"

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 541
    const-string v4, "block_popup_windows"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    if-nez v5, :cond_2

    move v5, v8

    :goto_0
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v8

    :goto_1
    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 544
    const-string v4, "show_security_warnings"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 546
    const-string v4, "remember_passwords"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 548
    const-string v4, "save_formdata"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 550
    const-string v4, "autofill_enabled"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->autoFillEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->autoFillEnabled:Z

    .line 551
    const-string v4, "accept_cookies"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 553
    .local v0, accept_cookies:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 554
    const-string v4, "open_in_background"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 555
    const-string v4, "text_size"

    sget-object v5, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v5}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v4

    sput-object v4, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 557
    const-string v4, "default_zoom"

    sget-object v5, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v5}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v4

    sput-object v4, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    .line 559
    const-string v4, "autofit_pages"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 560
    const-string v4, "load_page"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 562
    iput-boolean v8, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 563
    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    if-eqz v4, :cond_4

    .line 564
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 568
    :goto_2
    const-string v4, "default_text_encoding"

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 572
    const-string v4, "debug_menu"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 575
    iget-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v4, :cond_0

    .line 576
    const-string v4, "small_screen"

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v5, v6, :cond_5

    move v5, v8

    :goto_3
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 579
    .local v3, small_screen:Z
    if-eqz v3, :cond_6

    .line 580
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 591
    :goto_4
    const-string v4, "wide_viewport"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 592
    const-string v4, "enable_tracing"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 593
    const-string v4, "enable_light_touch"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 594
    const-string v4, "enable_nav_dump"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 595
    const-string v4, "enable_visual_indicator"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->showVisualIndicator:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showVisualIndicator:Z

    .line 598
    .end local v3           #small_screen:Z
    :cond_0
    const-string v4, "enable_quick_controls"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    .line 599
    const-string v4, "use_most_visited_homepage"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    .line 600
    const-string v4, "user_agent"

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->uaDefaultValue:Ljava/lang/String;

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 603
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    const-string v4, "enable_hardware_accel"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->hardwareAccelerated:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->hardwareAccelerated:Z

    .line 610
    :cond_1
    const-string v4, "js_engine_flags"

    const-string v5, ""

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 617
    const-string v4, "javascript_console"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 620
    const-string v4, "enable_appcache"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 621
    const-string v4, "enable_database"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 622
    const-string v4, "enable_domstorage"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 623
    const-string v4, "enable_geolocation"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 624
    const-string v4, "enable_workers"

    iget-boolean v5, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 627
    return-void

    .end local v0           #accept_cookies:Z
    :cond_2
    move v5, v7

    .line 541
    goto/16 :goto_0

    :cond_3
    move v4, v7

    goto/16 :goto_1

    .line 566
    .restart local v0       #accept_cookies:Z
    :cond_4
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_2

    :cond_5
    move v5, v7

    .line 576
    goto/16 :goto_3

    .line 582
    .restart local v3       #small_screen:Z
    :cond_6
    const-string v4, "normal_layout"

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v5, v6, :cond_7

    move v5, v8

    :goto_5
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 584
    .local v1, normal_layout:Z
    if-eqz v1, :cond_8

    .line 585
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_4

    .end local v1           #normal_layout:Z
    :cond_7
    move v5, v7

    .line 582
    goto :goto_5

    .line 587
    .restart local v1       #normal_layout:Z
    :cond_8
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_4
.end method

.method public toggleDebugSettings(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 710
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 711
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 714
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update()V
    .locals 0

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->setChanged()V

    .line 808
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->notifyObservers()V

    .line 809
    return-void
.end method

.method updateRlzValues(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1008
    new-instance v0, Lcom/android/browser/BrowserSettings$RlzUpdateTask;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/BrowserSettings$RlzUpdateTask;-><init>(Lcom/android/browser/BrowserSettings;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings$RlzUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1009
    return-void
.end method

.method public useInstant()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useInstant:Z

    return v0
.end method

.method public useMostVisitedHomepage()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useMostVisitedHomepage:Z

    return v0
.end method

.method public useQuickControls()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->quickControls:Z

    return v0
.end method

.method public waitForLoadFromDbToComplete()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    monitor-enter v0

    .line 232
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mLoadFromDbComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 234
    :try_start_1
    sget-object v1, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    goto :goto_0

    .line 237
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
