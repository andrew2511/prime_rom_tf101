.class public Lcom/nuance/xt9/input/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/Settings$SeekBarCreator;
    }
.end annotation


# static fields
.field public static final ALPHA_INPUT_MODE_ABC:Ljava/lang/String; = "abc"

.field public static final ALPHA_INPUT_MODE_AMBIG:Ljava/lang/String; = "ambig"

.field public static final CHINESE_FUZZY_F_H:Ljava/lang/String; = "fuzzy_pinyin_f_h"

.field public static final CHINESE_FUZZY_N_L:Ljava/lang/String; = "fuzzy_pinyin_n_l"

.field public static final CHINESE_FUZZY_N_NG:Ljava/lang/String; = "fuzzy_pinyin_n_ng"

.field public static final CHINESE_FUZZY_R_L:Ljava/lang/String; = "fuzzy_pinyin_r_l"

.field public static final CHINESE_FUZZY_Z_ZH_C_CH_S_SH:Ljava/lang/String; = "fuzzy_pinyin_z_zh_c_ch_s_sh"

.field public static final CHINESE_HWR_MODE:Ljava/lang/String; = "chinese_hwr_mode"

.field public static final CHINESE_INPUT_MODE_BPMF:Ljava/lang/String; = "bpmf"

.field public static final CHINESE_INPUT_MODE_CANGJIE:Ljava/lang/String; = "cangjie"

.field public static final CHINESE_INPUT_MODE_PINYIN:Ljava/lang/String; = "pinyin"

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE:Ljava/lang/String; = "quick_cangjie"

.field public static final CHINESE_INPUT_MODE_STROKE:Ljava/lang/String; = "stroke"

.field public static final CHINESE_INPUT_MODE_TRACE:Ljava/lang/String; = "chinese_trace"

.field public static final COMMON_INPUT_MODE_ALPHA:Ljava/lang/String; = "alpha"

.field public static final HANDWRITING_INPUT_MODE:Ljava/lang/String; = "handwriting"

.field public static final HANDWRITING_LAYOUT:I = 0xbea

.field public static final KEYPAD_KEYBOARD_LAYOUT:I = 0x600

.field public static final LANGUAGE_MODEL_KEY:Ljava/lang/String; = "language_model"

.field public static final LANGUAGE_MODEL_SETTING_DEFAULT:Z = true

.field public static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field public static final PREF_AUTO_CORRECTION_MODE:Ljava/lang/String; = "auto_correction_mode"

.field public static final PREF_AUTO_PUNCTUATION:Ljava/lang/String; = "auto_punctuation"

.field public static final PREF_KEYBOARD_LAYOUTS:Ljava/lang/String; = "keyboard_layouts"

.field public static final PREF_NEXT_WORD_PREDICTION:Ljava/lang/String; = "next_word_prediction"

.field public static final PREF_RECAPTURE:Ljava/lang/String; = "recapture"

.field public static final PREF_SHOW_SELECTION_LIST:Ljava/lang/String; = "show_selection_list"

.field public static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field public static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final PREF_WORD_COMPLETION_POINT:Ljava/lang/String; = "word_completion_point"

.field public static final QWERTY_KEYBOARD_LAYOUT:I = 0x900

.field public static final REDUCED_QWERTY_KEYBOARD_LAYOUT:I = 0xa00

.field public static final SETTING_CURRENT_INPUT_MODE:Ljava/lang/String; = "current_input_mode"

.field public static final SETTING_CURRENT_LANGUAGE:Ljava/lang/String; = "current_language"

.field public static final SETTING_CURRENT_LOCALE:Ljava/lang/String; = "current_locale"

.field public static final SETTING_LANGUAGE_MODEL:Ljava/lang/String; = "bigram"

.field public static final TRACE_FILTER_DEFAULT:Ljava/lang/String; = "hi"

.field public static final TRACE_FILTER_HIGH:Ljava/lang/String; = "hi"

.field public static final TRACE_FILTER_KEY:Ljava/lang/String; = "trace_filter"

.field public static final TRACE_FILTER_LOW:Ljava/lang/String; = "low"


# instance fields
.field private mInputMethods:Lcom/nuance/xt9/input/InputMethods;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 469
    return-void
.end method

.method private buildAlphabeticPrefs(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->isAlpahbeticLanguagesEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v6, p0, Lcom/nuance/xt9/input/Settings;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, alphaLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 123
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 125
    .local v2, inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v4

    .line 127
    .local v4, inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    if-nez v4, :cond_3

    const/4 v6, 0x0

    move-object v3, v6

    .line 128
    .local v3, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :goto_1
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v5

    .line 133
    .local v5, keyboardLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 134
    invoke-direct {p0, p2, v3, v5}, Lcom/nuance/xt9/input/Settings;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    .line 137
    :cond_2
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v1

    .line 138
    .local v1, handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0, p2, v1}, Lcom/nuance/xt9/input/Settings;->createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    goto :goto_0

    .line 127
    .end local v1           #handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v3           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v5           #keyboardLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-object v3, v6

    goto :goto_1
.end method

.method private buildChinesePrefs(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "context"
    .parameter "root"

    .prologue
    .line 305
    iget-object v4, p0, Lcom/nuance/xt9/input/Settings;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    const/16 v5, 0xe1

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 306
    .local v1, inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->isHandwritingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 308
    .local v0, handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0, p2, v0}, Lcom/nuance/xt9/input/Settings;->createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    .line 312
    .end local v0           #handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->isMohuPinyinEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const-string v4, "pinyin"

    invoke-virtual {v1, v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    .line 314
    .local v3, pinyinInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, keyboardLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 316
    invoke-direct {p0, p2, v3, v2}, Lcom/nuance/xt9/input/Settings;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    .line 319
    .end local v2           #keyboardLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    .end local v3           #pinyinInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    return-void
.end method

.method private createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 7
    .parameter "root"
    .parameter "handwritingInputMode"

    .prologue
    .line 263
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 267
    .local v2, handwritingCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    const v5, 0x7f080043

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 270
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 276
    .local v3, punctuationCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 285
    .local v4, symbolCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 293
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 294
    .local v1, digitCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    return-void
.end method

.method private createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 3
    .parameter "parent"

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 356
    .local v0, autoRecognitionScreen:Landroid/preference/PreferenceScreen;
    const v2, 0x7f08004b

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 357
    const v2, 0x7f08004c

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 358
    new-instance v1, Lcom/nuance/xt9/input/Settings$SeekBarCreator;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/Settings$SeekBarCreator;-><init>(Lcom/nuance/xt9/input/Settings;)V

    .line 359
    .local v1, sbc:Lcom/nuance/xt9/input/Settings$SeekBarCreator;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 362
    return-object v0
.end method

.method private createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 6
    .parameter "root"
    .parameter "handwritingInputMode"

    .prologue
    .line 322
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, category:Landroid/preference/PreferenceCategory;
    const v4, 0x7f080041

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 324
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 327
    .local v2, punctuationCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 335
    .local v3, symbolCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 343
    .local v1, digitCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/Settings;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    return-void
.end method

.method private createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 2
    .parameter "mohuCategory"
    .parameter "inputMode"

    .prologue
    .line 437
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 439
    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 441
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 443
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 444
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_n_ng"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 445
    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 446
    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 448
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 450
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 451
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_n_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 452
    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 454
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 456
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 457
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_r_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 458
    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 460
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 462
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 463
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_f_h"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 464
    const v1, 0x7f080149

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 467
    return-void
.end method

.method private createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;
    .locals 9
    .parameter "root"
    .parameter "inputMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Layout;",
            ">;)",
            "Landroid/preference/PreferenceScreen;"
        }
    .end annotation

    .prologue
    .line 144
    .local p3, keyboardLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, category:Landroid/preference/PreferenceCategory;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 148
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v7

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080155

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 160
    .local v4, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->geEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 162
    iget-object v7, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mDisplayLayoutName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 151
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v7

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080156

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v7, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v7, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v8, "pinyin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 175
    .local v6, mohuCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08014b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-direct {p0, v6, p2}, Lcom/nuance/xt9/input/Settings;->createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    .line 180
    .end local v6           #mohuCategory:Landroid/preference/PreferenceCategory;
    :cond_3
    iget-object v7, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v7, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 183
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 184
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 188
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 189
    const v7, 0x7f080011

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 190
    const v7, 0x7f080012

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 191
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 195
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 196
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 197
    const v7, 0x7f080013

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 198
    const v7, 0x7f080014

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 199
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 203
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 204
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08004f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 208
    .local v5, list:Landroid/preference/ListPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 209
    const v7, 0x7f080021

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 210
    const v7, 0x7f080022

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 211
    const v7, 0x7f080023

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 212
    const/high16 v7, 0x7f07

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 213
    const v7, 0x7f070001

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 217
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionMode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    new-instance v5, Landroid/preference/ListPreference;

    .end local v5           #list:Landroid/preference/ListPreference;
    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 222
    .restart local v5       #list:Landroid/preference/ListPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 223
    const v7, 0x7f080027

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 224
    const v7, 0x7f080028

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 225
    const v7, 0x7f080029

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 226
    const v7, 0x7f070002

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 227
    const v7, 0x7f070003

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 231
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPoint()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 235
    iget-object v3, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 236
    .local v3, inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 237
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 238
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080050

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 242
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080052

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080053

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 250
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080054

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080055

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    .end local v3           #inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v5           #list:Landroid/preference/ListPreference;
    :cond_4
    return-object p1
.end method

.method public static getAutoCap(Landroid/content/SharedPreferences;Z)Z
    .locals 1
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    .line 371
    const-string v0, "auto_cap"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAutoPunctuation(Landroid/content/SharedPreferences;Z)Z
    .locals 1
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    .line 379
    const-string v0, "auto_punctuation"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFuzzyPairs(Landroid/content/SharedPreferences;I)I
    .locals 4
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    const/4 v3, 0x0

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, nFuzzy:I
    const-string v2, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 396
    .local v0, b:Z
    if-eqz v0, :cond_0

    .line 397
    or-int/lit8 v1, v1, 0x7

    .line 400
    :cond_0
    const-string v2, "fuzzy_pinyin_n_ng"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 401
    if-eqz v0, :cond_1

    .line 402
    or-int/lit16 v1, v1, 0x1c0

    .line 405
    :cond_1
    const-string v2, "fuzzy_pinyin_n_l"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 406
    if-eqz v0, :cond_2

    .line 407
    or-int/lit8 v1, v1, 0x8

    .line 408
    :cond_2
    const-string v2, "fuzzy_pinyin_r_l"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 409
    if-eqz v0, :cond_3

    .line 410
    or-int/lit8 v1, v1, 0x10

    .line 411
    :cond_3
    const-string v2, "fuzzy_pinyin_f_h"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 412
    if-eqz v0, :cond_4

    .line 413
    or-int/lit8 v1, v1, 0x20

    .line 414
    :cond_4
    return v1
.end method

.method public static getMultitapMode(Landroid/content/SharedPreferences;Z)Z
    .locals 1
    .parameter "sp"
    .parameter "defaultValue"

    .prologue
    .line 389
    const-string v0, "abc"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 367
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getTraceFilter(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "sp"

    .prologue
    .line 375
    const-string v0, "trace_filter"

    const-string v1, "hi"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getXT9EnabledSubtypes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    const-string v0, "com.nuance.xt9.input"

    .line 520
    .local v0, XT9_PACKAGE_NAME:Ljava/lang/String;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/nuance/xt9/input/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 521
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 523
    .local v1, enabledInputMethodList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 524
    .local v4, inputMethod:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.nuance.xt9.input"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 529
    .end local v4           #inputMethod:Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .parameter "sp"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 418
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    return-void
.end method

.method public static setInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .parameter "sp"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 424
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method public static setMultitapMode(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "sp"
    .parameter "on"

    .prologue
    .line 383
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 384
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "abc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    return-void
.end method

.method public static setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sp"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 430
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 433
    return-void
.end method


# virtual methods
.method isAlpahbeticLanguagesEnabled()Z
    .locals 6

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/nuance/xt9/input/Settings;->getXT9EnabledSubtypes()Ljava/util/List;

    move-result-object v3

    .line 489
    .local v3, subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 490
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v4, p0, Lcom/nuance/xt9/input/Settings;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 491
    .local v1, language:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    const/4 v4, 0x1

    .line 495
    .end local v1           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method isHandwritingEnabled()Z
    .locals 5

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/nuance/xt9/input/Settings;->getXT9EnabledSubtypes()Ljava/util/List;

    move-result-object v2

    .line 500
    .local v2, subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 501
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    const/4 v3, 0x1

    .line 505
    .end local v1           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isMohuPinyinEnabled()Z
    .locals 5

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/nuance/xt9/input/Settings;->getXT9EnabledSubtypes()Ljava/util/List;

    move-result-object v2

    .line 510
    .local v2, subtypeList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 511
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh_CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    const/4 v3, 0x1

    .line 515
    .end local v1           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/Settings;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/xt9/input/Settings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 98
    new-instance v0, Lcom/nuance/xt9/input/InputMethods;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/InputMethods;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/Settings;->mInputMethods:Lcom/nuance/xt9/input/InputMethods;

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/nuance/xt9/input/Settings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 106
    iget-object v0, p0, Lcom/nuance/xt9/input/Settings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p0, v0}, Lcom/nuance/xt9/input/Settings;->buildAlphabeticPrefs(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 107
    iget-object v0, p0, Lcom/nuance/xt9/input/Settings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p0, v0}, Lcom/nuance/xt9/input/Settings;->buildChinesePrefs(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 108
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/Settings;->addPreferencesFromResource(I)V

    .line 110
    return-void
.end method
