.class public Lorg/apache/http/impl/cookie/PublicSuffixListParser;
.super Ljava/lang/Object;
.source "PublicSuffixListParser.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final MAX_LINE_LEN:I = 0x100


# instance fields
.field private final filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/cookie/PublicSuffixFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

    .line 55
    return-void
.end method

.method private readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z
    .locals 7
    .parameter "r"
    .parameter "sb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 100
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, hitWhitespace:Z
    :cond_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .local v0, b:I
    if-eq v0, v5, :cond_1

    .line 104
    int-to-char v1, v0

    .line 105
    .local v1, c:C
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 111
    .end local v1           #c:C
    :cond_1
    if-eq v0, v5, :cond_5

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 107
    .restart local v1       #c:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 108
    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Line too long"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #c:C
    :cond_5
    move v3, v6

    .line 111
    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)V
    .locals 9
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v5, rules:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, exceptions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .local v4, r:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 71
    .local v3, more:Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    .line 72
    invoke-direct {p0, v4, v6}, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->readLine(Ljava/io/Reader;Ljava/lang/StringBuilder;)Z

    move-result v3

    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 76
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    :cond_1
    const-string v7, "!"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 79
    .local v1, isException:Z
    if-eqz v1, :cond_2

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_2
    if-eqz v1, :cond_3

    .line 82
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_3
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v1           #isException:Z
    .end local v2           #line:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->setPublicSuffixes(Ljava/util/Collection;)V

    .line 89
    iget-object v7, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

    invoke-virtual {v7, v0}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->setExceptions(Ljava/util/Collection;)V

    .line 90
    return-void
.end method
