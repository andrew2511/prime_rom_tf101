.class public abstract Lgov/nist/javax/sip/header/SIPHeaderList;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPHeaderList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljavax/sip/header/Header;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HDR:",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        ">",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        "Ljava/util/List",
        "<THDR;>;",
        "Ljavax/sip/header/Header;"
    }
.end annotation


# static fields
.field private static prettyEncode:Z


# instance fields
.field protected hlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation
.end field

.field private myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<THDR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 64
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "hname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<THDR;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, objclass:Ljava/lang/Class;,"Ljava/lang/Class<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>()V

    .line 78
    iput-object p2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 80
    return-void
.end method

.method public static setPrettyEncode(Z)V
    .registers 1
    .parameter "flag"

    .prologue
    .line 660
    sput-boolean p0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    .line 661
    return-void
.end method


# virtual methods
.method public add(ILgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 381
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(ILgov/nist/javax/sip/header/SIPHeader;)V

    return-void
.end method

.method public add(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .registers 3
    .parameter
    .parameter "top"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, sipheader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    if-eqz p2, :cond_6

    .line 114
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V

    .line 117
    :goto_5
    return-void

    .line 116
    :cond_6
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto :goto_5
.end method

.method public add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, objectToAdd:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    .end local p1
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+THDR;>;)Z"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+THDR;>;)Z"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, obj:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 536
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 450
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 452
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 453
    .local v1, cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 454
    .local v3, retval:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    iput-object v4, v3, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 455
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    iput-object v4, v3, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 456
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v4

    return-object v4

    .line 457
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #retval:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :catch_23
    move-exception v4

    move-object v2, v4

    .line 458
    .local v2, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not clone!"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected final clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<THDR;>;)",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, hlistToClone:Ljava/util/List;,"Ljava/util/List<THDR;>;"
    if-eqz p1, :cond_1e

    .line 464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<THDR;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 465
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/Header;

    .line 466
    .local v0, h:Ljavax/sip/header/Header;
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 469
    .end local v0           #h:Ljavax/sip/header/Header;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<THDR;>;"
    :cond_1e
    return-object p0
.end method

.method public concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V
    .registers 4
    .parameter
    .parameter "topFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<THDR;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, other:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    if-nez p2, :cond_6

    .line 134
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(Ljava/util/Collection;)Z

    .line 140
    :goto_5
    return-void

    .line 137
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(ILjava/util/Collection;)Z

    goto :goto_5
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "header"

    .prologue
    .line 540
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public debugDump()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 8
    .parameter "indentation"

    .prologue
    .line 327
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const-string v4, ""

    iput-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    .line 328
    new-instance v4, Lgov/nist/javax/sip/header/Indentation;

    invoke-direct {v4, p1}, Lgov/nist/javax/sip/header/Indentation;-><init>(I)V

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Indentation;->getIndentation()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, indent:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, className:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 334
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<THDR;>;"
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 336
    .local v3, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    goto :goto_45

    .line 338
    .end local v3           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    return-object v4
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "buffer"

    .prologue
    .line 155
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 156
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_19
    :goto_19
    return-object p1

    .line 161
    :cond_1a
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "WWW-Authenticate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Proxy-Authenticate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    sget-boolean v2, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    if-eqz v2, :cond_64

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Via"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Route"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Record-Route"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    :cond_64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 168
    :cond_70
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 169
    .local v0, li:Ljava/util/ListIterator;,"Ljava/util/ListIterator<THDR;>;"
    :goto_76
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 170
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 171
    .local v1, sipheader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_76

    .line 176
    .end local v0           #li:Ljava/util/ListIterator;,"Ljava/util/ListIterator<THDR;>;"
    .end local v1           #sipheader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    :cond_86
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 178
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19
.end method

.method protected encodeBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .parameter "buffer"

    .prologue
    .line 500
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 502
    .local v0, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<THDR;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 503
    .local v1, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    if-ne v1, p0, :cond_14

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected circularity in SipHeaderList"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_14
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 506
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 507
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Privacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 508
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 510
    :cond_2d
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 516
    :cond_33
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 396
    if-ne p1, p0, :cond_6

    move v2, v4

    .line 407
    :goto_5
    return v2

    .line 399
    :cond_6
    instance-of v2, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_33

    .line 400
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    move-object v1, v0

    .line 401
    .local v1, that:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne v2, v3, :cond_16

    move v2, v4

    .line 402
    goto :goto_5

    .line 403
    :cond_16
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-nez v2, :cond_2a

    .line 404
    iget-object v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    move v2, v4

    goto :goto_5

    :cond_28
    move v2, v5

    goto :goto_5

    .line 405
    :cond_2a
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .end local v1           #that:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_33
    move v2, v5

    .line 407
    goto :goto_5
.end method

.method public get(I)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->get(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljavax/sip/header/Header;
    .registers 3

    .prologue
    .line 212
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 213
    :cond_c
    const/4 v0, 0x0

    .line 215
    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :goto_d
    return-object v0

    .restart local p0       #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p0, Ljavax/sip/header/Header;

    move-object v0, p0

    goto :goto_d
.end method

.method public getHeaderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    return-object v0
.end method

.method public getHeadersAsEncodedStrings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 195
    .local v1, retval:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 196
    .local v0, li:Ljava/util/ListIterator;,"Ljava/util/ListIterator<THDR;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 197
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    .line 198
    .local v2, sipheader:Ljavax/sip/header/Header;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 202
    .end local v2           #sipheader:Ljavax/sip/header/Header;
    :cond_1f
    return-object v1
.end method

.method public getLast()Ljavax/sip/header/Header;
    .registers 4

    .prologue
    .line 224
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 225
    :cond_c
    const/4 v0, 0x0

    .line 226
    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :goto_d
    return-object v0

    .restart local p0       #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :cond_e
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p0, Ljavax/sip/header/Header;

    move-object v0, p0

    goto :goto_d
.end method

.method public getMyClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 644
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lgov/nist/core/GenericObject;)I
    .registers 3
    .parameter "gobj"

    .prologue
    .line 367
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "obj"

    .prologue
    .line 562
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 244
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isHeaderList()Z
    .registers 2

    .prologue
    .line 486
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "obj"

    .prologue
    .line 584
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public match(Lgov/nist/javax/sip/header/SIPHeaderList;)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, template:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 415
    if-nez p1, :cond_6

    move v6, v9

    .line 438
    :goto_5
    return v6

    .line 417
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    move v6, v8

    .line 418
    goto :goto_5

    .line 419
    :cond_16
    move-object v5, p1

    .line 420
    .local v5, that:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v7, v5, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne v6, v7, :cond_1f

    move v6, v9

    .line 421
    goto :goto_5

    .line 422
    :cond_1f
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-nez v6, :cond_25

    move v6, v8

    .line 423
    goto :goto_5

    .line 426
    :cond_25
    iget-object v6, v5, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 429
    .local v3, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v0, 0x0

    .line 430
    .local v0, found:Z
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    .local v2, it1:Ljava/util/Iterator;,"Ljava/util/Iterator<THDR;>;"
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    if-nez v0, :cond_51

    .line 432
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 433
    .local v4, sipHeader1:Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v0

    .line 434
    goto :goto_3e

    .line 435
    .end local v4           #sipHeader1:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_51
    if-nez v0, :cond_2b

    move v6, v8

    .line 436
    goto :goto_5

    .end local v0           #found:Z
    .end local v2           #it1:Ljava/util/Iterator;,"Ljava/util/Iterator<THDR;>;"
    .end local v3           #sipHeader:Lgov/nist/javax/sip/header/SIPHeader;
    :cond_55
    move v6, v9

    .line 438
    goto :goto_5
.end method

.method public remove(I)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->remove(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, obj:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 597
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()V
    .registers 3

    .prologue
    .line 281
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    :cond_e
    return-void
.end method

.method public removeLast()V
    .registers 4

    .prologue
    .line 290
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 291
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    :cond_15
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)THDR;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, sipHeader:Lgov/nist/javax/sip/header/SIPHeader;,"THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method protected setMyClass(Ljava/lang/Class;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<THDR;>;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<THDR;>;"
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 317
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 476
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .parameter "index1"
    .parameter "index2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 357
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, this:Lgov/nist/javax/sip/header/SIPHeaderList;,"Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
