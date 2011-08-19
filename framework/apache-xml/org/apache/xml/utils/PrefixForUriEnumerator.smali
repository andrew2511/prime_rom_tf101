.class Lorg/apache/xml/utils/PrefixForUriEnumerator;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private allPrefixes:Ljava/util/Enumeration;

.field private lookahead:Ljava/lang/String;

.field private nsup:Lorg/apache/xml/utils/NamespaceSupport2;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V
    .registers 5
    .parameter "nsup"
    .parameter "uri"
    .parameter "allPrefixes"

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->nsup:Lorg/apache/xml/utils/NamespaceSupport2;

    .line 400
    iput-object p2, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->uri:Ljava/lang/String;

    .line 401
    iput-object p3, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    .line 402
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 406
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    if-eqz v1, :cond_7

    move v1, v3

    .line 418
    :goto_6
    return v1

    .line 409
    :cond_7
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 411
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->allPrefixes:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    .local v0, prefix:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->uri:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->nsup:Lorg/apache/xml/utils/NamespaceSupport2;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/NamespaceSupport2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 414
    iput-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    move v1, v3

    .line 415
    goto :goto_6

    .line 418
    .end local v0           #prefix:Ljava/lang/String;
    :cond_29
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/apache/xml/utils/PrefixForUriEnumerator;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 425
    iget-object v0, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    .line 426
    .local v0, tmp:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/utils/PrefixForUriEnumerator;->lookahead:Ljava/lang/String;

    .line 427
    return-object v0

    .line 430
    .end local v0           #tmp:Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
