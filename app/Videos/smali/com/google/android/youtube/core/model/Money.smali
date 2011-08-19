.class public final Lcom/google/android/youtube/core/model/Money;
.super Ljava/lang/Object;
.source "Money.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final currency:Ljava/util/Currency;

.field private volatile hashCode:I

.field public final value:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "currencyCode"

    .prologue
    .line 41
    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/model/Money;-><init>(ILjava/util/Currency;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/util/Currency;)V
    .locals 0
    .parameter "value"
    .parameter "currency"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    .line 33
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "currencyCode"

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/android/youtube/core/model/Money;->parseValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/core/model/Money;-><init>(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Currency;)V
    .locals 1
    .parameter "value"
    .parameter "currency"

    .prologue
    .line 49
    invoke-static {p1}, Lcom/google/android/youtube/core/model/Money;->parseValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/youtube/core/model/Money;-><init>(ILjava/util/Currency;)V

    .line 50
    return-void
.end method

.method private static parseValue(Ljava/lang/String;)I
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, result:I
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, split:[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_0

    aget-object v3, v2, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v1, v3

    .line 95
    :cond_0
    array-length v3, v2

    if-le v3, v5, :cond_1

    aget-object v3, v2, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    aget-object v3, v2, v5

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, decimalDigits:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_0
    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 99
    .end local v0           #decimalDigits:Ljava/lang/String;
    :cond_1
    return v1

    .line 97
    .restart local v0       #decimalDigits:Ljava/lang/String;
    :cond_2
    const/16 v4, 0xa

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 69
    :goto_0
    return v2

    .line 65
    :cond_0
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Money;

    if-nez v2, :cond_1

    move v2, v4

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/Money;

    move-object v1, v0

    .line 69
    .local v1, m:Lcom/google/android/youtube/core/model/Money;
    iget v2, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    iget v3, v1, Lcom/google/android/youtube/core/model/Money;->value:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/youtube/core/model/Money;->hashCode:I

    .line 75
    .local v0, result:I
    if-nez v0, :cond_0

    .line 76
    const/16 v0, 0x11

    .line 77
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    add-int/lit16 v0, v1, 0x20f

    .line 78
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 79
    iput v0, p0, Lcom/google/android/youtube/core/model/Money;->hashCode:I

    .line 81
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/Money;->value:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currency=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Money;->currency:Ljava/util/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
