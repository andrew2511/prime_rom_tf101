.class Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;
.super Ljava/lang/Object;
.source "ElemNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberFormatStringTokenizer"
.end annotation


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private str:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemNumber;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "str"

    .prologue
    .line 2025
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->this$0:Lorg/apache/xalan/templates/ElemNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    iput-object p2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    .line 2027
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    .line 2028
    return-void
.end method


# virtual methods
.method public countTokens()I
    .registers 5

    .prologue
    .line 2129
    const/4 v0, 0x0

    .line 2130
    .local v0, count:I
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2132
    .local v1, currpos:I
    :goto_3
    iget v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v1, v3, :cond_2e

    .line 2134
    move v2, v1

    .line 2137
    .local v2, start:I
    :goto_8
    iget v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v1, v3, :cond_1b

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2139
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2142
    :cond_1b
    if-ne v2, v1, :cond_2b

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2145
    add-int/lit8 v1, v1, 0x1

    .line 2148
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 2149
    goto :goto_3

    .line 2151
    .end local v2           #start:I
    :cond_2e
    return v0
.end method

.method public hasMoreTokens()Z
    .registers 3

    .prologue
    .line 2114
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isLetterOrDigitAhead()Z
    .registers 3

    .prologue
    .line 2078
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2080
    .local v0, pos:I
    :goto_2
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_17

    .line 2082
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2083
    const/4 v1, 0x1

    .line 2088
    :goto_13
    return v1

    .line 2085
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2088
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public nextIsSep()Z
    .registers 3

    .prologue
    .line 2099
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2100
    const/4 v0, 0x0

    .line 2102
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2048
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_c

    .line 2050
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2053
    :cond_c
    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2056
    .local v0, start:I
    :goto_e
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_29

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2058
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    goto :goto_e

    .line 2061
    :cond_29
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    if-ne v0, v1, :cond_41

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2064
    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2067
    :cond_41
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 2035
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->currentPosition:I

    .line 2036
    return-void
.end method
