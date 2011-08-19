.class public Lcom/android/providers/calendar/QueryParameterUtils;
.super Ljava/lang/Object;
.source "QueryParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v6, v8

    .line 71
    :goto_0
    return-object v6

    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 42
    .local v4, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 45
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 47
    .local v1, index:I
    :cond_1
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 48
    if-ne v1, v9, :cond_2

    move-object v6, v8

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    add-int/2addr v1, v2

    .line 54
    if-ne v4, v1, :cond_3

    move-object v6, v8

    .line 55
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 64
    const/16 v6, 0x26

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 65
    .local v0, ampIndex:I
    if-ne v0, v9, :cond_4

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, value:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 68
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "uri"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, flag:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    :goto_0
    return v1

    :cond_0
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
