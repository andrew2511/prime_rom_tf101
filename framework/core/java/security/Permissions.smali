.class public final Ljava/security/Permissions;
.super Ljava/security/PermissionCollection;
.source "Permissions.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Permissions$MetaEnumeration;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x436d4b4dd2c80f50L


# instance fields
.field private allEnabled:Z

.field private transient klasses:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "perms"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "allPermission"

    const-class v4, Ljava/security/PermissionCollection;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/Permissions;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    .line 110
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 212
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 213
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v6, "perms"

    invoke-virtual {v1, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 214
    .local v5, perms:Ljava/util/Map;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    .line 215
    iget-object v7, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    monitor-enter v7

    .line 216
    :try_start_17
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 219
    .local v3, key:Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PermissionCollection;

    .line 220
    .local v4, pc:Ljava/security/PermissionCollection;
    invoke-virtual {v4}, Ljava/security/PermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Permission;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v3, v6, :cond_52

    .line 221
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v8, "collection is corrupted"

    invoke-direct {v6, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 225
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/Class;
    .end local v4           #pc:Ljava/security/PermissionCollection;
    :catchall_4f
    move-exception v6

    monitor-exit v7
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_4f

    throw v6

    .line 223
    .restart local v0       #entry:Ljava/util/Map$Entry;
    .restart local v2       #iter:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/Class;
    .restart local v4       #pc:Ljava/security/PermissionCollection;
    :cond_52
    :try_start_52
    iget-object v6, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 225
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v3           #key:Ljava/lang/Class;
    .end local v4           #pc:Ljava/security/PermissionCollection;
    :cond_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4f

    .line 226
    const-string v6, "allPermission"

    invoke-virtual {v1, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7a

    const/4 v6, 0x1

    :goto_62
    iput-boolean v6, p0, Ljava/security/Permissions;->allEnabled:Z

    .line 227
    iget-boolean v6, p0, Ljava/security/Permissions;->allEnabled:Z

    if-eqz v6, :cond_7c

    iget-object v6, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    const-class v7, Ljava/security/AllPermission;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7c

    .line 228
    new-instance v6, Ljava/io/InvalidObjectException;

    const-string v7, "all-enabled flag is corrupted"

    invoke-direct {v6, v7}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 226
    :cond_7a
    const/4 v6, 0x0

    goto :goto_62

    .line 230
    :cond_7c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 237
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "perms"

    new-instance v2, Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    const-string v1, "allPermission"

    iget-boolean v2, p0, Ljava/security/Permissions;->allEnabled:Z

    if-eqz v2, :cond_25

    iget-object v2, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    const-class v3, Ljava/security/AllPermission;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 241
    return-void

    .line 238
    :cond_25
    const/4 v2, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 8
    .parameter "permission"

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/security/Permissions;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 70
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "collection is read-only"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_e
    if-nez p1, :cond_18

    .line 74
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "permission == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, klass:Ljava/lang/Class;
    iget-object v4, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PermissionCollection;

    .line 81
    .local v2, klassMates:Ljava/security/PermissionCollection;
    if-nez v2, :cond_47

    .line 82
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    monitor-enter v5

    .line 83
    :try_start_29
    iget-object v4, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/PermissionCollection;

    move-object v2, v0

    .line 84
    if-nez v2, :cond_46

    .line 86
    invoke-virtual {p1}, Ljava/security/Permission;->newPermissionCollection()Ljava/security/PermissionCollection;

    move-result-object v2

    .line 87
    if-nez v2, :cond_41

    .line 88
    new-instance v3, Ljava/security/PermissionsHash;

    invoke-direct {v3}, Ljava/security/PermissionsHash;-><init>()V

    .end local v2           #klassMates:Ljava/security/PermissionCollection;
    .local v3, klassMates:Ljava/security/PermissionCollection;
    move-object v2, v3

    .line 90
    .end local v3           #klassMates:Ljava/security/PermissionCollection;
    .restart local v2       #klassMates:Ljava/security/PermissionCollection;
    :cond_41
    iget-object v4, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_46
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_52

    .line 94
    :cond_47
    invoke-virtual {v2, p1}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 96
    const-class v4, Ljava/security/AllPermission;

    if-ne v1, v4, :cond_51

    .line 97
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/security/Permissions;->allEnabled:Z

    .line 99
    :cond_51
    return-void

    .line 92
    :catchall_52
    move-exception v4

    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v4
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/security/Permissions$MetaEnumeration;

    iget-object v1, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/Permissions$MetaEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 9
    .parameter "permission"

    .prologue
    const/4 v6, 0x1

    .line 163
    if-nez p1, :cond_b

    .line 165
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "permission == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_b
    iget-boolean v5, p0, Ljava/security/Permissions;->allEnabled:Z

    if-eqz v5, :cond_11

    move v5, v6

    .line 204
    :goto_10
    return v5

    .line 170
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 171
    .local v3, klass:Ljava/lang/Class;
    const/4 v4, 0x0

    .line 173
    .local v4, klassMates:Ljava/security/PermissionCollection;
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    const-class v6, Ljava/security/UnresolvedPermission;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/UnresolvedPermissionCollection;

    .line 175
    .local v1, billets:Ljava/security/UnresolvedPermissionCollection;
    if-eqz v1, :cond_57

    invoke-virtual {v1, p1}, Ljava/security/UnresolvedPermissionCollection;->hasUnresolved(Ljava/security/Permission;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 177
    iget-object v6, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    monitor-enter v6

    .line 178
    :try_start_2b
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/PermissionCollection;

    move-object v4, v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_54

    .line 180
    :try_start_35
    invoke-virtual {v1, p1, v4}, Ljava/security/UnresolvedPermissionCollection;->resolveCollection(Ljava/security/Permission;Ljava/security/PermissionCollection;)Ljava/security/PermissionCollection;
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_4f

    move-result-object v4

    .line 187
    :goto_39
    if-eqz v4, :cond_47

    .line 190
    :try_start_3b
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-class v5, Ljava/security/AllPermission;

    if-ne v3, v5, :cond_47

    .line 193
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/Permissions;->allEnabled:Z

    .line 196
    :cond_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_54

    .line 201
    :goto_48
    if-eqz v4, :cond_60

    .line 202
    invoke-virtual {v4, p1}, Ljava/security/PermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v5

    goto :goto_10

    .line 182
    :catch_4f
    move-exception v2

    .line 184
    .local v2, ignore:Ljava/lang/Exception;
    :try_start_50
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 196
    .end local v2           #ignore:Ljava/lang/Exception;
    :catchall_54
    move-exception v5

    monitor-exit v6
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw v5

    .line 198
    :cond_57
    iget-object v5, p0, Ljava/security/Permissions;->klasses:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #klassMates:Ljava/security/PermissionCollection;
    check-cast v4, Ljava/security/PermissionCollection;

    .restart local v4       #klassMates:Ljava/security/PermissionCollection;
    goto :goto_48

    .line 204
    :cond_60
    const/4 v5, 0x0

    goto :goto_10
.end method
