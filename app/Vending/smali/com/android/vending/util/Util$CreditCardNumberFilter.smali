.class public Lcom/android/vending/util/Util$CreditCardNumberFilter;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreditCardNumberFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .parameter "cc"

    .prologue
    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 295
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 296
    .local v0, c:C
    invoke-static {v0}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->isNumber(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isAllowed(CC)Z
    .locals 1
    .parameter "c"
    .parameter "lastChar"

    .prologue
    .line 289
    invoke-static {p0}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->isNumber(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->isNumber(C)Z

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

.method private static isNumber(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 281
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 285
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 252
    if-lez p5, :cond_0

    const/4 v7, 0x1

    sub-int v7, p5, v7

    invoke-interface {p4, v7}, Landroid/text/Spanned;->charAt(I)C

    move-result v7

    move v3, v7

    .line 253
    .local v3, lastChar:C
    :goto_0
    sub-int v4, p3, p2

    .line 255
    .local v4, len:I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 256
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 257
    .local v0, c:C
    invoke-static {v0, v3}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->isAllowed(CC)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    .line 277
    .end local v0           #c:C
    :goto_1
    return-object v7

    .line 252
    .end local v3           #lastChar:C
    .end local v4           #len:I
    :cond_0
    const/4 v7, 0x0

    move v3, v7

    goto :goto_0

    .line 257
    .restart local v0       #c:C
    .restart local v3       #lastChar:C
    .restart local v4       #len:I
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 258
    .end local v0           #c:C
    :cond_2
    if-nez v4, :cond_3

    .line 259
    const/4 v7, 0x0

    goto :goto_1

    .line 262
    :cond_3
    new-array v5, v4, [C

    .line 263
    .local v5, out:[C
    const/4 v6, 0x0

    .line 264
    .local v6, outidx:I
    const/4 v1, 0x0

    .line 265
    .local v1, filtered:Z
    move v2, p2

    .local v2, i:I
    :goto_2
    if-ge v2, p3, :cond_5

    .line 266
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 267
    .restart local v0       #c:C
    invoke-static {v0, v3}, Lcom/android/vending/util/Util$CreditCardNumberFilter;->isAllowed(CC)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 268
    aput-char v0, v5, v6

    .line 269
    move v3, v0

    .line 265
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 271
    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    .line 274
    .end local v0           #c:C
    :cond_5
    if-eqz v1, :cond_6

    .line 275
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 277
    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method
