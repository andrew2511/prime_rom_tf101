.class public Lcom/google/android/voicesearch/LanguagePrefManager;
.super Ljava/lang/Object;
.source "LanguagePrefManager.java"


# static fields
.field static final DEFAULT_CHANGE_REASON_DEVICE_LOCALE_CHANGED:I = 0x1

.field static final DEFAULT_CHANGE_REASON_NEW_ALTERNATE_BACKOFF_LANGUAGE:I = 0x2

.field static final DEFAULT_CHANGE_REASON_NEW_SUPPORTED_LANGUAGE:I = 0x0

.field static final DEFAULT_CHANGE_REASON_NONE:I = -0x1

.field static final DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "default"

.field static final LAST_RESORT_DEFAULT_LANGUAGE:Ljava/lang/String; = "en-001"

.field static final PREF_KEY_ACKNOWLEDGED_UNSUPPORTED_DEVICE_LANGUAGE:Ljava/lang/String; = "acknowledged_unsupported_device_language"

.field static final PREF_KEY_ACTUAL_LANGUAGE_SETTING:Ljava/lang/String; = "actual_language_setting"

.field static final PREF_KEY_ALTERNATE_BACKOFF_LANGUAGES:Ljava/lang/String; = "alternate_backoff_languages"

.field static final PREF_KEY_DEFAULT_LANGUAGE_CHANGED:Ljava/lang/String; = "default_language_changed"

.field static final PREF_KEY_DEVICE_LANGUAGE_NEWLY_SUPPORTED:Ljava/lang/String; = "device_language_newly_supported"

.field static final PREF_KEY_LAST_KNOWN_DEVICE_LANGUAGE:Ljava/lang/String; = "last_known_device_language"

.field static final PREF_KEY_SUPPORTED_LANGUAGE_CODES:Ljava/lang/String; = "supported_languages"

.field private static final TAG:Ljava/lang/String; = "LanguagePrefManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLanguageToNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStringToListCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportedActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    .line 162
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 163
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 164
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    .line 165
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 153
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->buildLanguageCodeToNameMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    .line 156
    const-string v0, "language"

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->normalizeLanguageSetting(Ljava/lang/String;)V

    .line 157
    const-string v0, "actual_language_setting"

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->normalizeLanguageSetting(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private buildLanguageCodeToNameMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 698
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 699
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 701
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 702
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "count of languageCodes and languageNames does not match"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 706
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_1
    return-object v0
.end method

.method public static getHlParameter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 781
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 786
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getStoredAlternateBackoffLanguageCodes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "alternate_backoff_languages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAlternateBackoffLanguages()Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 686
    const-string v2, "alternate_backoff_languages"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 689
    :cond_0
    return-object v0
.end method

.method private getStoredSupportedLanguageCodes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "supported_languages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedLanguages()Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 669
    const-string v2, "supported_languages"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 670
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 672
    :cond_0
    return-object v0
.end method

.method private languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 736
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 737
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 738
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 739
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed language mapping ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 744
    :cond_1
    return-object v0
.end method

.method private languagesStringAsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    :cond_0
    :goto_0
    return-object v0

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 722
    if-nez v0, :cond_0

    .line 723
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private normalizeLanguageSetting(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "supported_languages"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    const-string v1, "default"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method private parseActions(Ljava/lang/String;)[I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 317
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    array-length v1, v0

    new-array v1, v1, [I

    .line 320
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 321
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 322
    aget v3, v1, v2

    if-gez v3, :cond_0

    .line 323
    const-string v0, "LanguagePrefManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem in supported actions list ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 331
    :goto_1
    return-object v0

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 327
    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    const-string v1, "LanguagePrefManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem in supported actions list ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 331
    goto :goto_1
.end method


# virtual methods
.method public acknowledgeUnsupportedDeviceLanguage()V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 592
    const-string v1, "acknowledged_unsupported_device_language"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 594
    return-void
.end method

.method public deviceLanguageIsSupported()Z
    .locals 2

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getDefaultLanguageCodeChoice(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 629
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 642
    :goto_0
    return-object v0

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredAlternateBackoffLanguageCodes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 637
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 639
    if-eqz p0, :cond_1

    move-object v0, p0

    .line 640
    goto :goto_0

    .line 642
    :cond_1
    const-string v0, "en-001"

    goto :goto_0
.end method

.method protected getDefaultLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 777
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDefaultLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLanguageCodeChoice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLanguageCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 604
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en-001"

    goto :goto_0
.end method

.method public getLanguageChoices()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 473
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 481
    const-string v2, "default"

    aput-object v2, v1, v3

    move v2, v3

    .line 484
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 485
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v3

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :cond_0
    return-object v1
.end method

.method public getLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 517
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    if-nez v0, :cond_1

    .line 519
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLanguageCodeChoice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    if-nez v0, :cond_0

    move-object v0, v1

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09073c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_1
    :goto_0
    return-object v0

    .line 530
    :cond_2
    const-string v0, "LanguagePrefManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no display name available for supported voice search language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 532
    goto :goto_0
.end method

.method public getLanguageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 502
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 503
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 504
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :cond_0
    return-object v0
.end method

.method public getLanguageSetting()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getLanguageOverride()Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "actual_language_setting"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedActions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSupportedActions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateSupportedActions(Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSupportedActions:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleDeviceLanguageChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 552
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "last_known_device_language"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v2

    .line 560
    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLanguageCodeChoice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLanguageCodeChoice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    const-string v1, "default_language_changed"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-virtual {p0, v0, v4}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    :cond_0
    const-string v1, "last_known_device_language"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 570
    const-string v1, "acknowledged_unsupported_device_language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 571
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 572
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->buildLanguageCodeToNameMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    .line 573
    return-void
.end method

.method public handleGservicesChange(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 751
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 753
    const-string v1, "supported_languages"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedLanguages()Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 758
    invoke-virtual {p0, v1, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateSupportedLanguages(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_0
    const-string v1, "alternate_backoff_languages"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getAlternateBackoffLanguages()Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 766
    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateAlternateBackoffLanguages(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedActions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateSupportedActions(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public hasAcknowledgedUnsupportedDeviceLanguage()Z
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "acknowledged_unsupported_device_language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public languageSettingHasVoiceActions()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedActions()Ljava/util/HashMap;

    move-result-object v1

    .line 371
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v3

    .line 380
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    .line 377
    goto :goto_0

    .line 380
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public languageSettingIsDefault()Z
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "language"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected parseSupportedActions(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 300
    array-length v2, v1

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 301
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 306
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 307
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->parseActions(Ljava/lang/String;)[I

    move-result-object v5

    .line 308
    if-eqz v5, :cond_0

    .line 309
    aget-object v4, v4, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_1
    return-object v0
.end method

.method public resetDefaultLanguageChange()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 581
    const-string v1, "default_language_changed"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 584
    return-void
.end method

.method updateAlternateBackoffLanguages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 253
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 261
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "default_language_changed"

    const/4 v1, 0x2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    :cond_0
    const-string v0, "alternate_backoff_languages"

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 280
    return-void
.end method

.method updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 438
    const-string v1, "last_known_device_language"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    if-nez p2, :cond_2

    .line 445
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    :goto_0
    if-nez v0, :cond_0

    .line 448
    const-string v0, "default"

    .line 453
    :cond_0
    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLanguageCodeChoice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    :cond_1
    const-string v1, "actual_language_setting"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public updateLanguageSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 420
    return-object v1
.end method

.method updateSupportedActions(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedActions()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->parseSupportedActions(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSupportedActions:Ljava/util/HashMap;

    .line 294
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method updateSupportedLanguages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 221
    const-string v3, "supported_languages"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 224
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "default_language_changed"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    invoke-static {v2}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 240
    :cond_0
    return-void
.end method
