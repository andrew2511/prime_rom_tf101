.class public Lcom/nuance/xt9/input/InputMethods$Language;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Language"
.end annotation


# static fields
.field public static final CHINESE_HONGKONG_LANGUAGEID:I = 0xe2

.field public static final CHINESE_SIMP_LANGUAGEID:I = 0xe1

.field public static final CHINESE_SINGAPORE_LANGUAGEID:I = 0xe3

.field public static final CHINESE_TRAD_LANGUAGEID:I = 0xe0

.field public static final ENGLISH_LANGUAGEID:I = 0x109

.field public static final JAPANESE_LANGUAGEID:I = 0x11

.field public static final KOREAN_LANGUAGEID:I = 0x12


# instance fields
.field public mBackKeyString:Ljava/lang/String;

.field public mDefaultAlphaLanguageId:I

.field private mDefaultEnabled:Z

.field public mDefaultInputMode:Ljava/lang/String;

.field public mDisplayLanguageName:Ljava/lang/String;

.field public mEnabledHardwareKeyboard:Z

.field private final mEnabledPrefKey:Ljava/lang/String;

.field private final mEnabledTrace:Z

.field private final mInputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsTraceFeatureSupport:Z

.field public mKCMFile:Ljava/lang/String;

.field public mKLFile:Ljava/lang/String;

.field public mLanguageId:I

.field public mLocale:Ljava/lang/String;

.field public mParent:Lcom/nuance/xt9/input/InputMethods;

.field public mSymboltableResId:I

.field public mSymboltableShiftResId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-boolean v4, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledHardwareKeyboard:Z

    .line 800
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    .line 821
    iput-object p2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    .line 822
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 823
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    .line 824
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 825
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    .line 826
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultEnabled:Z

    .line 828
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods;->access$300(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    .line 829
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledTrace:Z

    .line 832
    const/16 v2, 0x18

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mSymboltableResId:I

    .line 833
    const/16 v2, 0x19

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mSymboltableShiftResId:I

    .line 834
    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mBackKeyString:Ljava/lang/String;

    .line 839
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mKCMFile:Ljava/lang/String;

    .line 840
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mKCMFile:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mKCMFile:Ljava/lang/String;

    .line 842
    :cond_0
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mKLFile:Ljava/lang/String;

    .line 843
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mKLFile:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mKLFile:Ljava/lang/String;

    .line 846
    :cond_1
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    .line 847
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    .line 851
    :cond_2
    const/16 v2, 0x17

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultAlphaLanguageId:I

    .line 853
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods;->access$400(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    .line 860
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods;->access$500(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 861
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 862
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 864
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/InputMethods$Language;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputMethods$Language;->addInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getEnabledInputModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/xt9/input/InputMethods$Language;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledTrace:Z

    return v0
.end method

.method private addInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 3
    .parameter "inputMode"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicated input mode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for input method with language(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - IGNORED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods;->access$600(Lcom/nuance/xt9/input/InputMethods;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getEnabledInputModes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v2, enabledModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    iget v6, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 946
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    .line 947
    .local v3, hwrInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 949
    .local v0, alphaInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 950
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 954
    .local v5, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 955
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 961
    .end local v0           #alphaInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v3           #hwrInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v1

    .line 962
    .local v1, chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 963
    .restart local v5       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 964
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 969
    .end local v1           #chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_4
    return-object v2
.end method

.method public static isAlphabetic(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 753
    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCKJ(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 780
    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->isJapaneseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseLanguageId(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 765
    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseSimplified(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 757
    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseTraditional(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 761
    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapaneseLanguageId(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 772
    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreanLanguageId(I)Z
    .locals 1
    .parameter "languageId"

    .prologue
    .line 776
    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enabledKeyboardLayoutCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 931
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 932
    .local v0, ambigModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 933
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->enabledKeyboardLayoutCount()I

    move-result v1

    .line 936
    :goto_0
    return v1

    .restart local p0
    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 1039
    instance-of v2, p1, Lcom/nuance/xt9/input/InputMethods$Language;

    if-eqz v2, :cond_1

    .line 1042
    move-object v0, p1

    check-cast v0, Lcom/nuance/xt9/input/InputMethods$Language;

    move-object v1, v0

    .line 1043
    .local v1, language:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v2, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    iget v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1048
    .end local v1           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :goto_0
    return v2

    .restart local v1       #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_0
    move v2, v4

    .line 1043
    goto :goto_0

    .end local v1           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    move v2, v4

    .line 1048
    goto :goto_0
.end method

.method public findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 3
    .parameter "mode"

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1025
    .local v1, m:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v2, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1030
    .end local v1           #m:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllInputModes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 886
    .local v0, allModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 887
    .local v2, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    .end local v2           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    return-object v0
.end method

.method public getAmbigousInputModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 873
    .local v0, ambigousModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 874
    .local v2, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "abc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 876
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    .end local v2           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    return-object v0
.end method

.method public getChineseInputModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 897
    .local v0, ambigousModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 898
    .local v2, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "bpmf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "quick_cangjie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "stroke"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "chinese_trace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 912
    .end local v2           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_2
    return-object v0
.end method

.method public getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 4

    .prologue
    .line 976
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 977
    .local v1, sp:Landroid/content/SharedPreferences;
    iget v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/xt9/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 978
    .local v0, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    return-object v0
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 4

    .prologue
    .line 916
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 917
    .local v1, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    iget-object v2, v1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v3, "handwriting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 923
    .end local v1           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 1
    .parameter "inputModeName"

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 997
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isHandWritingEnabled()Z
    .locals 1

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceFeatureSupport()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mParent:Lcom/nuance/xt9/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods;->access$300(Lcom/nuance/xt9/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 2

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 983
    .local v0, sp:Landroid/content/SharedPreferences;
    iget v1, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 986
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->saveLocale(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 992
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/nuance/xt9/input/Settings;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 993
    return-void
.end method

.method public toggleHandwritingAndInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 5

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v2

    .line 1054
    .local v2, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    move-object v3, v2

    .line 1056
    .local v3, nextMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1057
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v1

    .line 1058
    .local v1, ambigInpuModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1059
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #nextMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 1066
    .end local v1           #ambigInpuModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .restart local v3       #nextMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    :goto_0
    instance-of v4, v3, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;

    if-eqz v4, :cond_1

    .line 1068
    move-object v0, v3

    check-cast v0, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->switchToCurrent()V

    .line 1071
    :cond_1
    return-object v3

    .line 1062
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    goto :goto_0
.end method
