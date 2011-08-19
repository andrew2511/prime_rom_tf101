.class public Lorg/apache/harmony/security/PolicyEntry;
.super Ljava/lang/Object;
.source "PolicyEntry.java"


# instance fields
.field private final cs:Ljava/security/CodeSource;

.field private final permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private final principals:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/security/CodeSource;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .parameter "cs"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/CodeSource;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, prs:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/security/Principal;>;"
    .local p3, permissions:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/security/Permission;>;"
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_23

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/PolicyEntry;->normalizeCodeSource(Ljava/security/CodeSource;)Ljava/security/CodeSource;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    .line 59
    if-eqz p2, :cond_14

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_14
    move-object v0, v1

    :goto_15
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->principals:[Ljava/security/Principal;

    .line 61
    if-eqz p3, :cond_1f

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_1f
    move-object v0, v1

    :goto_20
    iput-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    .line 63
    return-void

    :cond_23
    move-object v0, v1

    .line 58
    goto :goto_a

    .line 59
    :cond_25
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/Principal;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    goto :goto_15

    .line 61
    :cond_32
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_20
.end method

.method private normalizeCodeSource(Ljava/security/CodeSource;)Ljava/security/CodeSource;
    .registers 6
    .parameter "codeSource"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->normalizeURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v0

    .line 83
    .local v0, codeSourceURL:Ljava/net/URL;
    move-object v1, p1

    .line 85
    .local v1, result:Ljava/security/CodeSource;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    if-eq v0, v3, :cond_1e

    .line 87
    invoke-virtual {p1}, Ljava/security/CodeSource;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v2

    .line 88
    .local v2, signers:[Ljava/security/CodeSigner;
    if-nez v2, :cond_1f

    .line 89
    new-instance v1, Ljava/security/CodeSource;

    .end local v1           #result:Ljava/security/CodeSource;
    invoke-virtual {p1}, Ljava/security/CodeSource;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 95
    .end local v2           #signers:[Ljava/security/CodeSigner;
    .restart local v1       #result:Ljava/security/CodeSource;
    :cond_1e
    :goto_1e
    return-object v1

    .line 92
    .restart local v2       #signers:[Ljava/security/CodeSigner;
    :cond_1f
    new-instance v1, Ljava/security/CodeSource;

    .end local v1           #result:Ljava/security/CodeSource;
    invoke-direct {v1, v0, v2}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .restart local v1       #result:Ljava/security/CodeSource;
    goto :goto_1e
.end method


# virtual methods
.method public getPermissions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    return-object v0
.end method

.method public impliesCodeSource(Ljava/security/CodeSource;)Z
    .registers 4
    .parameter "codeSource"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    if-nez v0, :cond_6

    .line 72
    const/4 v0, 0x1

    .line 78
    :goto_5
    return v0

    .line 75
    :cond_6
    if-nez p1, :cond_a

    .line 76
    const/4 v0, 0x0

    goto :goto_5

    .line 78
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->cs:Ljava/security/CodeSource;

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/PolicyEntry;->normalizeCodeSource(Ljava/security/CodeSource;)Ljava/security/CodeSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/CodeSource;->implies(Ljava/security/CodeSource;)Z

    move-result v0

    goto :goto_5
.end method

.method public impliesPrincipals([Ljava/security/Principal;)Z
    .registers 3
    .parameter "prs"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->principals:[Ljava/security/Principal;

    invoke-static {v0, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoid()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/harmony/security/PolicyEntry;->permissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
