.class public Lorg/apache/harmony/security/fortress/DefaultPolicyParser;
.super Ljava/lang/Object;
.source "DefaultPolicyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;
    }
.end annotation


# instance fields
.field private final scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/apache/harmony/security/DefaultPolicyScanner;

    invoke-direct {v0}, Lorg/apache/harmony/security/DefaultPolicyScanner;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/DefaultPolicyScanner;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    .line 94
    return-void
.end method


# virtual methods
.method protected getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;
    .registers 7
    .parameter "ks"
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 413
    if-nez p1, :cond_1b

    .line 414
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No KeyStore to resolve principal by alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 418
    .local v0, x509:Ljava/security/cert/Certificate;
    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_2a

    .line 419
    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0           #x509:Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 421
    .restart local v0       #x509:Ljava/security/cert/Certificate;
    :cond_2a
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid certificate for alias \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only X509Certificate should be aliased to principals."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected initKeyStore(Ljava/util/List;Ljava/net/URL;Ljava/util/Properties;Z)Ljava/security/KeyStore;
    .registers 12
    .parameter
    .parameter "base"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            "Z)",
            "Ljava/security/KeyStore;"
        }
    .end annotation

    .prologue
    .local p1, keystores:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    const/4 v6, 0x0

    .line 444
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_60

    .line 446
    :try_start_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;

    .line 448
    .local v2, ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    if-eqz p4, :cond_24

    .line 449
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    invoke-static {v5, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    .line 450
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    if-eqz v5, :cond_24

    .line 451
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-static {v5, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 454
    :cond_24
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_36

    .line 455
    :cond_30
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    .line 457
    :cond_36
    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->type:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 458
    .local v3, ks:Ljava/security/KeyStore;
    new-instance v4, Ljava/net/URL;

    iget-object v5, v2, Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;->url:Ljava/lang/String;

    invoke-direct {v4, p2, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 459
    .local v4, location:Ljava/net/URL;
    new-instance v5, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v5, v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_5c

    .line 462
    .local v1, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    :try_start_4f
    invoke-virtual {v3, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    .line 465
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v5, v3

    .line 473
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .end local v3           #ks:Ljava/security/KeyStore;
    .end local v4           #location:Ljava/net/URL;
    :goto_56
    return-object v5

    .line 465
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .restart local v3       #ks:Ljava/security/KeyStore;
    .restart local v4       #location:Ljava/net/URL;
    :catchall_57
    move-exception v5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5c

    .line 469
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #ke:Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;
    .end local v3           #ks:Ljava/security/KeyStore;
    .end local v4           #location:Ljava/net/URL;
    :catch_5c
    move-exception v5

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_60
    move-object v5, v6

    .line 473
    goto :goto_56
.end method

.method public parse(Ljava/net/URL;Ljava/util/Properties;)Ljava/util/Collection;
    .registers 14
    .parameter "location"
    .parameter "system"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/PolicyEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lorg/apache/harmony/security/fortress/PolicyUtils;->canExpandProperties()Z

    move-result v7

    .line 115
    .local v7, resolve:Z
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;

    invoke-direct {v9, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;-><init>(Ljava/net/URL;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    invoke-direct {v10, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v6, r:Ljava/io/Reader;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v1, grantEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, keystores:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/DefaultPolicyScanner$KeystoreEntry;>;"
    :try_start_23
    iget-object v9, p0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->scanner:Lorg/apache/harmony/security/DefaultPolicyScanner;

    invoke-virtual {v9, v6, v1, v3}, Lorg/apache/harmony/security/DefaultPolicyScanner;->scanStream(Ljava/io/Reader;Ljava/util/Collection;Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_54

    .line 128
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 132
    invoke-virtual {p0, v3, p1, p2, v7}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->initKeyStore(Ljava/util/List;Ljava/net/URL;Ljava/util/Properties;Z)Ljava/security/KeyStore;

    move-result-object v4

    .line 134
    .local v4, ks:Ljava/security/KeyStore;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 135
    .local v8, result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;

    .line 139
    .local v0, ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    :try_start_44
    invoke-virtual {p0, v0, v4, p2, v7}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveGrant(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Lorg/apache/harmony/security/PolicyEntry;

    move-result-object v5

    .line 140
    .local v5, pe:Lorg/apache/harmony/security/PolicyEntry;
    invoke-virtual {v5}, Lorg/apache/harmony/security/PolicyEntry;->isVoid()Z

    move-result v9

    if-nez v9, :cond_38

    .line 141
    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_52

    goto :goto_38

    .line 144
    .end local v5           #pe:Lorg/apache/harmony/security/PolicyEntry;
    :catch_52
    move-exception v9

    goto :goto_38

    .line 128
    .end local v0           #ge:Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .end local v4           #ks:Ljava/security/KeyStore;
    .end local v8           #result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_54
    move-exception v9

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    throw v9

    .line 149
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;>;"
    .restart local v4       #ks:Ljava/security/KeyStore;
    .restart local v8       #result:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_59
    return-object v8
.end method

.method protected resolveGrant(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Lorg/apache/harmony/security/PolicyEntry;
    .registers 17
    .parameter "ge"
    .parameter "ks"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, codebase:Ljava/net/URL;
    const/4 v11, 0x0

    .line 190
    .local v11, signers:[Ljava/security/cert/Certificate;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v10, principals:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Principal;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v9, permissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/Permission;>;"
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 193
    new-instance v6, Ljava/net/URL;

    .end local v6           #codebase:Ljava/net/URL;
    if-eqz p4, :cond_5f

    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    invoke-static {v0, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v6       #codebase:Ljava/net/URL;
    :cond_1d
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 197
    if-eqz p4, :cond_2b

    .line 198
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    invoke-static {v0, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    .line 200
    :cond_2b
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->signers:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v11

    .line 202
    :cond_31
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    if-eqz v0, :cond_6f

    .line 203
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->principals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 204
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;

    .line 206
    .local v1, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    if-eqz p4, :cond_51

    .line 207
    iget-object v0, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-static {v0, p3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .line 209
    :cond_51
    iget-object v0, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    if-nez v0, :cond_62

    .line 210
    iget-object v0, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->getPrincipalByAlias(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 193
    .end local v1           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .end local v6           #codebase:Ljava/net/URL;
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :cond_5f
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->codebase:Ljava/lang/String;

    goto :goto_1a

    .line 212
    .restart local v1       #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    .restart local v6       #codebase:Ljava/net/URL;
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :cond_62
    new-instance v0, Lorg/apache/harmony/security/UnresolvedPrincipal;

    iget-object v2, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->klass:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;->name:Ljava/lang/String;

    .end local v1           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;
    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/UnresolvedPrincipal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 216
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PrincipalEntry;>;"
    :cond_6f
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    if-eqz v0, :cond_95

    .line 217
    iget-object v0, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;->permissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :goto_79
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 218
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;

    .local v1, pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    .line 221
    :try_start_8b
    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolvePermission(Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Ljava/security/Permission;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_92} :catch_93

    goto :goto_79

    .line 224
    :catch_93
    move-exception v0

    goto :goto_79

    .line 229
    .end local v1           #pe:Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;
    .end local v7           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;>;"
    :cond_95
    new-instance v0, Lorg/apache/harmony/security/PolicyEntry;

    new-instance v1, Ljava/security/CodeSource;

    invoke-direct {v1, v6, v11}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-direct {v0, v1, v10, v9}, Lorg/apache/harmony/security/PolicyEntry;-><init>(Ljava/security/CodeSource;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected resolvePermission(Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;Ljava/util/Properties;Z)Ljava/security/Permission;
    .registers 12
    .parameter "pe"
    .parameter "ge"
    .parameter "ks"
    .parameter "system"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 257
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    new-instance v3, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;

    invoke-direct {v3, p0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V

    invoke-virtual {v3, p2, p3}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;->configure(Lorg/apache/harmony/security/DefaultPolicyScanner$GrantEntry;Ljava/security/KeyStore;)Lorg/apache/harmony/security/fortress/DefaultPolicyParser$PermissionExpander;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandGeneral(Ljava/lang/String;Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 260
    :cond_15
    if-eqz p5, :cond_3b

    .line 261
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 262
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    .line 264
    :cond_23
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 265
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    .line 267
    :cond_2f
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 268
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    invoke-static {v2, p4}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    .line 271
    :cond_3b
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    if-nez v2, :cond_5a

    const/4 v2, 0x0

    move-object v1, v2

    .line 274
    .local v1, signers:[Ljava/security/cert/Certificate;
    :goto_41
    :try_start_41
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 275
    .local v0, klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSigners()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 276
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    :try_end_58
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_58} :catch_62

    move-result-object v2

    .line 282
    .end local v0           #klass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_59
    return-object v2

    .line 271
    .end local v1           #signers:[Ljava/security/cert/Certificate;
    :cond_5a
    iget-object v2, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->signers:Ljava/lang/String;

    invoke-virtual {p0, p3, v2}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    move-object v1, v2

    goto :goto_41

    .line 280
    .restart local v1       #signers:[Ljava/security/cert/Certificate;
    :catch_62
    move-exception v2

    .line 282
    :cond_63
    new-instance v2, Ljava/security/UnresolvedPermission;

    iget-object v3, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->klass:Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->name:Ljava/lang/String;

    iget-object v5, p1, Lorg/apache/harmony/security/DefaultPolicyScanner$PermissionEntry;->actions:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/security/UnresolvedPermission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V

    goto :goto_59
.end method

.method protected resolveSigners(Ljava/security/KeyStore;Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 8
    .parameter "ks"
    .parameter "signers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_1b

    .line 387
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No KeyStore to resolve signers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_1b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v0, certs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/cert/Certificate;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v1, snt:Ljava/util/StringTokenizer;
    :goto_27
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 394
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 396
    :cond_3d
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method
