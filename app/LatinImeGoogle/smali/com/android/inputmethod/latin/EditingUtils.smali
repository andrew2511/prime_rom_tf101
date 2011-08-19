.class public Lcom/android/inputmethod/latin/EditingUtils;
.super Ljava/lang/Object;
.source "EditingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;,
        Lcom/android/inputmethod/latin/EditingUtils$Range;
    }
.end annotation


# static fields
.field private static sMethodGetSelectedText:Ljava/lang/reflect/Method;

.field private static sMethodSetComposingRegion:Ljava/lang/reflect/Method;

.field private static sMethodsInitialized:Z

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .parameter "connection"
    .parameter "newText"

    .prologue
    const/4 v4, 0x1

    .line 51
    if-nez p0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 59
    move-object v1, p1

    .line 60
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v4, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 61
    .local v0, charBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_1
    invoke-interface {p0, v1, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private static getCursorPosition(Landroid/view/inputmethod/InputConnection;)I
    .locals 3
    .parameter "connection"

    .prologue
    .line 71
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 73
    .local v0, extracted:Landroid/view/inputmethod/ExtractedText;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, -0x1

    .line 76
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "connection"
    .parameter "sentenceSeperators"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 172
    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 173
    .local v1, prev:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    move-object v3, v7

    .line 184
    :goto_0
    return-object v3

    .line 176
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtils;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, w:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v6, :cond_2

    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 178
    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v3, v2, v3

    array-length v4, v2

    sub-int/2addr v4, v6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v7

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v3, v2, v3

    goto :goto_0

    .end local v0           #lastChar:C
    :cond_2
    move-object v3, v7

    .line 184
    goto :goto_0
.end method

.method private static getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "ic"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v6, 0x0

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, result:Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/android/inputmethod/latin/EditingUtils;->sMethodsInitialized:Z

    if-nez v2, :cond_0

    .line 282
    invoke-static {}, Lcom/android/inputmethod/latin/EditingUtils;->initializeMethodsForReflection()V

    .line 284
    :cond_0
    sget-object v2, Lcom/android/inputmethod/latin/EditingUtils;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 286
    :try_start_0
    sget-object v2, Lcom/android/inputmethod/latin/EditingUtils;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #result:Ljava/lang/CharSequence;
    move-object v1, v0

    .line 303
    .end local v0           #result:Ljava/lang/CharSequence;
    .local v1, result:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 292
    .end local v1           #result:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 300
    :cond_1
    :goto_1
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 301
    sub-int v2, p2, p1

    invoke-interface {p0, v2, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 302
    .restart local v0       #result:Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-object v1, v0

    .line 303
    .end local v0           #result:Ljava/lang/CharSequence;
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_0

    .line 290
    .end local v1           #result:Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 288
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "connection"
    .parameter "separators"

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;

    move-result-object v0

    .line 88
    .local v0, r:Lcom/android/inputmethod/latin/EditingUtils$Range;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    .locals 10
    .parameter "ic"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "wordSeparators"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 223
    if-ne p1, p2, :cond_0

    .line 225
    invoke-static {p0, p3}, Lcom/android/inputmethod/latin/EditingUtils;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;

    move-result-object v4

    .line 226
    .local v4, range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    if-eqz v4, :cond_6

    iget-object v6, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 227
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    iget v7, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsBefore:I

    sub-int v7, p1, v7

    iget v8, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mCharsAfter:I

    add-int/2addr v8, p2

    iget-object v9, v4, Lcom/android/inputmethod/latin/EditingUtils$Range;->mWord:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    .line 256
    .end local v4           #range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    :goto_0
    return-object v6

    .line 232
    :cond_0
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 233
    .local v1, charsBefore:Ljava/lang/CharSequence;
    invoke-static {v1, p3}, Lcom/android/inputmethod/latin/EditingUtils;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v7

    .line 234
    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 239
    .local v0, charsAfter:Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lcom/android/inputmethod/latin/EditingUtils;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v7

    .line 240
    goto :goto_0

    .line 244
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/EditingUtils;->getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 245
    .local v5, touching:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v7

    goto :goto_0

    .line 247
    :cond_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 248
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 249
    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v7

    .line 250
    goto :goto_0

    .line 248
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_5
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    invoke-direct {v6, p1, p2, v5}, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;-><init>(IILjava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #charsAfter:Ljava/lang/CharSequence;
    .end local v1           #charsBefore:Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #touching:Ljava/lang/CharSequence;
    .restart local v4       #range:Lcom/android/inputmethod/latin/EditingUtils$Range;
    :cond_6
    move-object v6, v7

    .line 256
    goto :goto_0
.end method

.method private static getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$Range;
    .locals 11
    .parameter "connection"
    .parameter "sep"

    .prologue
    const/16 v6, 0x3e8

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 134
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v6, v10

    .line 160
    :goto_0
    return-object v6

    .line 137
    :cond_1
    invoke-interface {p0, v6, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    .local v1, before:Ljava/lang/CharSequence;
    invoke-interface {p0, v6, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    .local v0, after:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move-object v6, v10

    .line 140
    goto :goto_0

    .line 144
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 145
    .local v4, start:I
    :goto_1
    if-lez v4, :cond_4

    const/4 v6, 0x1

    sub-int v6, v4, v6

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6, p1}, Lcom/android/inputmethod/latin/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 148
    :cond_4
    const/4 v3, -0x1

    .line 149
    .local v3, end:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6, p1}, Lcom/android/inputmethod/latin/EditingUtils;->isWhitespace(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 153
    :cond_6
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtils;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 154
    .local v2, cursor:I
    if-ltz v4, :cond_7

    add-int v6, v2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_7

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, word:Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtils$Range;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-direct {v6, v7, v3, v5}, Lcom/android/inputmethod/latin/EditingUtils$Range;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .end local v5           #word:Ljava/lang/String;
    :cond_7
    move-object v6, v10

    .line 160
    goto :goto_0
.end method

.method private static initializeMethodsForReflection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 266
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtils;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    .line 267
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtils;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    sput-boolean v5, Lcom/android/inputmethod/latin/EditingUtils;->sMethodsInitialized:Z

    .line 273
    return-void

    .line 269
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isWhitespace(ILjava/lang/String;)Z
    .locals 1
    .parameter "code"
    .parameter "whitespace"

    .prologue
    .line 164
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .parameter "singleChar"
    .parameter "wordSeparators"

    .prologue
    .line 208
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)V
    .locals 4
    .parameter "ic"
    .parameter "word"

    .prologue
    .line 313
    sget-boolean v0, Lcom/android/inputmethod/latin/EditingUtils;->sMethodsInitialized:Z

    if-nez v0, :cond_0

    .line 314
    invoke-static {}, Lcom/android/inputmethod/latin/EditingUtils;->initializeMethodsForReflection()V

    .line 316
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/EditingUtils;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 318
    :try_start_0
    sget-object v0, Lcom/android/inputmethod/latin/EditingUtils;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_1
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0

    .line 321
    :catch_1
    move-exception v0

    goto :goto_0

    .line 319
    :catch_2
    move-exception v0

    goto :goto_0
.end method
