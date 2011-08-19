.class public Lcom/nuance/xt9/input/InputSettings;
.super Landroid/preference/PreferenceActivity;
.source "InputSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/InputSettings$SeekBarCreator;
    }
.end annotation


# static fields
.field public static final INPUT_MODE_KEY:Ljava/lang/String; = "input_mode"

.field public static final LANGUAGE_ID_KEY:Ljava/lang/String; = "language_id"

.field public static final LOCALE_KEY:Ljava/lang/String; = "locale"


# instance fields
.field private mInputModeName:Ljava/lang/String;

.field private mLanguageID:I

.field private mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 443
    return-void
.end method

.method private createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 8
    .parameter "handwritingScreen"
    .parameter "handwritingInputMode"

    .prologue
    const v7, 0x7f03001a

    .line 339
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 340
    .local v2, handwritingCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    const v5, 0x7f080043

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 343
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 346
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 348
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, categoryPreference:Landroid/preference/PreferenceCategory;
    const v5, 0x7f080042

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 350
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 354
    .local v3, punctuationCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 363
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 367
    .local v4, symbolCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 375
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 378
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, digitCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 389
    return-object p1
.end method

.method private createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 3
    .parameter "parent"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 320
    .local v0, autoRecognitionScreen:Landroid/preference/PreferenceScreen;
    const v2, 0x7f08004b

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 322
    const v2, 0x7f08004c

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 324
    new-instance v1, Lcom/nuance/xt9/input/InputSettings$SeekBarCreator;

    invoke-direct {v1, p0}, Lcom/nuance/xt9/input/InputSettings$SeekBarCreator;-><init>(Lcom/nuance/xt9/input/InputSettings;)V

    .line 325
    .local v1, sbc:Lcom/nuance/xt9/input/InputSettings$SeekBarCreator;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 326
    const v2, 0x7f03001a

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 328
    return-object v0
.end method

.method private createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;
    .locals 6
    .parameter "handwritingScreen"
    .parameter "handwritingInputMode"

    .prologue
    const v5, 0x7f03001a

    .line 396
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    const v3, 0x7f080042

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 398
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 401
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 402
    .local v1, punctuationCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 411
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 414
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 415
    .local v2, symbolCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 423
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, digitCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getMixLetterAndDigitEnabledPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isMixLetterAndDigitEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 435
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 438
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputSettings;->createAutoRecognitionLayoutsScreen(Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 440
    return-object p1
.end method

.method private createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 3
    .parameter "mohuCategory"
    .parameter "inputMode"

    .prologue
    const v2, 0x7f03001a

    .line 282
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_z_zh_c_ch_s_sh"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 284
    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 285
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 289
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_n_ng"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 290
    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 291
    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 292
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 296
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_n_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 297
    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 298
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 299
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 302
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_r_l"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 303
    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 304
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 308
    .restart local v0       #checkBox:Landroid/preference/CheckBoxPreference;
    const-string v1, "fuzzy_pinyin_f_h"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 309
    const v1, 0x7f080149

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 310
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    return-void
.end method

.method private createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;
    .locals 11
    .parameter "keyboardScreen"
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
    .local p3, keyboardLayouts:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    const v10, 0x7f03001a

    .line 153
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v8

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080155

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 167
    .local v4, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->geEnabledPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 169
    iget-object v8, v4, Lcom/nuance/xt9/input/InputMethods$Layout;->mDisplayLayoutName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 158
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_0
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v8

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080156

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v8, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v8, v8, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v9, "pinyin"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 179
    new-instance v7, Landroid/preference/PreferenceCategory;

    invoke-direct {v7, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 180
    .local v7, mohuCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08014b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-direct {p0, v7, p2}, Lcom/nuance/xt9/input/InputSettings;->createChineseSimplifiedMohuPiny(Landroid/preference/PreferenceCategory;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    .line 276
    .end local v7           #mohuCategory:Landroid/preference/PreferenceCategory;
    :cond_3
    :goto_2
    return-object p1

    .line 184
    :cond_4
    iget-object v8, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    iget v8, v8, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v8}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 187
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 188
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 192
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 193
    const v8, 0x7f080011

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 194
    const v8, 0x7f080012

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 195
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isRecaptureEnabled()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 200
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getNextWordPredictionPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 201
    const v8, 0x7f080013

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 202
    const v8, 0x7f080014

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 203
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isNextWordPredictionEnabled()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 205
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 208
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 212
    .local v5, list:Landroid/preference/ListPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 213
    const v8, 0x7f080021

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 214
    const v8, 0x7f080022

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 215
    const v8, 0x7f080023

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 216
    const/high16 v8, 0x7f07

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 217
    const v8, 0x7f070001

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 221
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getAutoCorrectionMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 223
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    new-instance v5, Landroid/preference/ListPreference;

    .end local v5           #list:Landroid/preference/ListPreference;
    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 226
    .restart local v5       #list:Landroid/preference/ListPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 227
    const v8, 0x7f080027

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 228
    const v8, 0x7f080028

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 229
    const v8, 0x7f080029

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 230
    const v8, 0x7f070002

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 231
    const v8, 0x7f070003

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 235
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getWordCompletionPoint()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v5, v10}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    .line 237
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    new-instance v6, Lcom/nuance/xt9/input/InputMethods;

    invoke-direct {v6, p0}, Lcom/nuance/xt9/input/InputMethods;-><init>(Landroid/content/Context;)V

    .line 242
    .local v6, methods:Lcom/nuance/xt9/input/InputMethods;
    iget-object v8, p0, Lcom/nuance/xt9/input/InputSettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v3

    .line 245
    .local v3, inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-nez v3, :cond_5

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/nuance/xt9/input/InputSettings;->mLanguageID:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in our available input languages"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 252
    :cond_5
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    new-instance v0, Landroid/preference/PreferenceCategory;

    .end local v0           #category:Landroid/preference/PreferenceCategory;
    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 255
    .restart local v0       #category:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 259
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceEnabled()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    new-instance v1, Landroid/preference/CheckBoxPreference;

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isTraceAutoAcceptEnabled()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v11, 0x7f050029

    invoke-virtual {p0, v11}, Lcom/nuance/xt9/input/InputSettings;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 46
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "language_id"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/nuance/xt9/input/InputSettings;->mLanguageID:I

    .line 47
    const-string v11, "input_mode"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/xt9/input/InputSettings;->mInputModeName:Ljava/lang/String;

    .line 51
    const-string v11, "locale"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/xt9/input/InputSettings;->mLocale:Ljava/lang/String;

    .line 54
    iget v11, p0, Lcom/nuance/xt9/input/InputSettings;->mLanguageID:I

    if-nez v11, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "We\'re expecting a language ID but we don\'t get it."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v11, p0, Lcom/nuance/xt9/input/InputSettings;->mInputModeName:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "We\'re expecting a input mode but we don\'t get it."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    new-instance v9, Lcom/nuance/xt9/input/InputMethods;

    invoke-direct {v9, p0}, Lcom/nuance/xt9/input/InputMethods;-><init>(Landroid/content/Context;)V

    .line 67
    .local v9, methods:Lcom/nuance/xt9/input/InputMethods;
    iget-object v11, p0, Lcom/nuance/xt9/input/InputSettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v3

    .line 70
    .local v3, inputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-nez v3, :cond_3

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/nuance/xt9/input/InputSettings;->mLanguageID:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in our available input languages"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    :goto_0
    return-void

    .line 77
    :cond_3
    iget-object v11, p0, Lcom/nuance/xt9/input/InputSettings;->mInputModeName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/nuance/xt9/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    .line 78
    .local v4, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-nez v4, :cond_4

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/nuance/xt9/input/InputSettings;->mInputModeName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in our available input methods"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 85
    .local v10, root:Landroid/preference/PreferenceScreen;
    iget-object v11, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget v11, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v11}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 91
    const-string v11, "keyboard_input_screen_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 92
    .local v6, keyInput:Landroid/preference/Preference;
    if-eqz v6, :cond_5

    .line 93
    invoke-virtual {v10, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    :cond_5
    const-string v11, "handwriting_input_screen_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 96
    .local v2, hwrInput:Landroid/preference/Preference;
    if-eqz v2, :cond_6

    .line 97
    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    :cond_6
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 102
    iget-object v11, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/nuance/xt9/input/InputSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 105
    .local v0, handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    if-eqz v0, :cond_2

    .line 106
    invoke-direct {p0, v10, v0}, Lcom/nuance/xt9/input/InputSettings;->createChineseHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 110
    .end local v0           #handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_7
    iget-object v11, v4, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/nuance/xt9/input/InputSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v7

    .line 112
    .local v7, keyboardLayous:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 113
    invoke-direct {p0, v10, v4, v7}, Lcom/nuance/xt9/input/InputSettings;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 123
    .end local v2           #hwrInput:Landroid/preference/Preference;
    .end local v6           #keyInput:Landroid/preference/Preference;
    .end local v7           #keyboardLayous:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    :cond_8
    iget-object v11, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/nuance/xt9/input/InputSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const-string v11, "keyboard_input_screen_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 127
    .local v8, keyboardScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v7

    .line 128
    .restart local v7       #keyboardLayous:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Layout;>;"
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 129
    invoke-direct {p0, v8, v4, v7}, Lcom/nuance/xt9/input/InputSettings;->createKeyboardLayoutsScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;Ljava/util/List;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 132
    :cond_9
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 133
    .restart local v0       #handwritingInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    const-string v11, "handwriting_input_screen_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 135
    .local v1, handwritingScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_a

    .line 136
    invoke-direct {p0, v1, v0}, Lcom/nuance/xt9/input/InputSettings;->createAlphaHandwritingScreen(Landroid/preference/PreferenceScreen;Lcom/nuance/xt9/input/InputMethods$InputMode;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 139
    :cond_a
    invoke-virtual {v10, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 147
    return-void
.end method
