.class public Lcom/google/android/youtube/core/utils/UriRewriter;
.super Ljava/lang/Object;
.source "UriRewriter.java"


# instance fields
.field private final resolver:Landroid/content/ContentResolver;

.field private final rules:Lcom/google/android/common/http/UrlRules;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/UriRewriter;->resolver:Landroid/content/ContentResolver;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/UriRewriter;->rules:Lcom/google/android/common/http/UrlRules;

    .line 29
    return-void
.end method

.method private getRules()Lcom/google/android/common/http/UrlRules;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/UriRewriter;->rules:Lcom/google/android/common/http/UrlRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/utils/UriRewriter;->rules:Lcom/google/android/common/http/UrlRules;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/UriRewriter;->resolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final rewrite(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, uriString:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, rewritten:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public final rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/youtube/core/utils/UriRewriter;->getRules()Lcom/google/android/common/http/UrlRules;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v0

    .line 37
    .local v0, rule:Lcom/google/android/common/http/UrlRules$Rule;
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
