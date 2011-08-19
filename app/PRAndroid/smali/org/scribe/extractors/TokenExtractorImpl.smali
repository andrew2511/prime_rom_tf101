.class public Lorg/scribe/extractors/TokenExtractorImpl;
.super Ljava/lang/Object;
.source "TokenExtractorImpl.java"

# interfaces
.implements Lorg/scribe/extractors/RequestTokenExtractor;
.implements Lorg/scribe/extractors/AccessTokenExtractor;


# static fields
.field private static final TOKEN_REGEX:Ljava/lang/String; = "oauth_token=(\\S*)&oauth_token_secret=(\\S*?)(&(.*))?"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Lorg/scribe/model/Token;
    .locals 6
    .parameter "response"

    .prologue
    .line 25
    const-string v3, "Response body is incorrect. Can\'t extract a token from an empty string"

    invoke-static {p1, v3}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v3, "oauth_token=(\\S*)&oauth_token_secret=(\\S*?)(&(.*))?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 28
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/scribe/utils/URLUtils;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, token:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/scribe/utils/URLUtils;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, secret:Ljava/lang/String;
    new-instance v3, Lorg/scribe/model/Token;

    invoke-direct {v3, v2, v1}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 35
    .end local v1           #secret:Ljava/lang/String;
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/scribe/exceptions/OAuthException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response body is incorrect. Can\'t extract a token from this: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
