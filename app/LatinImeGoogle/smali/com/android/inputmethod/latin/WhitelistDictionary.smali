.class public Lcom/android/inputmethod/latin/WhitelistDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "WhitelistDictionary.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/WhitelistDictionary;


# instance fields
.field private final mWhitelistWords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    .line 29
    const-class v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WhitelistDictionary;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->sInstance:Lcom/android/inputmethod/latin/WhitelistDictionary;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/android/inputmethod/latin/WhitelistDictionary;
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    sget-object v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->sInstance:Lcom/android/inputmethod/latin/WhitelistDictionary;

    monitor-enter v0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->sInstance:Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/WhitelistDictionary;->initWordlist([Ljava/lang/String;)V

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lcom/android/inputmethod/latin/WhitelistDictionary;->sInstance:Lcom/android/inputmethod/latin/WhitelistDictionary;

    return-object v0

    .line 45
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->sInstance:Lcom/android/inputmethod/latin/WhitelistDictionary;

    iget-object v1, v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initWordlist([Ljava/lang/String;)V
    .locals 10
    .parameter "wordlist"

    .prologue
    .line 52
    iget-object v6, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 53
    array-length v0, p1

    .line 54
    .local v0, N:I
    rem-int/lit8 v6, v0, 0x3

    if-eqz v6, :cond_1

    .line 55
    sget-boolean v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_0

    .line 56
    sget-object v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The number of the whitelist is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 62
    :try_start_0
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 63
    .local v5, score:I
    add-int/lit8 v6, v4, 0x1

    aget-object v2, p1, v6

    .line 64
    .local v2, before:Ljava/lang/String;
    add-int/lit8 v6, v4, 0x2

    aget-object v1, p1, v6

    .line 65
    .local v1, after:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 66
    iget-object v6, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 70
    .end local v1           #after:Ljava/lang/String;
    .end local v2           #before:Ljava/lang/String;
    .end local v5           #score:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 71
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-boolean v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v6, :cond_0

    .line 72
    sget-object v6, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    const-string v7, "The score of the word is invalid."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getWhiteListedWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "before"

    .prologue
    const/4 v2, 0x0

    .line 78
    if-nez p1, :cond_0

    move-object v1, v2

    .line 86
    .end local p0
    :goto_0
    return-object v1

    .line 79
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, lowerCaseBefore:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-boolean v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->DBG:Z

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lcom/android/inputmethod/latin/WhitelistDictionary;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- found whiteListedWord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/WhitelistDictionary;->mWhitelistWords:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v1, v2

    .line 86
    goto :goto_0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 0
    .parameter "composer"
    .parameter "callback"

    .prologue
    .line 92
    return-void
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/WhitelistDictionary;->getWhiteListedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
