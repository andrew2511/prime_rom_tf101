.class public Lorg/scribe/utils/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Received an invalid parameter"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "[a-zA-Z_-]+://\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/scribe/utils/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(ZLjava/lang/String;)V
    .locals 2
    .parameter "requirements"
    .parameter "error"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "Received an invalid parameter"

    move-object v0, v1

    .line 78
    .local v0, message:Ljava/lang/String;
    :goto_0
    if-nez p0, :cond_2

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #message:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 77
    goto :goto_0

    .line 82
    .restart local v0       #message:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "string"
    .parameter "errorMsg"

    .prologue
    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "errorMsg"

    .prologue
    .line 27
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkValidOAuthCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "errorMsg"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Lorg/scribe/utils/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "errorMsg"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lorg/scribe/utils/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, p1}, Lorg/scribe/utils/Preconditions;->check(ZLjava/lang/String;)V

    .line 53
    return-void
.end method

.method private static isUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 72
    sget-object v0, Lorg/scribe/utils/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
