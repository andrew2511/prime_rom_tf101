.class public Lorg/xml/sax/helpers/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/NamespaceSupport$Context;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration; = null

.field public static final NSDECL:Ljava/lang/String; = "http://www.w3.org/xmlns/2000/"

.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private contextPos:I

.field private contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private namespaceDeclUris:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lorg/xml/sax/helpers/NamespaceSupport;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/Enumeration;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 295
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 296
    :cond_10
    const/4 v0, 0x0

    .line 299
    :goto_11
    return v0

    .line 298
    :cond_12
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 418
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 6
    .parameter "uri"

    .prologue
    .line 447
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 448
    .local v2, prefixes:Ljava/util/Vector;
    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    .line 449
    .local v0, allPrefixes:Ljava/util/Enumeration;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 450
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 452
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    .line 455
    .end local v1           #prefix:Ljava/lang/String;
    :cond_23
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 373
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNamespaceDeclUris()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method public popContext()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->clear()V

    .line 241
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 242
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-gez v0, :cond_19

    .line 243
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 245
    :cond_19
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 246
    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 9
    .parameter "qName"
    .parameter "parts"
    .parameter "isAttribute"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v1, p1, p3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, myParts:[Ljava/lang/String;
    if-nez v0, :cond_d

    .line 349
    const/4 v1, 0x0

    .line 354
    :goto_c
    return-object v1

    .line 351
    :cond_d
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    .line 352
    aget-object v1, v0, v3

    aput-object v1, p2, v3

    .line 353
    aget-object v1, v0, v4

    aput-object v1, p2, v4

    move-object v1, p2

    .line 354
    goto :goto_c
.end method

.method public pushContext()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    array-length v0, v2

    .line 201
    .local v0, max:I
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-boolean v4, v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 202
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 205
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lt v2, v0, :cond_23

    .line 206
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 207
    .local v1, newContexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    mul-int/lit8 v0, v0, 0x2

    .line 209
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 213
    .end local v1           #newContexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;
    :cond_23
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 214
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    if-nez v2, :cond_3c

    .line 215
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v4, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v4, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v4, v2, v3

    .line 219
    :cond_3c
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lez v2, :cond_4d

    .line 220
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget-object v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V

    .line 222
    :cond_4d
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 153
    const/16 v0, 0x20

    new-array v0, v0, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 154
    iput-boolean v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    .line 155
    iput v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    .line 156
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 157
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setNamespaceDeclUris(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 492
    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-eqz v0, :cond_a

    .line 493
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 494
    :cond_a
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    if-ne p1, v0, :cond_f

    .line 503
    :goto_e
    return-void

    .line 496
    :cond_f
    iput-boolean p1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    .line 497
    if-eqz p1, :cond_1d

    .line 498
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/xmlns/2000/"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 500
    :cond_1d
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    .line 501
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method
