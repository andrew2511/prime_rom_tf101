.class public Lcom/nuance/xt9/input/InputMethods;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/xt9/input/InputMethods$Layout;,
        Lcom/nuance/xt9/input/InputMethods$FullScreenHandwritingState;,
        Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;,
        Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;,
        Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;,
        Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;,
        Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;,
        Lcom/nuance/xt9/input/InputMethods$InputMode;,
        Lcom/nuance/xt9/input/InputMethods$Language;
    }
.end annotation


# static fields
.field private static TAG_INPUT_LANGUAGE:Ljava/lang/String;

.field private static TAG_INPUT_LAYOUT:Ljava/lang/String;

.field private static TAG_INPUT_METHOD:Ljava/lang/String;

.field private static TAG_INPUT_MODE:Ljava/lang/String;


# instance fields
.field private mAlphaInputLanguageCycling:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseInputModeCycling:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

.field private mDefaultLanguageId:I

.field private mInputLanguages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mInputLanguagesBackup:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRestoreLanguageList:Z

.field private mLocaledChanged:Z

.field private mOrientation:I

.field private final mT9ChineseBuildTraceEnabled:Z

.field private final mT9TraceBuildEnabled:Z

.field private final mT9WriteAlphaBuildEnabled:Z

.field private final mT9WriteBuildChineseEnabled:Z

.field public mUDBChineseSimplifyField:Z

.field public mUDBChineseTraditionalField:Z

.field private final mXT9ChineseInputBuildEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "InputMethods"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_METHOD:Ljava/lang/String;

    .line 23
    const-string v0, "Language"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_LANGUAGE:Ljava/lang/String;

    .line 24
    const-string v0, "InputMode"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_MODE:Ljava/lang/String;

    .line 25
    const-string v0, "Layout"

    sput-object v0, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_LAYOUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mUDBChineseSimplifyField:Z

    .line 41
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mUDBChineseTraditionalField:Z

    .line 42
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mIsRestoreLanguageList:Z

    .line 45
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    .line 46
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    .line 54
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mContext:Landroid/content/Context;

    .line 55
    new-instance v21, Lcom/nuance/xt9/input/DatabaseConfig;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/DatabaseConfig;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    .line 56
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    .line 57
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mInputLanguagesBackup:Ljava/util/LinkedList;

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 59
    .local v17, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/xt9/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/nuance/xt9/input/NativeConfigInput;->getAvailableLanguagesOnDevice(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 61
    .local v12, languagesOnDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->isWriteAlphaBuildEnabled()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    .line 62
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->isWriteChineseBuildEnabled()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    .line 63
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->isTraceBuildEnabled()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mT9TraceBuildEnabled:Z

    .line 64
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->isChineseInputBuildEnabled()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    .line 65
    invoke-static {}, Lcom/nuance/xt9/input/NativeConfigInput;->isChineseTraceEnabled()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mT9ChineseBuildTraceEnabled:Z

    .line 67
    const-string v18, "savedLocale"

    .line 68
    .local v18, savedLocalKey:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 69
    .local v19, sp:Landroid/content/SharedPreferences;
    const-string v21, "savedLocale"

    const-string v22, "null"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 70
    .local v16, previousSavedLocale:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, locale:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods;->mLocaledChanged:Z

    .line 72
    const-string v21, "savedLocale"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/Settings;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070005

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/nuance/xt9/input/InputMethods;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v9

    .line 79
    .local v9, hardwareKeyboardEnabledList:[J
    if-eqz v9, :cond_0

    .line 80
    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    .line 87
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f050003

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 90
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 91
    .local v11, language:Lcom/nuance/xt9/input/InputMethods$Language;
    const/4 v10, 0x0

    .line 92
    .local v10, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    const/4 v13, 0x0

    .line 94
    .local v13, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, event:I
    const/16 v21, 0x1

    move v0, v8

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 95
    const/16 v21, 0x2

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 96
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 98
    .local v20, tag:Ljava/lang/String;
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_METHOD:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 99
    invoke-static {v15}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v21

    sget-object v22, Lcom/nuance/xt9/input/R$styleable;->XT9:[I

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 100
    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v21, 0x9

    const/16 v22, 0x0

    move-object v0, v4

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    .line 101
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v4           #a:Landroid/content/res/TypedArray;
    .end local v8           #event:I
    .end local v11           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v13           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    .end local v20           #tag:Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v7, v21

    .line 168
    .local v7, e:Ljava/lang/Exception;
    const-string v21, "ModeCyle"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Parse error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/InputMethods;->mLocaledChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v6

    .line 176
    .local v6, defaultLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v6, :cond_10

    .line 177
    move-object v0, v6

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v5

    .line 178
    .local v5, defaultInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 179
    const/16 v21, 0x1

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 188
    .end local v5           #defaultInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v6           #defaultLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguagesBackup:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->clear()V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/LinkedList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/InputMethods;->mInputLanguagesBackup:Ljava/util/LinkedList;

    .line 192
    return-void

    .line 71
    .end local v9           #hardwareKeyboardEnabledList:[J
    .end local v10           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .restart local p1
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 103
    .restart local v8       #event:I
    .restart local v9       #hardwareKeyboardEnabledList:[J
    .restart local v10       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .restart local v11       #language:Lcom/nuance/xt9/input/InputMethods$Language;
    .restart local v13       #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v20       #tag:Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 104
    new-instance v11, Lcom/nuance/xt9/input/InputMethods$Language;

    .end local v11           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods$Language;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods;Landroid/content/res/XmlResourceParser;)V

    .restart local v11       #language:Lcom/nuance/xt9/input/InputMethods$Language;
    goto/16 :goto_1

    .line 106
    :cond_6
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_MODE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v11

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->createInputMode(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v10

    goto/16 :goto_1

    .line 109
    :cond_7
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_LAYOUT:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 110
    new-instance v13, Lcom/nuance/xt9/input/InputMethods$Layout;

    .end local v13           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    move-object v0, v13

    move-object/from16 v1, v17

    move-object v2, v10

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods$Layout;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V

    .restart local v13       #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    goto/16 :goto_1

    .line 113
    .end local v20           #tag:Ljava/lang/String;
    :cond_8
    const/16 v21, 0x3

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 114
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 116
    .restart local v20       #tag:Ljava/lang/String;
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 121
    move-object v0, v11

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object v0, v11

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nuance/xt9/input/InputMethods$Language;->isKoreanLanguageId(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 124
    :cond_9
    move-object v0, v11

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object v0, v11

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/xt9/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 128
    :cond_a
    if-eqz v11, :cond_b

    .line 131
    if-eqz v9, :cond_b

    move-object v0, v11

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object v0, v9

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v21

    if-ltz v21, :cond_b

    .line 134
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v11

    iput-boolean v0, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mEnabledHardwareKeyboard:Z

    .line 138
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->addLanguage(Lcom/nuance/xt9/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 143
    :cond_c
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_MODE:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 145
    if-eqz v10, :cond_1

    .line 146
    move-object v0, v10

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "handwriting"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 147
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->isWriteBuildEnabled(Lcom/nuance/xt9/input/InputMethods$InputMode;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 148
    invoke-static {v11, v10}, Lcom/nuance/xt9/input/InputMethods$Language;->access$000(Lcom/nuance/xt9/input/InputMethods$Language;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    goto/16 :goto_1

    .line 151
    :cond_d
    move-object v0, v10

    iget-object v0, v0, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "chinese_trace"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 152
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->isChineseTraceBuildEnabled(Lcom/nuance/xt9/input/InputMethods$InputMode;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 153
    invoke-static {v11, v10}, Lcom/nuance/xt9/input/InputMethods$Language;->access$000(Lcom/nuance/xt9/input/InputMethods$Language;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    goto/16 :goto_1

    .line 157
    :cond_e
    invoke-static {v11, v10}, Lcom/nuance/xt9/input/InputMethods$Language;->access$000(Lcom/nuance/xt9/input/InputMethods$Language;Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    goto/16 :goto_1

    .line 161
    :cond_f
    sget-object v21, Lcom/nuance/xt9/input/InputMethods;->TAG_INPUT_LAYOUT:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 162
    invoke-static {v10, v13}, Lcom/nuance/xt9/input/InputMethods$InputMode;->access$100(Lcom/nuance/xt9/input/InputMethods$InputMode;Lcom/nuance/xt9/input/InputMethods$Layout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 183
    .end local v8           #event:I
    .end local v11           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v13           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    .end local v20           #tag:Ljava/lang/String;
    .restart local v6       #defaultLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_10
    const-string v21, "InputMethods"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Can find default language Id 0x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " locale = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/InputMethods;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mT9TraceBuildEnabled:Z

    return v0
.end method

.method static synthetic access$400(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/InputMethods;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mLocaledChanged:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/xt9/input/InputMethods;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/nuance/xt9/input/InputMethods;->composeIntKeyForLangaugeId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/xt9/input/InputMethods;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/nuance/xt9/input/InputMethods;->mOrientation:I

    return v0
.end method

.method private addLanguage(Lcom/nuance/xt9/input/InputMethods$Language;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->isUDBTraditionalField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget v0, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->isUDBSimplifyField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget v0, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate language (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

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

.method private static composeIntKey(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1981
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeIntKeyForLangaugeId(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "languageId"
    .parameter "inputMode"

    .prologue
    const/16 v1, 0x109

    .line 1986
    const-string v0, "alpha"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1995
    :goto_0
    return-object v0

    .line 1989
    :cond_0
    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->isAlphabetic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1990
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1992
    :cond_1
    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1993
    const/16 v0, 0xe1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1995
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static composeKeyForKeyboardLayout(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "languageId"
    .parameter "locale"
    .parameter "inputMode"
    .parameter "orientation"

    .prologue
    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nuance/xt9/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/nuance/xt9/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createInputMode(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/xt9/input/InputMethods$InputMode;
    .locals 4
    .parameter "res"
    .parameter "parent"
    .parameter "parser"

    .prologue
    .line 197
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/xt9/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 198
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, inputMode:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    if-nez v1, :cond_0

    iget-object v2, p2, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    iget-object v1, p2, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 205
    :cond_0
    if-eqz v1, :cond_5

    .line 206
    iget v2, p2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    const-string v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    new-instance v2, Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$ChineseHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 227
    :goto_0
    return-object v2

    .line 211
    :cond_1
    new-instance v2, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$ChineseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    new-instance v2, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$AlphaHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v2, "ambig"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    new-instance v2, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$AlphaAmbigInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 222
    :cond_4
    new-instance v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/xt9/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/xt9/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 227
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private debugShowLanguageAndMode()V
    .locals 8

    .prologue
    .line 532
    iget-object v7, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 533
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, start:I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 534
    iget-object v7, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 535
    .local v5, language:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->isEnabled()Z

    move-result v0

    .line 537
    .local v0, b:Z
    iget v7, v5, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v7}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 538
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v4

    .line 539
    .local v4, inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 540
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 544
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 545
    .local v3, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 550
    .end local v2           #i:I
    .end local v3           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v4           #inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    :cond_1
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v4

    .line 551
    .restart local v4       #inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 552
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 553
    .restart local v3       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 533
    .end local v3           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 558
    .end local v0           #b:Z
    .end local v2           #i:I
    .end local v4           #inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v5           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_3
    return-void
.end method

.method private enableNextDefaultInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 9
    .parameter "currentInputMode"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 461
    move-object v4, p1

    .line 465
    .local v4, nextEnabledInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/InputMethods;->isInputModeEnabled(Lcom/nuance/xt9/input/InputMethods$InputMode;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 470
    const/4 v4, 0x0

    .line 472
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v6

    invoke-static {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    :cond_0
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 475
    iget-object v6, p1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v0

    .line 476
    .local v0, chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 477
    .local v1, current:I
    if-eq v1, v7, :cond_1

    .line 478
    add-int/lit8 v3, v1, 0x1

    .local v3, next:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 479
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/xt9/input/InputMethods$InputMode;

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 480
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #nextEnabledInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v4, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 486
    .end local v3           #next:I
    .restart local v4       #nextEnabledInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    if-nez v4, :cond_2

    .line 487
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #nextEnabledInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v4, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 516
    .end local v0           #chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v1           #current:I
    .restart local v4       #nextEnabledInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 517
    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/InputMethods;->syncCurrentAlphaInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    .line 521
    return-void

    .line 478
    .restart local v0       #chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .restart local v1       #current:I
    .restart local v3       #next:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v0           #chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v1           #current:I
    .end local v3           #next:I
    :cond_4
    const/4 v5, 0x0

    .line 492
    .local v5, nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v2

    .line 493
    .local v2, languages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    iget-object v6, p1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 495
    .restart local v1       #current:I
    if-eq v1, v7, :cond_5

    .line 496
    add-int/lit8 v3, v1, 0x1

    .restart local v3       #next:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 497
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-direct {p0, v6}, Lcom/nuance/xt9/input/InputMethods;->getEnabledInputModes(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 498
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    check-cast v5, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 504
    .end local v3           #next:I
    .restart local v5       #nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_5
    if-nez v5, :cond_6

    .line 505
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    check-cast v5, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 508
    .restart local v5       #nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_6
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    goto :goto_1

    .line 496
    .restart local v3       #next:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getEnabledInputModes(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;
    .locals 1
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->access$200(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyboardLayoutId(Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .parameter "sp"
    .parameter "languageId"
    .parameter "locale"
    .parameter "inputMode"
    .parameter "orientation"
    .parameter "defaulKeyboardtLayoutId"

    .prologue
    .line 1960
    invoke-static {p1, p2, p3, p4}, Lcom/nuance/xt9/input/InputMethods;->composeKeyForKeyboardLayout(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1961
    .local v0, key:Ljava/lang/String;
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1962
    .local v1, layoutId:I
    return v1
.end method

.method private getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 727
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 728
    .local v0, ar:[I
    if-nez v0, :cond_0

    .line 729
    const/4 v3, 0x0

    .line 735
    :goto_0
    return-object v3

    .line 731
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 732
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 733
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 735
    goto :goto_0
.end method

.method public static getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sp"
    .parameter "languageId"
    .parameter "defaultInputMode"

    .prologue
    .line 1911
    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedLanguage(Landroid/content/SharedPreferences;I)I
    .locals 4
    .parameter "sp"
    .parameter "defaultLangId"

    .prologue
    .line 1915
    const/4 v2, 0x0

    .line 1917
    .local v2, languageId:I
    :try_start_0
    const-string v3, "current_language"

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1930
    :goto_0
    return v2

    .line 1919
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1922
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1923
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "current_language"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1924
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1926
    invoke-static {p0, p1}, Lcom/nuance/xt9/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 1927
    move v2, p1

    goto :goto_0
.end method

.method private isChineseTraceBuildEnabled(Lcom/nuance/xt9/input/InputMethods$InputMode;)Z
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mT9ChineseBuildTraceEnabled:Z

    return v0
.end method

.method private isInputModeEnabled(Lcom/nuance/xt9/input/InputMethods$InputMode;)Z
    .locals 2
    .parameter "currentInputMode"

    .prologue
    const/4 v1, 0x1

    .line 444
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 454
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p1, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/InputMethods;->getEnabledInputModes(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWriteBuildEnabled(Lcom/nuance/xt9/input/InputMethods$InputMode;)Z
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    .line 237
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    goto :goto_0
.end method

.method public static saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .locals 2
    .parameter "sp"
    .parameter "languageId"
    .parameter "inputMode"

    .prologue
    .line 1905
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1906
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1907
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1908
    return-void
.end method

.method public static saveKeyboardLayout(Landroid/content/SharedPreferences;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "sp"
    .parameter "languageId"
    .parameter "locale"
    .parameter "inputMode"
    .parameter "orientation"
    .parameter "KeyboardLayoutId"

    .prologue
    .line 1967
    invoke-static {p1, p2, p3, p4}, Lcom/nuance/xt9/input/InputMethods;->composeKeyForKeyboardLayout(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1968
    .local v1, key:Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1969
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1970
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1971
    return-void
.end method

.method public static saveLanguage(Landroid/content/SharedPreferences;I)V
    .locals 2
    .parameter "sp"
    .parameter "languageId"

    .prologue
    .line 1934
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1935
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1936
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1937
    return-void
.end method

.method public static saveLocale(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sp"
    .parameter "locale"

    .prologue
    .line 1953
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1954
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_locale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1955
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1956
    return-void
.end method

.method private syncCurrentAlphaInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 1
    .parameter "currentInputMode"

    .prologue
    .line 524
    instance-of v0, p1, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;

    if-eqz v0, :cond_0

    .line 527
    check-cast p1, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;

    .end local p1
    invoke-virtual {p1}, Lcom/nuance/xt9/input/InputMethods$AlphaInputMode;->syncCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object p1

    .line 529
    .restart local p1
    :cond_0
    return-void
.end method


# virtual methods
.method public countEnabledLanguageMode()I
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public createLanguageListForUDB(I)V
    .locals 5
    .parameter "languageId"

    .prologue
    .line 280
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 281
    .local v0, filterLanguages:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 282
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 283
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 284
    .local v2, lang:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v4, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    if-ne v4, p1, :cond_0

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v2           #lang:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 289
    iput-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    .line 290
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nuance/xt9/input/InputMethods;->mIsRestoreLanguageList:Z

    .line 291
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "InputMethods"

    const-string v1, "InputMethods.finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;
    .locals 3
    .parameter "languageID"

    .prologue
    .line 668
    iget-object v2, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 669
    .local v1, m:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v2, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 675
    .end local v1           #m:Lcom/nuance/xt9/input/InputMethods$Language;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;
    .locals 7
    .parameter "locale"

    .prologue
    .line 681
    if-eqz p1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 682
    .local v1, languageCode:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 684
    .local v3, matchedLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    if-eqz v1, :cond_1

    .line 685
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 686
    .local v2, m:Lcom/nuance/xt9/input/InputMethods$Language;
    iget-object v4, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLocale:Ljava/lang/String;

    .line 687
    .local v4, xt9LanguageLocale:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 688
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 689
    move-object v3, v2

    .line 699
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v4           #xt9LanguageLocale:Ljava/lang/String;
    :cond_1
    return-object v3

    .line 681
    .end local v1           #languageCode:Ljava/lang/String;
    .end local v3           #matchedLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_2
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0

    .line 691
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #languageCode:Ljava/lang/String;
    .restart local v2       #m:Lcom/nuance/xt9/input/InputMethods$Language;
    .restart local v3       #matchedLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .restart local v4       #xt9LanguageLocale:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    move-object v3, v2

    goto :goto_1
.end method

.method public getAlphabeticInputLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, alphaInputLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 328
    .local v2, language:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v3, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v2           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    return-object v0
.end method

.method public getAvailablelanguages()Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 378
    .local v5, languages:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 379
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 380
    .local v4, lang:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v3

    .line 381
    .local v3, inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 382
    .local v2, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    new-instance v6, Ljava/lang/Integer;

    iget v7, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v2           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v4           #lang:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_2
    return-object v5
.end method

.method public getChineseInputLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, chineseInputLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 340
    .local v2, language:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v3, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v2           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    return-object v0
.end method

.method public getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;
    .locals 7

    .prologue
    .line 648
    iget-object v4, p0, Lcom/nuance/xt9/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 649
    .local v3, sp:Landroid/content/SharedPreferences;
    iget v4, p0, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    invoke-static {v3, v4}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v0

    .line 653
    .local v0, currentLanguageId:I
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/nuance/xt9/input/InputMethods;->getSavedLocale(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, currentLocale:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v2

    .line 655
    .local v2, language:Lcom/nuance/xt9/input/InputMethods$Language;
    if-nez v2, :cond_0

    .line 656
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v2

    .line 660
    :cond_0
    if-nez v2, :cond_1

    .line 661
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not find the current Language with languageId = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    return-object v2
.end method

.method public getDefaultAlphabeticInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;
    .locals 4

    .prologue
    .line 704
    iget v3, p0, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 706
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v3

    iget v0, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultAlphaLanguageId:I

    .line 707
    .local v0, defaultAlphaLanguageId:I
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v3

    .line 722
    .end local v0           #defaultAlphaLanguageId:I
    :goto_0
    return-object v3

    .line 710
    .restart local v0       #defaultAlphaLanguageId:I
    :cond_0
    iget v3, p0, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v3

    goto :goto_0

    .line 716
    .end local v0           #defaultAlphaLanguageId:I
    :cond_1
    iget-object v3, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 717
    .local v2, language:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v3, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    .line 718
    goto :goto_0

    .line 722
    .end local v2           #language:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getEnabledlanguages()Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 360
    .local v5, languages:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 361
    iget-object v6, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 362
    .local v4, lang:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v3

    .line 363
    .local v3, inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 364
    .local v2, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    new-instance v6, Ljava/lang/Integer;

    iget v7, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v2           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v4           #lang:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_2
    return-object v5
.end method

.method public getInputLanguageCount()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getNextInputLanguage(Lcom/nuance/xt9/input/InputMethods$InputMode;)Lcom/nuance/xt9/input/InputMethods$Language;
    .locals 7
    .parameter "previousInputMode"

    .prologue
    const/4 v6, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v1

    .line 574
    .local v1, currentLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v0

    .line 575
    .local v0, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    const/4 v3, 0x0

    .line 576
    .local v3, nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    const/4 v2, 0x0

    .line 581
    .local v2, nextIndex:I
    iget v5, v1, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 584
    invoke-virtual {v0}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isAlphaInputMode()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    .line 588
    :goto_0
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 589
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 594
    .restart local v3       #nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_0
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 595
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 599
    .restart local v3       #nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_1
    if-eqz v3, :cond_3

    .line 600
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 604
    iget-object v5, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    .line 640
    :goto_1
    return-object v5

    .line 584
    :cond_2
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    goto :goto_0

    .line 609
    :cond_3
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 610
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 611
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 612
    .local v4, nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->saveAsCurrent()V

    .line 613
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    .line 614
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/InputMethods;->syncCurrentAlphaInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    move-object v5, v4

    .line 618
    goto :goto_1

    .line 622
    .end local v4           #nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_4
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 623
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 624
    .restart local v3       #nextInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 628
    iget-object v5, v3, Lcom/nuance/xt9/input/InputMethods$InputMode;->mParent:Lcom/nuance/xt9/input/InputMethods$Language;

    goto :goto_1

    .line 632
    :cond_5
    iget-object v5, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 633
    .restart local v4       #nextLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->saveAsCurrent()V

    .line 634
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 636
    invoke-direct {p0, v3}, Lcom/nuance/xt9/input/InputMethods;->syncCurrentAlphaInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    move-object v5, v4

    .line 640
    goto :goto_1
.end method

.method public getSavedLocale(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sp"
    .parameter "defaultLocale"

    .prologue
    .line 1942
    const/4 v0, 0x0

    .line 1944
    .local v0, country:Ljava/lang/String;
    :try_start_0
    const-string v1, "current_locale"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1949
    :goto_0
    return-object v0

    .line 1946
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isChineseSimpliedOnDevice()Z
    .locals 1

    .prologue
    .line 353
    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDBChinese(I)Z
    .locals 2
    .parameter "languageID"

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->isUDBSimplifyField()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 317
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->isUDBTraditionalField()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 315
    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUDBSimplifyField()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mUDBChineseSimplifyField:Z

    return v0
.end method

.method public isUDBTraditionalField()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mUDBChineseTraditionalField:Z

    return v0
.end method

.method public restoreInputLanguage()V
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mIsRestoreLanguageList:Z

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 274
    iget-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguagesBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/nuance/xt9/input/InputMethods;->mInputLanguages:Ljava/util/LinkedList;

    .line 275
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/InputMethods;->mIsRestoreLanguageList:Z

    goto :goto_0
.end method

.method public setUDBSimplifyField(Z)V
    .locals 0
    .parameter "isSimplifyField"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods;->mUDBChineseSimplifyField:Z

    .line 295
    return-void
.end method

.method public setUDBTraditionalField(Z)V
    .locals 0
    .parameter "isTraditionalField"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/nuance/xt9/input/InputMethods;->mUDBChineseTraditionalField:Z

    .line 303
    return-void
.end method

.method public syncWithCurrentUserConfiguration()V
    .locals 11

    .prologue
    .line 395
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/nuance/xt9/input/InputMethods;->mOrientation:I

    .line 397
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 398
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v1

    .line 399
    .local v1, alphaLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 400
    .local v0, alphaLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/InputMethods;->getEnabledInputModes(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 401
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v0           #alphaLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_1
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 406
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, chineseLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 408
    .local v2, chineseLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-direct {p0, v2}, Lcom/nuance/xt9/input/InputMethods;->getEnabledInputModes(Lcom/nuance/xt9/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v8

    .line 409
    .local v8, enabledChineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 410
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 415
    .end local v2           #chineseLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v8           #enabledChineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    :cond_3
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 416
    iget v10, p0, Lcom/nuance/xt9/input/InputMethods;->mDefaultLanguageId:I

    invoke-virtual {p0, v10}, Lcom/nuance/xt9/input/InputMethods;->findInputLanguage(I)Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v7

    .line 417
    .local v7, defaultLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    iget-object v10, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/nuance/xt9/input/InputMethods$Language;->findInputMode(Ljava/lang/String;)Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v6

    .line 418
    .local v6, defaultInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 419
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/nuance/xt9/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 421
    iget v10, v7, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v10}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseLanguageId(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 422
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mChineseInputModeCycling:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v6           #defaultInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v7           #defaultLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v5

    .line 431
    .local v5, currentLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v4

    .line 432
    .local v4, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-direct {p0, v4}, Lcom/nuance/xt9/input/InputMethods;->enableNextDefaultInputMode(Lcom/nuance/xt9/input/InputMethods$InputMode;)V

    .line 439
    return-void

    .line 425
    .end local v4           #currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v5           #currentLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .restart local v6       #defaultInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .restart local v7       #defaultLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_5
    iget-object v10, p0, Lcom/nuance/xt9/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
