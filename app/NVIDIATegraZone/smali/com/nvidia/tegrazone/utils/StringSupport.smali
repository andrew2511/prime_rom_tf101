.class public Lcom/nvidia/tegrazone/utils/StringSupport;
.super Ljava/lang/Object;
.source "StringSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dateText"

    .prologue
    .line 123
    const-string v1, ""

    .line 126
    .local v1, formattedDateText:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "M/d/y"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 128
    .local v2, releaseDate:Ljava/util/Date;
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    .end local v2           #releaseDate:Ljava/util/Date;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 131
    .local v0, ex:Ljava/lang/Exception;
    move-object v1, p0

    goto :goto_0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10
    .parameter "str"
    .parameter "camelCase"

    .prologue
    const/4 v9, 0x1

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v7, 0x0

    .line 109
    .end local p0
    :goto_0
    return-object v7

    .line 83
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 84
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 87
    .local v0, c:[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 89
    .local v5, tokenStart:I
    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 90
    .local v1, currentType:I
    add-int/lit8 v4, v5, 0x1

    .local v4, pos:I
    :goto_1
    array-length v7, v0

    if-lt v4, v7, :cond_2

    .line 108
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v7, p0

    goto :goto_0

    .line 91
    .restart local p0
    :cond_2
    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .line 92
    .local v6, type:I
    if-ne v6, v1, :cond_3

    .line 90
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    :cond_3
    if-eqz p1, :cond_5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 96
    if-ne v1, v9, :cond_5

    .line 97
    sub-int v3, v4, v9

    .line 98
    .local v3, newTokenStart:I
    if-eq v3, v5, :cond_4

    .line 99
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    move v5, v3

    .line 106
    .end local v3           #newTokenStart:I
    :cond_4
    :goto_3
    move v1, v6

    goto :goto_2

    .line 103
    :cond_5
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    move v5, v4

    goto :goto_3
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nvidia/tegrazone/utils/StringSupport;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "maxLength"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 114
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, pos:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .end local v0           #pos:I
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public static underscore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "camelCaseString"

    .prologue
    .line 22
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/StringSupport;->splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, words:[Ljava/lang/String;
    const-string v1, "_"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
