.class public Lcom/amazon/kcp/util/LocalizedStringComparator;
.super Ljava/lang/Object;
.source "LocalizedStringComparator.java"

# interfaces
.implements Lcom/amazon/kcp/util/ILocalizedStringComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getComparableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "s"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/amazon/kcp/util/LocalizedStringComparator;->getStopWords()[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, stopwords:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 49
    .local v4, tempChars:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 51
    aget-char v6, v4, v0

    invoke-static {v6}, Lcom/mobipocket/common/parser/UnicodeUtils;->sortOrder(C)C

    move-result v6

    aput-char v6, v4, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    .line 54
    .local v5, tempString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, nextWordIdx:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/amazon/kcp/util/LocalizedStringComparator;->isDigitOrLowerCaseLetter(C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v6, v3

    if-ge v0, v6, :cond_5

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 67
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 71
    :cond_2
    const/4 v6, 0x1

    sub-int v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, rval:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 75
    .end local v2           #rval:Ljava/lang/String;
    :goto_4
    return-object v6

    .line 72
    .restart local v2       #rval:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 62
    .end local v2           #rval:Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method protected getStopWords()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "an"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "the"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected isDigitOrLowerCaseLetter(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 87
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localeCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "firstString"
    .parameter "secondString"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/LocalizedStringComparator;->getComparableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/util/LocalizedStringComparator;->getComparableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
