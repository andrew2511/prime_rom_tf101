.class public Lcom/android/inputmethod/latin/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private final mIme:Lcom/android/inputmethod/latin/LatinIME;

.field private final mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 42
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 43
    return-void
.end method

.method private constructLocales()V
    .locals 8

    .prologue
    .line 94
    iget-object v5, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 96
    .local v2, lang:Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_0

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v4, locale:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v4           #locale:Ljava/util/Locale;
    :cond_0
    const-string v6, ""

    goto :goto_1

    .line 100
    .end local v2           #lang:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 88
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 91
    return-void

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private nextLocaleIndex()I
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, size:I
    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    return v1
.end method

.method private prevLocaleIndex()I
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 137
    .local v0, size:I
    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 127
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Locale;

    move-object v0, p0

    goto :goto_0
.end method

.method public getLocaleCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNextInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 147
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->nextLocaleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Locale;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPrevInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 173
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->prevLocaleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Locale;

    move-object v0, p0

    goto :goto_0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public loadLocales(Landroid/content/SharedPreferences;)Z
    .locals 7
    .parameter "sp"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    const-string v3, "selected_languages"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, selectedLanguages:Ljava/lang/String;
    const-string v3, "input_language"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, currentLanguage:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadDefaults()V

    .line 59
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 83
    :goto_0
    return v3

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v5

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->constructLocales()V

    .line 71
    iput v4, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 72
    if-eqz v0, :cond_4

    .line 74
    iput v4, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 76
    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    iput v1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .end local v1           #i:I
    :cond_4
    move v3, v5

    .line 83
    goto :goto_0

    .line 75
    .restart local v1       #i:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public next()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->nextLocaleIndex()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 182
    return-void
.end method

.method public persist(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "prefs"

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "input_language"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 192
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->prevLocaleIndex()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 186
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mCurrentIndex:I

    .line 178
    return-void
.end method

.method public setSystemLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 156
    return-void
.end method
