.class public Lorg/apache/harmony/security/fortress/DefaultPolicy;
.super Ljava/security/Policy;
.source "DefaultPolicy.java"


# static fields
.field public static final JAVA_SECURITY_POLICY:Ljava/lang/String; = "java.security.policy"

.field public static final POLICY_URL_PREFIX:Ljava/lang/String; = "policy.url."


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final grants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/harmony/security/PolicyEntry;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 172
    new-instance v0, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    invoke-direct {v0}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;-><init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/fortress/DefaultPolicyParser;)V
    .registers 3
    .parameter "dpr"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/security/Policy;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    .line 158
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    .line 181
    iput-object p1, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    .line 183
    invoke-virtual {p0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refresh()V

    .line 184
    return-void
.end method


# virtual methods
.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 9
    .parameter "cs"

    .prologue
    .line 232
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_d

    .line 233
    monitor-enter p0

    .line 234
    :try_start_5
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_c

    .line 235
    invoke-virtual {p0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refresh()V

    .line 237
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_56

    .line 239
    :cond_d
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 240
    .local v3, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    if-nez v3, :cond_60

    .line 242
    iget-object v6, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    monitor-enter v6

    .line 246
    :try_start_1a
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    move-object v3, v0

    .line 247
    if-nez v3, :cond_5f

    .line 248
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_65

    .line 249
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .local v4, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :try_start_2b
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 250
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_31
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/PolicyEntry;

    .line 252
    .local v1, ge:Lorg/apache/harmony/security/PolicyEntry;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/PolicyEntry;->impliesPrincipals([Ljava/security/Principal;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/PolicyEntry;->impliesCodeSource(Ljava/security/CodeSource;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 253
    invoke-virtual {v1}, Lorg/apache/harmony/security/PolicyEntry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_52

    goto :goto_31

    .line 258
    .end local v1           #ge:Lorg/apache/harmony/security/PolicyEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_52
    move-exception v5

    move-object v3, v4

    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :goto_54
    :try_start_54
    monitor-exit v6
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_65

    throw v5

    .line 237
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :catchall_56
    move-exception v5

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v5

    .line 256
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .restart local v4       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_59
    :try_start_59
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_52

    move-object v3, v4

    .line 258
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_5f
    :try_start_5f
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_65

    .line 260
    :cond_60
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;

    move-result-object v5

    return-object v5

    .line 258
    :catchall_65
    move-exception v5

    goto :goto_54
.end method

.method public getPermissions(Ljava/security/ProtectionDomain;)Ljava/security/PermissionCollection;
    .registers 10
    .parameter "pd"

    .prologue
    const/4 v7, 0x0

    .line 193
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_e

    .line 194
    monitor-enter p0

    .line 195
    :try_start_6
    iget-boolean v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z

    if-nez v5, :cond_d

    .line 196
    invoke-virtual {p0}, Lorg/apache/harmony/security/fortress/DefaultPolicy;->refresh()V

    .line 198
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_5c

    .line 200
    :cond_e
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 201
    .local v3, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    if-nez v3, :cond_70

    .line 203
    iget-object v6, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    monitor-enter v6

    .line 207
    :try_start_1b
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    move-object v3, v0

    .line 208
    if-nez v3, :cond_6f

    .line 209
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_75

    .line 210
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .local v4, pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :try_start_2c
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 211
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/PolicyEntry;

    .line 213
    .local v1, ge:Lorg/apache/harmony/security/PolicyEntry;
    if-nez p1, :cond_5f

    move-object v5, v7

    :goto_41
    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/PolicyEntry;->impliesPrincipals([Ljava/security/Principal;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-nez p1, :cond_64

    move-object v5, v7

    :goto_4a
    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/PolicyEntry;->impliesCodeSource(Ljava/security/CodeSource;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 215
    invoke-virtual {v1}, Lorg/apache/harmony/security/PolicyEntry;->getPermissions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_58

    goto :goto_32

    .line 220
    .end local v1           #ge:Lorg/apache/harmony/security/PolicyEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    :catchall_58
    move-exception v5

    move-object v3, v4

    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :goto_5a
    :try_start_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_75

    throw v5

    .line 198
    .end local v3           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :catchall_5c
    move-exception v5

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v5

    .line 213
    .restart local v1       #ge:Lorg/apache/harmony/security/PolicyEntry;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .restart local v4       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    goto :goto_41

    :cond_64
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v5

    goto :goto_4a

    .line 218
    .end local v1           #ge:Lorg/apache/harmony/security/PolicyEntry;
    :cond_69
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_58

    move-object v3, v4

    .line 220
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/security/PolicyEntry;>;"
    .end local v4           #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    .restart local v3       #pc:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    :cond_6f
    :try_start_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_75

    .line 222
    :cond_70
    invoke-static {v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;

    move-result-object v5

    return-object v5

    .line 220
    :catchall_75
    move-exception v5

    goto :goto_5a
.end method

.method public declared-synchronized refresh()V
    .registers 7

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v0, fresh:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/security/PolicyEntry;>;"
    new-instance v3, Ljava/util/Properties;

    new-instance v4, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;

    invoke-direct {v4}, Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;-><init>()V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    invoke-direct {v3, v4}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 275
    .local v3, system:Ljava/util/Properties;
    const-string v4, "/"

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v4, "java.security.policy"

    const-string v5, "policy.url."

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils;->getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    .line 279
    .local v2, policyLocations:[Ljava/net/URL;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    array-length v4, v2
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_52

    if-ge v1, v4, :cond_37

    .line 283
    :try_start_29
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->parser:Lorg/apache/harmony/security/fortress/DefaultPolicyParser;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5, v3}, Lorg/apache/harmony/security/fortress/DefaultPolicyParser;->parse(Ljava/net/URL;Ljava/util/Properties;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_55

    .line 279
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 301
    :cond_37
    :try_start_37
    iget-object v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    monitor-enter v4
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_52

    .line 302
    :try_start_3a
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 303
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->grants:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 305
    iget-object v5, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 306
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4f

    .line 307
    const/4 v4, 0x1

    :try_start_4b
    iput-boolean v4, p0, Lorg/apache/harmony/security/fortress/DefaultPolicy;->initialized:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_52

    .line 308
    monitor-exit p0

    return-void

    .line 306
    :catchall_4f
    move-exception v5

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 272
    .end local v0           #fresh:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/security/PolicyEntry;>;"
    .end local v1           #i:I
    .end local v2           #policyLocations:[Ljava/net/URL;
    .end local v3           #system:Ljava/util/Properties;
    :catchall_52
    move-exception v4

    monitor-exit p0

    throw v4

    .line 284
    .restart local v0       #fresh:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/security/PolicyEntry;>;"
    .restart local v1       #i:I
    .restart local v2       #policyLocations:[Ljava/net/URL;
    .restart local v3       #system:Ljava/util/Properties;
    :catch_55
    move-exception v4

    goto :goto_34
.end method
