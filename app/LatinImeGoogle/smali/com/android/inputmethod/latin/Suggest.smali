.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field private static final DBG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

.field private mAutoCorrectionThreshold:D

.field private final mBigramDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mBigramPriorities:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrectionMode:I

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mQuickFixesEnabled:Z

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnigramDictionaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Suggest;->TAG:Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "dictionaryResId"

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 95
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 96
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 107
    iput v1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 110
    invoke-static {p1, p2, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->initDictionary(Landroid/content/Context;II)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/Suggest;->init(Landroid/content/Context;Lcom/android/inputmethod/latin/BinaryDictionary;)V

    .line 111
    return-void
.end method

.method constructor <init>(Ljava/io/File;JJ)V
    .locals 7
    .parameter "dictionary"
    .parameter "startOffset"
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 95
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 96
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 107
    iput v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 114
    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/inputmethod/latin/BinaryDictionary;->initDictionary(Ljava/io/File;JJI)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/android/inputmethod/latin/Suggest;->init(Landroid/content/Context;Lcom/android/inputmethod/latin/BinaryDictionary;)V

    .line 115
    return-void
.end method

.method private capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "all"
    .parameter "first"
    .parameter "word"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 233
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    move-object v3, p3

    .line 248
    .end local p0
    :goto_0
    return-object v3

    .line 234
    .restart local p0
    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 235
    .local v2, wordLength:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 236
    .local v0, poolSize:I
    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/StringBuilder;

    move-object v1, p0

    .line 239
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    if-eqz p1, :cond_4

    .line 241
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    move-object v3, v1

    .line 248
    goto :goto_0

    .line 236
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_1

    .line 242
    .end local p0
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-eqz p2, :cond_2

    .line 243
    invoke-interface {p3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    if-le v2, v5, :cond_2

    .line 245
    invoke-interface {p3, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "prefMaxSuggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 555
    .local v2, poolSize:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 556
    .local v1, garbageSize:I
    :goto_0
    if-ge v2, p2, :cond_1

    if-lez v1, :cond_1

    .line 557
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 558
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    add-int/lit8 v2, v2, 0x1

    .line 562
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 563
    goto :goto_0

    .line 564
    .end local v0           #garbage:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_2

    .line 565
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String pool got too big: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 568
    return-void
.end method

.method private static compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .locals 5
    .parameter "lowerOriginalWord"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 425
    .local v1, originalLength:I
    if-ne v1, p3, :cond_2

    aget-char v2, p1, p2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v0

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 433
    .end local v0           #i:I
    :goto_1
    return v2

    .line 426
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    move v2, v4

    .line 433
    goto :goto_1
.end method

.method private init(Landroid/content/Context;Lcom/android/inputmethod/latin/BinaryDictionary;)V
    .locals 3
    .parameter "context"
    .parameter "mainDict"

    .prologue
    .line 118
    if-eqz p2, :cond_0

    .line 119
    iput-object p2, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 120
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "main"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "main"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/android/inputmethod/latin/WhitelistDictionary;->init(Landroid/content/Context;)Lcom/android/inputmethod/latin/WhitelistDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "whitelist"

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    new-instance v0, Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/AutoCorrection;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    .line 128
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->initPool()V

    .line 129
    return-void
.end method

.method private initPool()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v0, v2, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private removeDupes()V
    .locals 7

    .prologue
    .line 392
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 393
    .local v4, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 409
    :cond_0
    return-void

    .line 394
    :cond_1
    const/4 v1, 0x1

    .line 396
    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 397
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 399
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 400
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 401
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 402
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Suggest;->removeFromSuggestions(I)V

    .line 403
    add-int/lit8 v1, v1, -0x1

    .line 407
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 408
    goto :goto_0

    .line 399
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private removeFromSuggestions(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 413
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_0
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .locals 6
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 536
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 537
    .local v0, bigramSuggestSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 538
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 539
    const/4 v1, 0x1

    .line 540
    .local v1, chk:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p3, :cond_0

    .line 541
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_1

    .line 542
    const/4 v1, 0x0

    .line 546
    :cond_0
    if-eqz v1, :cond_2

    move v4, v2

    .line 550
    .end local v1           #chk:Z
    .end local v3           #j:I
    :goto_2
    return v4

    .line 540
    .restart local v1       #chk:Z
    .restart local v3       #j:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 537
    .end local v1           #chk:Z
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_3
    const/4 v4, -0x1

    goto :goto_2
.end method


# virtual methods
.method public addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .locals 21
    .parameter "word"
    .parameter "offset"
    .parameter "length"
    .parameter "freq"
    .parameter "dicTypeId"
    .parameter "dataType"

    .prologue
    .line 439
    move-object/from16 v7, p6

    .line 443
    .local v7, dataTypeForLog:Lcom/android/inputmethod/latin/Dictionary$DataType;
    sget-object v17, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 445
    .local v16, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object v14, v0

    .line 446
    .local v14, priorities:[I
    const/16 v13, 0x3c

    .line 453
    .local v13, prefMaxSuggestions:I
    :goto_0
    const/4 v12, 0x0

    .line 456
    .local v12, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 459
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 460
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    .end local p6
    check-cast p6, Ljava/lang/CharSequence;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, currentHighestWordLowerCase:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, p4

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    .line 468
    const/4 v12, 0x1

    .line 501
    .end local v6           #currentHighestWordLowerCase:Ljava/lang/String;
    :cond_0
    :goto_1
    if-lt v12, v13, :cond_6

    .line 502
    const/16 v17, 0x1

    .line 530
    :goto_2
    return v17

    .line 448
    .end local v12           #pos:I
    .end local v13           #prefMaxSuggestions:I
    .end local v14           #priorities:[I
    .end local v16           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local p6
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 449
    .restart local v16       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v14, v0

    .line 450
    .restart local v14       #priorities:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move v13, v0

    .restart local v13       #prefMaxSuggestions:I
    goto :goto_0

    .line 472
    .restart local v12       #pos:I
    :cond_2
    sget-object v17, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 474
    invoke-direct/range {p0 .. p3}, Lcom/android/inputmethod/latin/Suggest;->searchBigramSuggestion([CII)I

    move-result v5

    .line 475
    .local v5, bigramSuggestion:I
    if-ltz v5, :cond_3

    .line 476
    sget-object v7, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object/from16 v17, v0

    aget v17, v17, v5

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x405fc00000000000L

    div-double v17, v17, v19

    const-wide v19, 0x3fd3333333333334L

    mul-double v17, v17, v19

    const-wide v19, 0x3ff3333333333333L

    add-double v9, v17, v19

    .line 487
    .local v9, multiplier:D
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 p4, v0

    .line 492
    .end local v5           #bigramSuggestion:I
    .end local v9           #multiplier:D
    :cond_3
    const/16 v17, 0x1

    sub-int v17, v13, v17

    aget v17, v14, v17

    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    const/16 v17, 0x1

    goto :goto_2

    .line 498
    .end local p6
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 493
    :cond_5
    if-ge v12, v13, :cond_0

    .line 494
    aget v17, v14, v12

    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    aget v17, v14, v12

    move/from16 v0, v17

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/CharSequence;

    invoke-interface/range {p6 .. p6}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    goto/16 :goto_1

    .line 505
    :cond_6
    add-int/lit8 v17, v12, 0x1

    sub-int v18, v13, v12

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object v0, v14

    move v1, v12

    move-object v2, v14

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    aput p4, v14, v12

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 508
    .local v11, poolSize:I
    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/StringBuilder;

    move-object/from16 v15, p6

    .line 510
    .local v15, sb:Ljava/lang/StringBuilder;
    :goto_3
    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 512
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_7
    :goto_4
    move-object/from16 v0, v16

    move v1, v12

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 522
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v13

    if-le v0, v1, :cond_c

    .line 523
    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 524
    .local v8, garbage:Ljava/lang/CharSequence;
    move-object v0, v8

    instance-of v0, v0, Ljava/lang/StringBuilder;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v8           #garbage:Ljava/lang/CharSequence;
    :cond_8
    :goto_5
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 508
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v15, v17

    goto :goto_3

    .line 513
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 514
    aget-char v17, p1, p2

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v17

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 516
    add-int/lit8 v17, p2, 0x1

    const/16 v18, 0x1

    sub-int v18, p3, v18

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 519
    :cond_b
    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 528
    :cond_c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    goto :goto_5
.end method

.method public close()V
    .locals 4

    .prologue
    .line 571
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 572
    .local v0, dictionaries:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/inputmethod/latin/Dictionary;>;"
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 573
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 574
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/Dictionary;

    .line 575
    .local v1, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Dictionary;->close()V

    goto :goto_0

    .line 577
    .end local v1           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 578
    return-void
.end method

.method public getApproxMaxWordLength()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x20

    return v0
.end method

.method public getSuggestedWordBuilder(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .locals 37
    .parameter "view"
    .parameter "wordComposer"
    .parameter "prevWordForBigram"

    .prologue
    .line 254
    invoke-static/range {p3 .. p3}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AutoCorrection;->init()V

    .line 256
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v9

    .line 263
    .local v9, typedWord:Ljava/lang/CharSequence;
    if-eqz v9, :cond_2

    .line 264
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    .line 265
    .local v36, typedWordString:Ljava/lang/String;
    move-object/from16 v9, v36

    .line 266
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 268
    const/4 v4, 0x0

    sget-object v5, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, v36

    move v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    .line 274
    .end local v36           #typedWordString:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 280
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 281
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 282
    .local v27, lowerPrevWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    move-object/from16 p3, v27

    .line 285
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/inputmethod/latin/Dictionary;

    .line 286
    .local v21, dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_1

    .line 271
    .end local v21           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_2
    const-string v4, ""

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto :goto_0

    .line 288
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v27       #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    .line 289
    .local v19, currentChar:C
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v20

    .line 290
    .local v20, currentCharUpper:C
    const/16 v17, 0x0

    .line 291
    .local v17, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 292
    .local v15, bigramSuggestionSize:I
    const/16 v23, 0x0

    .local v23, i:I
    move/from16 v18, v17

    .end local v17           #count:I
    .local v18, count:I
    :goto_2
    move/from16 v0, v23

    move v1, v15

    if-ge v0, v1, :cond_19

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v0, v4

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 295
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 296
    .local v30, poolSize:I
    if-lez v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x1

    sub-int v5, v30, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    move-object/from16 v34, v4

    .line 299
    .local v34, sb:Ljava/lang/StringBuilder;
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v34

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v0, v34

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18           #count:I
    .restart local v17       #count:I
    move-object v0, v4

    move/from16 v1, v18

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move v4, v0

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_e

    .line 317
    .end local v15           #bigramSuggestionSize:I
    .end local v17           #count:I
    .end local v19           #currentChar:C
    .end local v20           #currentCharUpper:C
    .end local v23           #i:I
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #lowerPrevWord:Ljava/lang/CharSequence;
    .end local v30           #poolSize:I
    .end local v34           #sb:Ljava/lang/StringBuilder;
    :cond_5
    :goto_4
    const/4 v13, 0x0

    .line 318
    .local v13, autoText:Ljava/lang/CharSequence;
    if-nez v9, :cond_11

    const/4 v4, 0x0

    move-object/from16 v36, v4

    .line 319
    .restart local v36       #typedWordString:Ljava/lang/String;
    :goto_5
    if-eqz v9, :cond_8

    .line 321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mQuickFixesEnabled:Z

    move v4, v0

    if-eqz v4, :cond_8

    .line 322
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    .line 323
    .local v26, lowerCaseTypedWord:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    move v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, v26

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Suggest;->capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v35

    .line 329
    .local v35, tempAutoText:Ljava/lang/CharSequence;
    if-eqz v35, :cond_12

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 331
    .local v16, canAdd:Z
    :goto_6
    move-object/from16 v0, v35

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_7
    and-int v16, v16, v4

    .line 333
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :goto_8
    and-int v16, v16, v4

    .line 336
    :cond_6
    if-eqz v16, :cond_8

    .line 337
    sget-boolean v4, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    if-eqz v4, :cond_7

    .line 338
    sget-object v4, Lcom/android/inputmethod/latin/Suggest;->TAG:Ljava/lang/String;

    const-string v5, "Auto corrected by AUTOTEXT."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_7
    move-object/from16 v13, v35

    .line 345
    .end local v16           #canAdd:Z
    .end local v26           #lowerCaseTypedWord:Ljava/lang/String;
    .end local v35           #tempAutoText:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    move v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mWhiteListDictionary:Lcom/android/inputmethod/latin/WhitelistDictionary;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WhitelistDictionary;->getWhiteListedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Suggest;->capitalizeWord(ZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 348
    .local v14, whitelistedWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    move-wide v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move v12, v0

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v14}, Lcom/android/inputmethod/latin/AutoCorrection;->updateAutoCorrectionStatus(Ljava/util/Map;Lcom/android/inputmethod/latin/WordComposer;Ljava/util/ArrayList;[ILjava/lang/CharSequence;DILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 352
    if-eqz v13, :cond_9

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 356
    :cond_9
    if-eqz v14, :cond_a

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 360
    :cond_a
    if-eqz v9, :cond_b

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 363
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->removeDupes()V

    .line 365
    sget-boolean v4, Lcom/android/inputmethod/latin/Suggest;->DBG:Z

    if-eqz v4, :cond_18

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/AutoCorrection;->getNormalizedScore()D

    move-result-wide v28

    .line 367
    .local v28, normalizedScore:D
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v22, frequencyInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const-string v5, "+"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v4, v0

    move-object v0, v4

    array-length v0, v0

    move/from16 v32, v0

    .line 371
    .local v32, priorityLength:I
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_9
    move/from16 v0, v23

    move/from16 v1, v32

    if-ge v0, v1, :cond_16

    .line 372
    const-wide/16 v4, 0x0

    cmpl-double v4, v28, v4

    if-lez v4, :cond_15

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v5, v0

    aget v5, v5, v23

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 375
    .local v33, priorityThreshold:Ljava/lang/String;
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-wide/16 v28, 0x0

    .line 371
    .end local v33           #priorityThreshold:Ljava/lang/String;
    :goto_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 296
    .end local v13           #autoText:Ljava/lang/CharSequence;
    .end local v14           #whitelistedWord:Ljava/lang/CharSequence;
    .end local v22           #frequencyInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .end local v28           #normalizedScore:D
    .end local v32           #priorityLength:I
    .end local v36           #typedWordString:Ljava/lang/String;
    .restart local v15       #bigramSuggestionSize:I
    .restart local v18       #count:I
    .restart local v19       #currentChar:C
    .restart local v20       #currentCharUpper:C
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v27       #lowerPrevWord:Ljava/lang/CharSequence;
    .restart local v30       #poolSize:I
    .restart local p1
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v34, v4

    goto/16 :goto_3

    .end local v30           #poolSize:I
    :cond_d
    move/from16 v17, v18

    .line 292
    .end local v18           #count:I
    .restart local v17       #count:I
    :cond_e
    add-int/lit8 v23, v23, 0x1

    move/from16 v18, v17

    .end local v17           #count:I
    .restart local v18       #count:I
    goto/16 :goto_2

    .line 307
    .end local v15           #bigramSuggestionSize:I
    .end local v18           #count:I
    .end local v19           #currentChar:C
    .end local v20           #currentCharUpper:C
    .end local v23           #i:I
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v27           #lowerPrevWord:Ljava/lang/CharSequence;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 311
    .local v25, key:Ljava/lang/String;
    const-string v4, "auto"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "whitelist"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/inputmethod/latin/Dictionary;

    .line 314
    .restart local v21       #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V

    goto :goto_b

    .line 318
    .end local v21           #dictionary:Lcom/android/inputmethod/latin/Dictionary;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v25           #key:Ljava/lang/String;
    .restart local v13       #autoText:Ljava/lang/CharSequence;
    :cond_11
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    goto/16 :goto_5

    .line 329
    .restart local v26       #lowerCaseTypedWord:Ljava/lang/String;
    .restart local v35       #tempAutoText:Ljava/lang/CharSequence;
    .restart local v36       #typedWordString:Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_6

    .line 331
    .restart local v16       #canAdd:Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 334
    .end local p1
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 379
    .end local v16           #canAdd:Z
    .end local v26           #lowerCaseTypedWord:Ljava/lang/String;
    .end local v35           #tempAutoText:Ljava/lang/CharSequence;
    .restart local v14       #whitelistedWord:Ljava/lang/CharSequence;
    .restart local v22       #frequencyInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .restart local v23       #i:I
    .restart local v28       #normalizedScore:D
    .restart local v32       #priorityLength:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v4, v0

    aget v4, v4, v23

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    .line 380
    .local v31, priority:Ljava/lang/String;
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 383
    .end local v31           #priority:Ljava/lang/String;
    :cond_16
    move/from16 v23, v32

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    move v1, v4

    if-ge v0, v1, :cond_17

    .line 384
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    const-string v5, "--"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    .line 386
    :cond_17
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v4

    .line 388
    .end local v22           #frequencyInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .end local v23           #i:I
    .end local v28           #normalizedScore:D
    .end local v32           #priorityLength:I
    :goto_d
    return-object v4

    :cond_18
    new-instance v4, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v4

    goto :goto_d

    .end local v13           #autoText:Ljava/lang/CharSequence;
    .end local v14           #whitelistedWord:Ljava/lang/CharSequence;
    .end local v36           #typedWordString:Ljava/lang/String;
    .restart local v15       #bigramSuggestionSize:I
    .restart local v18       #count:I
    .restart local v19       #currentChar:C
    .restart local v20       #currentCharUpper:C
    .restart local v23       #i:I
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v27       #lowerPrevWord:Ljava/lang/CharSequence;
    .restart local p1
    :cond_19
    move/from16 v17, v18

    .end local v18           #count:I
    .restart local v17       #count:I
    goto/16 :goto_4
.end method

.method public getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "view"
    .parameter "wordComposer"
    .parameter "prevWordForBigram"

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    return-object v0
.end method

.method public getUnigramDictionaries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/inputmethod/latin/Dictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    return-object v0
.end method

.method public hasAutoCorrection()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrection:Lcom/android/inputmethod/latin/AutoCorrection;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoCorrection;->hasAutoCorrection()Z

    move-result v0

    return v0
.end method

.method public hasMainDictionary()Z
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSize()J

    move-result-wide v0

    const-wide/32 v2, 0x30d40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAggressiveAutoCorrectionMode()Z
    .locals 4

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoCorrectionThreshold(D)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoCorrectionThreshold:D

    .line 193
    return-void
.end method

.method public setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "autoDictionary"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "auto"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "contactsDictionary"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "contacts"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "contacts"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    return-void
.end method

.method public setCorrectionMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 148
    return-void
.end method

.method public setQuickFixesEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Suggest;->mQuickFixesEnabled:Z

    .line 140
    return-void
.end method

.method public setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "userBigramDictionary"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;

    const-string v1, "user_bigram"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 2
    .parameter "userDictionary"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;

    const-string v1, "user"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    return-void
.end method
