.class public Lgov/nist/javax/sip/header/UserAgent;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "UserAgent.java"

# interfaces
.implements Ljavax/sip/header/UserAgentHeader;


# static fields
.field private static final serialVersionUID:J = 0x3f4cc6de175b3c07L


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    const-string v0, "User-Agent"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    .line 83
    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .registers 4

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v1, tokens:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 63
    .end local p0
    .local v0, it:Ljava/util/ListIterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 64
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 67
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .registers 3
    .parameter "pt"

    .prologue
    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 121
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/UserAgent;

    .line 122
    .local v0, retval:Lgov/nist/javax/sip/header/UserAgent;
    iget-object v1, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 123
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    .line 124
    :cond_13
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Lgov/nist/javax/sip/header/UserAgent;->encodeProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    :cond_c
    const/4 v0, 0x0

    .line 101
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_d
.end method

.method public setProduct(Ljava/util/List;)V
    .registers 4
    .parameter "product"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_a

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, UserAgent, setProduct(), the  product parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_a
    iput-object p1, p0, Lgov/nist/javax/sip/header/UserAgent;->productTokens:Ljava/util/List;

    .line 118
    return-void
.end method
