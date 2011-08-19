.class public Lcom/asus/weather/WeatherFragmentSettings;
.super Landroid/preference/PreferenceActivity;
.source "WeatherFragmentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;,
        Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI_CITYFIND:Landroid/net/Uri;

.field public static freq_menu:[Ljava/lang/String;

.field public static strCityinfo:[Ljava/lang/String;

.field public static unit_menu:[Ljava/lang/String;


# instance fields
.field public ChinaSku:Z

.field accuIcon:Landroid/widget/ImageView;

.field public editor:Landroid/content/SharedPreferences$Editor;

.field private isWeatherInfoAvailable:Z

.field private mButtonPref:Lcom/asus/weather/ButtonPreference;

.field public mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

.field private mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

.field private mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

.field private mSaveBtn:Landroid/widget/Button;

.field private mTempUnit:Landroid/preference/ListPreference;

.field private mUpdateFreq:Landroid/preference/ListPreference;

.field private preEdt:Landroid/content/SharedPreferences$Editor;

.field private pref:Landroid/content/SharedPreferences;

.field public rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field public settings:Landroid/content/SharedPreferences;

.field showProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://com.asus.weather.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.asus.weather.provider/cityfind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI_CITYFIND:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    .line 63
    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    .line 65
    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    .line 274
    new-instance v0, Lcom/asus/weather/WeatherFragmentSettings$2;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherFragmentSettings$2;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/weather/WeatherFragmentSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->saveRadioState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/asus/weather/WeatherFragmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setSaveBtn()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/weather/WeatherFragmentSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->saveFreqState()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/asus/weather/WeatherFragmentSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->saveUnitState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/weather/WeatherFragmentSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/asus/weather/WeatherFragmentSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->haveInternet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/asus/weather/WeatherFragmentSettings;)Lcom/asus/weather/ButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/weather/WeatherFragmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setUpdateTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/weather/WeatherFragmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setLastFoundCity()V

    return-void
.end method

.method private haveInternet()Z
    .locals 6

    .prologue
    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, result:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/asus/weather/WeatherFragmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 702
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 703
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 705
    :cond_0
    const/4 v2, 0x0

    .line 719
    :goto_0
    const-string v3, "[WeatherFragmentSettings]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnyNetwork:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v2

    .line 709
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 711
    const/4 v2, 0x0

    goto :goto_0

    .line 715
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isChinaSku()Z
    .locals 3

    .prologue
    .line 146
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, SKU:Ljava/lang/String;
    const-string v1, "CN_epad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveFreqState()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 379
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "updatefreq"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, freq:I
    if-eq v0, v3, :cond_0

    .line 382
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v2, "FreqSpinner"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    :cond_0
    return v0
.end method

.method private saveRadioState()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 359
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "auto_radio"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 360
    .local v1, value:Z
    const/4 v0, -0x1

    .line 362
    .local v0, ret:I
    if-eqz v1, :cond_0

    .line 364
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "Radiochoice"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 365
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "Radiochoice"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveUnitState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "tempunit"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, unit:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v2, "UnitSpinner"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    :cond_0
    return-object v0
.end method

.method private setFreqList()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x2

    .line 456
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v3, "FreqSpinner"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 457
    .local v0, update:I
    const/4 v1, -0x1

    .line 458
    .local v1, updateIdx:I
    sget-object v2, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v3, 0x6

    invoke-virtual {p0, v0, v2, v3}, Lcom/asus/weather/WeatherFragmentSettings;->findFreqIndex(I[II)I

    move-result v1

    .line 460
    if-eq v1, v4, :cond_0

    .line 462
    const-string v2, "updatefreq"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void

    .line 466
    :cond_0
    const-string v2, "updatefreq"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    aget-object v3, v3, v5

    sget-object v4, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "FreqSpinner"

    sget-object v4, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    aget v4, v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 468
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setLastFoundCity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 402
    sget-object v0, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/asus/weather/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "summary"
    .parameter "value"

    .prologue
    .line 474
    const-string v0, "updatefreq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 480
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const-string v0, "tempunit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 488
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setManualText()V
    .locals 6

    .prologue
    .line 494
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_city"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_country"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_adminarea"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_location"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_city"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 498
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_country"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 499
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_adminarea"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 500
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_location"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 507
    :cond_0
    return-void

    .line 504
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 505
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setSaveBtn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    sget-object v0, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setUnitList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 438
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v3, "UnitSpinner"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, unitStr:Ljava/lang/String;
    const/4 v0, -0x1

    .line 440
    .local v0, unitIdx:I
    sget-object v2, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/asus/weather/WeatherFragmentSettings;->findUnitIndex(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 442
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 444
    const-string v2, "tempunit"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3, v1}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_0
    const-string v2, "tempunit"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    aget-object v3, v3, v5

    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "UnitSpinner"

    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setUpdateTime()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    .local v0, content:Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 418
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 420
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "weatherCursor is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    const-string v1, "lastupdate"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 424
    .local v7, strlastupdate:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 426
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, v7}, Lcom/asus/weather/ButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 428
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    .end local v7           #strlastupdate:Ljava/lang/String;
    :goto_0
    return-void

    .line 432
    :cond_1
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "weatherCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    .line 745
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->dismiss()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 750
    :cond_0
    return-void
.end method

.method public checkWeatherInfo()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "checkWeatherInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v7, 0x0

    .line 231
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, content:Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 234
    if-eqz v7, :cond_0

    .line 236
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 237
    const-string v1, "cityname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, cityname:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    .line 241
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "checkWeatherInfo(): isWeatherInfoAvailable = false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v6           #cityname:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v6       #cityname:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    .line 246
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "checkWeatherInfo(): isWeatherInfoAvailable = true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clickAutoRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 659
    invoke-virtual {p0, v2}, Lcom/asus/weather/WeatherFragmentSettings;->setRadioStates(I)V

    .line 660
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_radio"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 662
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "manual_radio"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 663
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    return-void
.end method

.method public clickManualRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 668
    invoke-virtual {p0, v3}, Lcom/asus/weather/WeatherFragmentSettings;->setRadioStates(I)V

    .line 669
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setSaveBtn()V

    .line 670
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_radio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 671
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "manual_radio"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 672
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 673
    return-void
.end method

.method public clickRefreshBtn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 637
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->haveInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->showDialog()V

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CONTENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    const-string v1, "CHECKNETWORK"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, v2}, Lcom/asus/weather/ButtonPreference;->setEnabled(Z)V

    .line 647
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, v2}, Lcom/asus/weather/ButtonPreference;->setButton(Z)V

    .line 655
    :goto_0
    return-void

    .line 651
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public findFreqIndex(I[II)I
    .locals 3
    .parameter "freq"
    .parameter "candiFreq"
    .parameter "num"

    .prologue
    .line 586
    const/4 v1, -0x1

    .line 587
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 589
    aget v2, p2, v0

    if-ne p1, v2, :cond_1

    .line 591
    move v1, v0

    .line 595
    :cond_0
    return v1

    .line 587
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findUnitIndex(Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 3
    .parameter "unit"
    .parameter "candiUnit"
    .parameter "num"

    .prologue
    .line 600
    const/4 v1, -0x1

    .line 601
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 603
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    move v1, v0

    .line 609
    :cond_0
    return v1

    .line 601
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 125
    iget-boolean v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    if-nez v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->haveInternet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, intentUpdate:Landroid/content/Intent;
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v2, "CHECKNETWORK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    const-string v2, "[WeatherFragmentSettings]"

    const-string v3, "sendBroadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1           #intentUpdate:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "CONTENT"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v1, "WeatherPref"

    invoke-virtual {p0, v1, v2}, Lcom/asus/weather/WeatherFragmentSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    .line 160
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 161
    const-string v1, "PREF_WEATHER"

    invoke-virtual {p0, v1, v2}, Lcom/asus/weather/WeatherFragmentSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    .line 162
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    .line 163
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    .line 164
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->accuIcon:Landroid/widget/ImageView;

    .line 165
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    .line 168
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    .line 169
    iget-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-nez v1, :cond_0

    .line 171
    const-string v1, "auto_radio"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/RadioPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    .line 172
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v1, p0}, Lcom/asus/weather/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    :cond_0
    const-string v1, "manual_radio"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/RadioPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    .line 175
    const-string v1, "refresh_btn"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/ButtonPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    .line 176
    const-string v1, "updatefreq"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    .line 177
    const-string v1, "tempunit"

    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherFragmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    .line 180
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v1, p0}, Lcom/asus/weather/RadioPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, p0}, Lcom/asus/weather/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    new-instance v1, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    invoke-virtual {p0, v1, v0}, Lcom/asus/weather/WeatherFragmentSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setLayout_for_ChinaSku()V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setInitialStates()V

    .line 196
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->checkWeatherInfo()V

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->requestWindowFeature(I)Z

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lcom/asus/weather/WeatherFragmentSettings;->isChinaSku()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    .line 75
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->addPreferencesFromResource(I)V

    .line 83
    :goto_0
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->initUI()V

    .line 87
    return-void

    .line 81
    :cond_0
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->dismiss()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 109
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, -0x1

    .line 551
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, key:Ljava/lang/String;
    const-string v4, "updatefreq"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 556
    .local v3, value:I
    iget-object v4, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 557
    iget-object v4, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    const/4 v1, -0x1

    .line 560
    .local v1, index:I
    sget-object v4, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v5, 0x6

    invoke-virtual {p0, v3, v4, v5}, Lcom/asus/weather/WeatherFragmentSettings;->findFreqIndex(I[II)I

    move-result v1

    .line 562
    if-eq v1, v6, :cond_0

    .line 564
    iget-object v4, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    sget-object v5, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    .end local v1           #index:I
    .end local v3           #value:I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 567
    .restart local p2
    :cond_1
    const-string v4, "tempunit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    iget-object v5, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 570
    iget-object v4, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 572
    const/4 v1, -0x1

    .line 573
    .restart local v1       #index:I
    check-cast p2, Ljava/lang/String;

    .end local p2
    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {p0, p2, v4, v5}, Lcom/asus/weather/WeatherFragmentSettings;->findUnitIndex(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 575
    if-eq v1, v6, :cond_0

    .line 577
    iget-object v4, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    sget-object v5, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 616
    const-string v1, "refresh_btn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickRefreshBtn()V

    .line 631
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 620
    :cond_1
    const-string v1, "auto_radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickAutoRadio()V

    goto :goto_0

    .line 624
    :cond_2
    const-string v1, "manual_radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickManualRadio()V

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherFragmentSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 93
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->showDialog()V

    .line 97
    :cond_0
    return-void
.end method

.method public setIcon()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->accuIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/asus/weather/WeatherFragmentSettings$1;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherFragmentSettings$1;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public setInitialStates()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setIcon()V

    .line 254
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setRefreshButton()V

    .line 255
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setSaveBtnListener()V

    .line 256
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setManualText()V

    .line 257
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setRadioBtn()V

    .line 258
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setLastFoundCity()V

    .line 259
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setUpdateTime()V

    .line 260
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setFreqList()V

    .line 261
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setUnitList()V

    .line 262
    return-void
.end method

.method public setLayout_for_ChinaSku()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Radiochoice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    return-void
.end method

.method public setRadioBtn()V
    .locals 4

    .prologue
    .line 511
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Radiochoice"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 513
    .local v0, radio:I
    packed-switch v0, :pswitch_data_0

    .line 529
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickAutoRadio()V

    .line 530
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v2, "Radiochoice"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 531
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    :goto_0
    return-void

    .line 517
    :pswitch_0
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickAutoRadio()V

    goto :goto_0

    .line 523
    :pswitch_1
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickManualRadio()V

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRadioStates(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 677
    packed-switch p1, :pswitch_data_0

    .line 696
    :goto_0
    return-void

    .line 681
    :pswitch_0
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    .line 682
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRefreshButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/ButtonPreference;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/ButtonPreference;->setButton(Z)V

    .line 268
    return-void
.end method

.method public setSaveBtnListener()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 729
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v1, "ProgressDialogTag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 730
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    if-nez v1, :cond_0

    .line 733
    new-instance v1, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 735
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ProgressDialogTag"

    invoke-virtual {v1, v2, v3}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 737
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    .line 739
    :cond_0
    return-void
.end method
