.class public final Lorg/apache/harmony/security/UnresolvedPrincipal;
.super Ljava/lang/Object;
.source "UnresolvedPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field private final klass:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "klass"
    .parameter "name"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_11
    iput-object p1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "that"

    .prologue
    const/4 v4, 0x0

    .line 92
    instance-of v2, p1, Lorg/apache/harmony/security/UnresolvedPrincipal;

    if-eqz v2, :cond_29

    .line 93
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/UnresolvedPrincipal;

    move-object v1, v0

    .line 94
    .local v1, up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, v1, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v2, :cond_27

    :cond_1b
    const/4 v2, 0x1

    .line 100
    .end local v1           #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    .end local p1
    :goto_1c
    return v2

    .line 94
    .restart local v1       #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    .restart local p1
    :cond_1d
    iget-object v2, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_27
    move v2, v4

    goto :goto_1c

    .line 97
    .end local v1           #up:Lorg/apache/harmony/security/UnresolvedPrincipal;
    :cond_29
    instance-of v2, p1, Ljava/security/Principal;

    if-eqz v2, :cond_34

    .line 98
    check-cast p1, Ljava/security/Principal;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/UnresolvedPrincipal;->implies(Ljava/security/Principal;)Z

    move-result v2

    goto :goto_1c

    .restart local p1
    :cond_34
    move v2, v4

    .line 100
    goto :goto_1c
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 127
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 129
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 130
    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 132
    :cond_17
    return v0
.end method

.method public implies(Ljava/security/Principal;)Z
    .registers 4
    .parameter "another"

    .prologue
    .line 113
    if-eqz p1, :cond_3e

    const-string v0, "*"

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "*"

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    if-nez v0, :cond_32

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    iget-object v0, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_3e
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Principal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->klass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/UnresolvedPrincipal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
