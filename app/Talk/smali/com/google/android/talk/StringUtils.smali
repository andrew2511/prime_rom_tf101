.class public Lcom/google/android/talk/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAbbreviatedAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xmppAddress"

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 38
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 39
    .local v0, index:I
    if-gez v0, :cond_1

    move-object v1, p0

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xmppAddress"

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 24
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 25
    .local v0, slashIndex:I
    if-gez v0, :cond_1

    move-object v1, p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    const-string v1, ""

    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
