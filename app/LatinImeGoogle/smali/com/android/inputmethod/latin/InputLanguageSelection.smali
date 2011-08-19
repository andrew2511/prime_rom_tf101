.class public Lcom/android/inputmethod/latin/InputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "InputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;
    }
.end annotation


# static fields
.field private static final BLACKLIST_LANGUAGES:[Ljava/lang/String;


# instance fields
.field private mAvailableLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedLanguages:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "el"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/InputLanguageSelection;->BLACKLIST_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method private arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 207
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 209
    :goto_1
    return v1

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private get5Code(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

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

    return-object v1

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

.method private hasDictionary(Ljava/util/Locale;)Z
    .locals 10
    .parameter "locale"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 104
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 105
    .local v5, saveLocale:Ljava/util/Locale;
    const/4 v2, 0x0

    .line 106
    .local v2, haveDictionary:Z
    iput-object p1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 107
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 109
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v3

    .line 110
    .local v3, mainDicResId:I
    const/4 v6, 0x1

    invoke-static {p0, v3, v6}, Lcom/android/inputmethod/latin/BinaryDictionary;->initDictionary(Landroid/content/Context;II)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v0

    .line 114
    .local v0, bd:Lcom/android/inputmethod/latin/BinaryDictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0xc350

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 118
    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 119
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 120
    return v2
.end method

.method private isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z
    .locals 3
    .parameter "locale"
    .parameter "list"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 96
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 98
    :goto_1
    return v2

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getUniqueLocales()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, locales:[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 157
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v15, uniqueLocales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;>;"
    array-length v12, v11

    .line 160
    .local v12, origSize:I
    new-array v13, v12, [Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    .line 161
    .local v13, preprocess:[Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;
    const/4 v5, 0x0

    .line 162
    .local v5, finalSize:I
    const/4 v7, 0x0

    .local v7, i:I
    move v6, v5

    .end local v5           #finalSize:I
    .local v6, finalSize:I
    :goto_0
    if-ge v7, v12, :cond_4

    .line 163
    aget-object v14, v11, v7

    .line 164
    .local v14, s:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    .line 165
    .local v10, len:I
    const/16 v16, 0x5

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 166
    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, language:Ljava/lang/String;
    const/16 v16, 0x3

    const/16 v17, 0x5

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, country:Ljava/lang/String;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v9, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v8, l:Ljava/util/Locale;
    sget-object v16, Lcom/android/inputmethod/latin/InputLanguageSelection;->BLACKLIST_LANGUAGES:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/InputLanguageSelection;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    move v5, v6

    .line 162
    .end local v3           #country:Ljava/lang/String;
    .end local v6           #finalSize:I
    .end local v8           #l:Ljava/util/Locale;
    .end local v9           #language:Ljava/lang/String;
    .restart local v5       #finalSize:I
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    goto :goto_0

    .line 173
    .restart local v3       #country:Ljava/lang/String;
    .restart local v8       #l:Ljava/util/Locale;
    .restart local v9       #language:Ljava/lang/String;
    :cond_0
    if-nez v6, :cond_1

    .line 174
    add-int/lit8 v5, v6, 0x1

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    new-instance v16, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    const/16 v17, 0x1

    move-object v0, v8

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v16, v13, v6

    goto :goto_1

    .line 181
    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    :cond_1
    const/16 v16, 0x1

    sub-int v16, v6, v16

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 183
    const/16 v16, 0x1

    sub-int v16, v6, v16

    aget-object v16, v13, v16

    const/16 v17, 0x1

    sub-int v17, v6, v17

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->setLabel(Ljava/lang/String;)V

    .line 185
    add-int/lit8 v5, v6, 0x1

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    new-instance v16, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    const/16 v17, 0x0

    move-object v0, v8

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v16, v13, v6

    goto :goto_1

    .line 189
    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    :cond_2
    const-string v16, "zz_ZZ"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move v5, v6

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    goto :goto_1

    .line 192
    .end local v5           #finalSize:I
    .restart local v6       #finalSize:I
    :cond_3
    const/16 v16, 0x1

    move-object v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, displayName:Ljava/lang/String;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    new-instance v16, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v16, v13, v6

    goto/16 :goto_1

    .line 199
    .end local v3           #country:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #finalSize:I
    .end local v8           #l:Ljava/util/Locale;
    .end local v9           #language:Ljava/lang/String;
    .end local v10           #len:I
    .end local v14           #s:Ljava/lang/String;
    .restart local v6       #finalSize:I
    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_5

    .line 200
    aget-object v16, v13, v7

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 202
    :cond_5
    return-object v15

    .restart local v10       #len:I
    .restart local v14       #s:Ljava/lang/String;
    :cond_6
    move v5, v6

    .end local v6           #finalSize:I
    .restart local v5       #finalSize:I
    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v6, 0x7f05001a

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/InputLanguageSelection;->addPreferencesFromResource(I)V

    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    .line 76
    iget-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "selected_languages"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    .line 77
    iget-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, languageList:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 80
    .local v4, parent:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 81
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v5, pref:Landroid/preference/CheckBoxPreference;
    iget-object v6, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    iget-object v3, v6, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLocale:Ljava/util/Locale;

    .line 83
    .local v3, locale:Ljava/util/Locale;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0, v3, v2}, Lcom/android/inputmethod/latin/InputLanguageSelection;->isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, checked:Z
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/InputLanguageSelection;->hasDictionary(Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    const v6, 0x7f0c008f

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 89
    :cond_0
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #checked:Z
    .end local v3           #locale:Ljava/util/Locale;
    .end local v5           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 9

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 138
    const-string v0, ""

    .line 139
    .local v0, checkedLanguages:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 140
    .local v5, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 141
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 142
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 143
    .local v6, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    iget-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;

    iget-object v4, v7, Lcom/android/inputmethod/latin/InputLanguageSelection$Loc;->mLocale:Ljava/util/Locale;

    .line 145
    .local v4, locale:Ljava/util/Locale;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .end local v4           #locale:Ljava/util/Locale;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v6           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_2

    const/4 v0, 0x0

    .line 149
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 150
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "selected_languages"

    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-static {v2}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 132
    return-void
.end method
