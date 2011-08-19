.class public abstract Lcom/android/inputmethod/latin/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Dictionary$WordCallback;,
        Lcom/android/inputmethod/latin/Dictionary$DataType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .locals 0
    .parameter "composer"
    .parameter "previousWord"
    .parameter "callback"

    .prologue
    .line 78
    return-void
.end method

.method public abstract getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .locals 4
    .parameter "word"
    .parameter "length"
    .parameter "typedWord"

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v1, p2, :cond_0

    move v1, v3

    .line 104
    :goto_0
    return v1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 100
    aget-char v1, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 101
    goto :goto_0

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
