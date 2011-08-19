.class public Lcom/android/inputmethod/latin/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;,
        Lcom/android/inputmethod/latin/Utils$RingCharBuffer;,
        Lcom/android/inputmethod/latin/Utils$GCUtils;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/inputmethod/latin/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static calcNormalizedScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)D
    .locals 13
    .parameter "before"
    .parameter "after"
    .parameter "score"

    .prologue
    const-wide/high16 v11, 0x4000

    .line 310
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 311
    .local v1, beforeLength:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 312
    .local v0, afterLength:I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v7, 0x0

    .line 323
    :goto_0
    return-wide v7

    .line 313
    :cond_1
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 316
    .local v2, distance:I
    const-wide v7, 0x406fe00000000000L

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    mul-double v3, v7, v11

    .line 322
    .local v3, maximumScore:D
    const-wide/high16 v7, 0x3ff0

    int-to-double v9, v2

    int-to-double v11, v0

    div-double/2addr v9, v11

    sub-double v5, v7, v9

    .line 323
    .local v5, weight:D
    int-to-double v7, p2

    div-double/2addr v7, v3

    mul-double/2addr v7, v5

    goto :goto_0
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .locals 2
    .parameter
    .parameter "mayInterruptIfRunning"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 64
    :cond_0
    return-void
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "key"
    .parameter "csv"

    .prologue
    const/4 v5, 0x0

    .line 541
    if-nez p1, :cond_0

    move v4, v5

    .line 547
    :goto_0
    return v4

    .line 543
    :cond_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 544
    .local v3, option:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    const/4 v4, 0x1

    goto :goto_0

    .line 543
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #option:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 547
    goto :goto_0
.end method

.method public static editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 11
    .parameter "s"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 248
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 249
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "editDistance: Arguments should not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 252
    .local v3, sl:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 253
    .local v4, tl:I
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 254
    .local v0, dp:[[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v3, :cond_2

    .line 255
    aget-object v5, v0, v1

    aput v1, v5, v7

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-gt v2, v4, :cond_3

    .line 258
    aget-object v5, v0, v7

    aput v2, v5, v2

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_6

    .line 261
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_5

    .line 262
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v5, v6, :cond_4

    .line 263
    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget-object v7, v0, v1

    aget v7, v7, v2

    aput v7, v5, v6

    .line 261
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 265
    :cond_4
    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget-object v7, v0, v1

    aget v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    aget-object v8, v0, v8

    aget v8, v8, v2

    aget-object v9, v0, v1

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    goto :goto_4

    .line 260
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
    :cond_6
    aget-object v5, v0, v3

    aget v5, v5, v4

    return v5
.end method

.method public static getInputMethodId(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "imm"
    .parameter "packageName"

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 113
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 116
    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find input method id for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getKeyboardMode(Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .parameter "attribute"

    .prologue
    const/4 v3, 0x0

    .line 475
    if-nez p0, :cond_0

    move v2, v3

    .line 500
    :goto_0
    return v2

    .line 478
    :cond_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 479
    .local v0, inputType:I
    and-int/lit16 v1, v0, 0xff0

    .line 481
    .local v1, variation:I
    and-int/lit8 v2, v0, 0xf

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 500
    goto :goto_0

    .line 484
    :pswitch_0
    const/4 v2, 0x5

    goto :goto_0

    .line 486
    :pswitch_1
    const/4 v2, 0x4

    goto :goto_0

    .line 488
    :pswitch_2
    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils;->isEmailVariation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    const/4 v2, 0x2

    goto :goto_0

    .line 490
    :cond_1
    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 491
    const/4 v2, 0x1

    goto :goto_0

    .line 492
    :cond_2
    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    .line 493
    const/4 v2, 0x3

    goto :goto_0

    .line 494
    :cond_3
    const/16 v2, 0xb0

    if-ne v1, v2, :cond_4

    move v2, v3

    .line 495
    goto :goto_0

    :cond_4
    move v2, v3

    .line 497
    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMainDictionaryResourceId(Landroid/content/res/Resources;)I
    .locals 3
    .parameter

    .prologue
    .line 563
    const-string v0, "main"

    const-string v1, "raw"

    const-class v2, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 3
    .parameter "imm"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .parameter "packageName"
    .parameter "key"
    .parameter "attribute"

    .prologue
    .line 552
    if-nez p2, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 554
    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method public static isEmailVariation(I)Z
    .locals 1
    .parameter "variation"

    .prologue
    .line 505
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 522
    and-int/lit16 v0, p0, 0xfff

    .line 524
    .local v0, variation:I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 534
    and-int/lit16 v0, p0, 0xfff

    .line 536
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWebInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 510
    and-int/lit16 v0, p0, 0xfff

    .line 512
    .local v0, variation:I
    const/16 v1, 0xa1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadNativeLibrary()V
    .locals 3

    .prologue
    .line 568
    :try_start_0
    const-string v1, "jni_latinime"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 570
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Could not load native library jni_latinime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static shouldBlockedBySafetyNetForAutoCorrection(Lcom/android/inputmethod/latin/SuggestedWords;Lcom/android/inputmethod/latin/Suggest;)Z
    .locals 10
    .parameter "suggestions"
    .parameter "suggest"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v5

    if-le v5, v9, :cond_0

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v5, :cond_1

    :cond_0
    move v5, v8

    .line 147
    :goto_0
    return v5

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/Suggest;->isAggressiveAutoCorrectionMode()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 130
    .local v3, typedWord:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    move v5, v8

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    .local v0, candidateWord:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 133
    .local v4, typedWordLength:I
    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    const/4 v5, 0x2

    move v2, v5

    .line 134
    .local v2, maxEditDistanceOfNativeDictionary:I
    :goto_1
    invoke-static {v3, v0}, Lcom/android/inputmethod/latin/Utils;->editDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 135
    .local v1, distance:I
    sget-boolean v5, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    if-eqz v5, :cond_4

    .line 136
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Autocorrected edit distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    if-le v1, v2, :cond_7

    .line 140
    sget-boolean v5, Lcom/android/inputmethod/latin/Utils;->DBG:Z

    if-eqz v5, :cond_5

    .line 141
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Safety net: before = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", after = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v5, Lcom/android/inputmethod/latin/Utils;->TAG:Ljava/lang/String;

    const-string v6, "(Error) The edit distance of this correction exceeds limit. Turning off auto-correction."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v5, v9

    .line 145
    goto :goto_0

    .line 133
    .end local v1           #distance:I
    .end local v2           #maxEditDistanceOfNativeDictionary:I
    :cond_6
    div-int/lit8 v5, v4, 0x2

    move v2, v5

    goto :goto_1

    .restart local v1       #distance:I
    .restart local v2       #maxEditDistanceOfNativeDictionary:I
    :cond_7
    move v5, v8

    .line 147
    goto/16 :goto_0
.end method
