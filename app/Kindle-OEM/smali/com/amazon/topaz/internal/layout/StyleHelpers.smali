.class final Lcom/amazon/topaz/internal/layout/StyleHelpers;
.super Ljava/lang/Object;
.source "StyleHelpers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseColor(Ljava/lang/String;)Lcom/amazon/system/drawing/Color;
    .locals 7
    .parameter "spec"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, r:I
    const/4 v1, 0x0

    .line 73
    .local v1, g:I
    const/4 v0, 0x0

    .line 74
    .local v0, b:I
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, vals:[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 76
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    array-length v4, v3

    if-le v4, v5, :cond_1

    .line 78
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    :goto_0
    array-length v4, v3

    if-le v4, v6, :cond_2

    .line 83
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    :cond_0
    :goto_1
    new-instance v4, Lcom/amazon/system/drawing/Color;

    invoke-direct {v4, v2, v1, v0}, Lcom/amazon/system/drawing/Color;-><init>(III)V

    return-object v4

    .line 80
    :cond_1
    move v1, v2

    goto :goto_0

    .line 85
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static parseMetric(Ljava/lang/String;I)I
    .locals 7
    .parameter "spec"
    .parameter "mSize"

    .prologue
    .line 21
    const/4 v3, 0x0

    .line 22
    .local v3, ret:I
    const/4 v0, 0x0

    .line 23
    .local v0, accum:I
    const/4 v4, 0x1

    .line 24
    .local v4, sign:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 26
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    mul-int/lit8 v5, v0, 0xa

    add-int/2addr v5, v1

    const/16 v6, 0x30

    sub-int v0, v5, v6

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_1

    if-nez v0, :cond_1

    .line 29
    neg-int v4, v4

    goto :goto_1

    .line 31
    :cond_1
    const/16 v5, 0x6d

    if-ne v1, v5, :cond_3

    .line 32
    mul-int/2addr v0, p1

    .line 36
    :cond_2
    :goto_2
    mul-int v5, v0, v4

    add-int/2addr v3, v5

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v0, 0x0

    goto :goto_1

    .line 33
    :cond_3
    const/16 v5, 0x78

    if-ne v1, v5, :cond_2

    .line 34
    div-int/lit8 v5, p1, 0x2

    mul-int/2addr v0, v5

    goto :goto_2

    .line 41
    .end local v1           #ch:C
    :cond_4
    mul-int v5, v0, v4

    add-int/2addr v3, v5

    .line 42
    if-gez v3, :cond_5

    .line 43
    const/4 v3, 0x0

    .line 44
    :cond_5
    return v3
.end method

.method public static stringToBool(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "value"
    .parameter "orig"

    .prologue
    .line 54
    if-nez p0, :cond_0

    move v0, p1

    .line 61
    :goto_0
    return v0

    .line 56
    :cond_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 61
    goto :goto_0
.end method
