.class public Lcom/google/android/finsky/utils/UrlIntentFilter;
.super Ljava/lang/Object;
.source "UrlIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/UrlIntentFilter$Result;
    }
.end annotation


# static fields
.field private static final sUrlPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 48
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/UrlIntentFilter;->sUrlPatterns:Ljava/util/Map;

    .line 52
    const-string v0, "https?://market\\.android\\.com/details\\?.*id=app[:-]([^=&]+).*"

    invoke-static {v0, v4, v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 54
    const-string v0, "https?://market\\.android\\.com/details\\?.*id=book[:-]([^=&]+).*"

    invoke-static {v0, v4, v2}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 56
    const-string v0, "https?://market\\.android\\.com/details\\?.*id=movie[:-]([^=&]+).*"

    invoke-static {v0, v4, v5}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 58
    const-string v0, "https?://market\\.android\\.com/details\\?.*id=([^=&]+).*"

    invoke-static {v0, v4, v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 61
    const-string v0, "https?://market\\.android\\.com/search\\?.*q=([^=&]+).*"

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 65
    const-string v0, "market://details\\?id=(.*)"

    invoke-static {v0, v4, v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 66
    const-string v0, "market://search\\?q=(.*)"

    invoke-static {v0, v3, v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 70
    const-string v0, "https?://market\\.android\\.com/books/search\\?.*q=([^=&]+).*"

    invoke-static {v0, v3, v2}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 72
    const-string v0, "https?://market\\.android\\.com/books/(.+)/buy"

    invoke-static {v0, v5, v2}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 74
    const-string v0, "https?://market\\.android\\.com/books/([^=&]+).*"

    invoke-static {v0, v4, v2}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 79
    const-string v0, "https?://market\\.android\\.com/?"

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 81
    const-string v0, "https?://market\\.android\\.com/apps/?"

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 82
    const-string v0, "https?://market\\.android\\.com/books/?"

    invoke-static {v0, v2, v2}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 83
    const-string v0, "https?://market\\.android\\.com/movies/?"

    invoke-static {v0, v2, v5}, Lcom/google/android/finsky/utils/UrlIntentFilter;->addUriPattern(Ljava/lang/String;II)V

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static addUriPattern(Ljava/lang/String;II)V
    .locals 3
    .parameter "regex"
    .parameter "type"
    .parameter "backend"

    .prologue
    .line 87
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 88
    .local v0, pattern:Ljava/util/regex/Pattern;
    sget-object v1, Lcom/google/android/finsky/utils/UrlIntentFilter;->sUrlPatterns:Ljava/util/Map;

    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public static matchUri(Ljava/lang/String;)Lcom/google/android/finsky/utils/UrlIntentFilter$Result;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 99
    sget-object v7, Lcom/google/android/finsky/utils/UrlIntentFilter;->sUrlPatterns:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 100
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 101
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    sget-object v7, Lcom/google/android/finsky/utils/UrlIntentFilter;->sUrlPatterns:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 103
    .local v6, typeAndBackend:I
    shr-int/lit8 v5, v6, 0x10

    .line 104
    .local v5, type:I
    const v7, 0xffff

    and-int v0, v6, v7

    .line 105
    .local v0, backend:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 106
    .local v1, extra:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v7, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;

    invoke-direct {v7, v5, v0, v1}, Lcom/google/android/finsky/utils/UrlIntentFilter$Result;-><init>(IILjava/lang/String;)V

    .line 110
    .end local v0           #backend:I
    .end local v1           #extra:Ljava/lang/String;
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    .end local v5           #type:I
    .end local v6           #typeAndBackend:I
    :goto_1
    return-object v7

    .restart local v0       #backend:I
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    .restart local v4       #pattern:Ljava/util/regex/Pattern;
    .restart local v5       #type:I
    .restart local v6       #typeAndBackend:I
    :cond_1
    move-object v1, v8

    .line 105
    goto :goto_0

    .end local v0           #backend:I
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #pattern:Ljava/util/regex/Pattern;
    .end local v5           #type:I
    .end local v6           #typeAndBackend:I
    .restart local p0
    :cond_2
    move-object v7, v8

    .line 110
    goto :goto_1
.end method
