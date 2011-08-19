.class public Lcom/nuance/xt9/input/UserDictionaryService;
.super Landroid/app/Service;
.source "UserDictionaryService.java"


# static fields
.field public static DEFAULT_ALPHA_LANGUAGE:I

.field public static DEFAULT_CHINESE_SIMP_LANGUAGE:I

.field public static DEFAULT_CHINESE_TRAD_LANGUAGE:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentInputMode:Ljava/lang/String;

.field private mCurrentUserSelectedLanguageId:I

.field private mCurrentUserWord:Lcom/nuance/xt9/input/UserWord;

.field private mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

.field private mDefaultLanguageId:I

.field private mDefaultSimplifyMode:Ljava/lang/String;

.field private mDefaultTraditionalMode:Ljava/lang/String;

.field private mDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/xt9/input/UserDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private final mIUserDictionary:Lcom/nuance/xt9/input/IUserDictionary$Stub;

.field private final mIUserDictionaryConfig:Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;

.field private mLanguages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "UserDictionaryService"

    sput-object v0, Lcom/nuance/xt9/input/UserDictionaryService;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x109

    sput v0, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_ALPHA_LANGUAGE:I

    .line 27
    const/16 v0, 0xe0

    sput v0, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    .line 28
    const/16 v0, 0xe1

    sput v0, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const-string v0, "pinyin"

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultSimplifyMode:Ljava/lang/String;

    .line 32
    const-string v0, "bpmf"

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultTraditionalMode:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/nuance/xt9/input/UserWord;

    invoke-direct {v0}, Lcom/nuance/xt9/input/UserWord;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentUserWord:Lcom/nuance/xt9/input/UserWord;

    .line 104
    new-instance v0, Lcom/nuance/xt9/input/UserDictionaryService$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/UserDictionaryService$1;-><init>(Lcom/nuance/xt9/input/UserDictionaryService;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mIUserDictionaryConfig:Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;

    .line 192
    new-instance v0, Lcom/nuance/xt9/input/UserDictionaryService$2;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/UserDictionaryService$2;-><init>(Lcom/nuance/xt9/input/UserDictionaryService;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mIUserDictionary:Lcom/nuance/xt9/input/IUserDictionary$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/UserDictionaryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nuance/xt9/input/UserDictionaryService;->loadAvailableLanguages()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentUserSelectedLanguageId:I

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/xt9/input/UserDictionaryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentUserSelectedLanguageId:I

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultLanguageId:I

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentInputMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/xt9/input/UserDictionaryService;)Lcom/nuance/xt9/input/UserWord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentUserWord:Lcom/nuance/xt9/input/UserWord;

    return-object v0
.end method

.method static synthetic access$702(Lcom/nuance/xt9/input/UserDictionaryService;Lcom/nuance/xt9/input/UserWord;)Lcom/nuance/xt9/input/UserWord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentUserWord:Lcom/nuance/xt9/input/UserWord;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultSimplifyMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultTraditionalMode:Ljava/lang/String;

    return-object v0
.end method

.method private loadAvailableLanguages()V
    .locals 8

    .prologue
    .line 41
    new-instance v5, Lcom/nuance/xt9/input/InputMethods;

    invoke-direct {v5, p0}, Lcom/nuance/xt9/input/InputMethods;-><init>(Landroid/content/Context;)V

    .line 42
    .local v5, methods:Lcom/nuance/xt9/input/InputMethods;
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 43
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 45
    .local v3, lang:Lcom/nuance/xt9/input/InputMethods$Language;
    iget v6, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 47
    .local v2, input:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    iget-object v6, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultSimplifyMode:Ljava/lang/String;

    .line 53
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_2
    iget v6, v3, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    invoke-static {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 55
    .restart local v2       #input:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 56
    iget-object v6, v2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultTraditionalMode:Ljava/lang/String;

    goto :goto_0

    .line 65
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v3           #lang:Lcom/nuance/xt9/input/InputMethods$Language;
    :cond_4
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods;->getAvailablelanguages()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 66
    .local v4, languageId:I
    iget-object v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mLanguages:Ljava/util/LinkedList;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v4           #languageId:I
    :cond_5
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v6

    iget v6, v6, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    iput v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultLanguageId:I

    .line 70
    iget v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDefaultLanguageId:I

    iput v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentUserSelectedLanguageId:I

    .line 71
    invoke-virtual {v5}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v6

    iget-object v6, v6, Lcom/nuance/xt9/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v6, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mCurrentInputMode:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 92
    sget-object v0, Lcom/nuance/xt9/input/UserDictionaryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind(): action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-class v0, Lcom/nuance/xt9/input/IUserDictionaryConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mIUserDictionaryConfig:Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;

    .line 99
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-class v0, Lcom/nuance/xt9/input/IUserDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mIUserDictionary:Lcom/nuance/xt9/input/IUserDictionary$Stub;

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 75
    iput-object p0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/DatabaseConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    .line 79
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    .line 80
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string v1, "AlphaUdbDictionary"

    new-instance v2, Lcom/nuance/xt9/input/AlphaUserDictionary;

    sget v3, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_ALPHA_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/AlphaUserDictionary;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string v1, "AlphaAsdbDictionary"

    new-instance v2, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;

    sget v3, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_ALPHA_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/AlphaUserDictionary$AutoSubWords;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string v1, "ChineseSimpDictionary"

    new-instance v2, Lcom/nuance/xt9/input/ChineseUserDictionary;

    sget v3, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/ChineseUserDictionary;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    const-string v1, "ChineseTradDictionary"

    new-instance v2, Lcom/nuance/xt9/input/ChineseUserDictionary;

    sget v3, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    iget-object v4, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDatabaseConfig:Lcom/nuance/xt9/input/DatabaseConfig;

    invoke-virtual {v4}, Lcom/nuance/xt9/input/DatabaseConfig;->getDatabaseConfigureFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/xt9/input/ChineseUserDictionary;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService;->mDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 89
    return-void
.end method
