.class final Ljava/security/UnresolvedPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "UnresolvedPermissionCollection.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x6396d132a67b4c70L


# instance fields
.field private transient klasses:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permissions"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/UnresolvedPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v2

    .line 171
    .local v2, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v8, "permissions"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 172
    .local v6, permissions:Ljava/util/Map;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    .line 173
    iget-object v8, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    monitor-enter v8

    .line 174
    :try_start_17
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 175
    .local v3, iter:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 178
    .local v5, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 180
    .local v7, values:Ljava/util/Collection;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/UnresolvedPermission;

    .line 184
    .local v0, element:Ljava/security/UnresolvedPermission;
    invoke-virtual {v0}, Ljava/security/UnresolvedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3b

    .line 185
    new-instance v9, Ljava/io/InvalidObjectException;

    const-string v10, "collection is corrupted"

    invoke-direct {v9, v10}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 190
    .end local v0           #element:Ljava/security/UnresolvedPermission;
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v3           #iter:Ljava/util/Iterator;
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #values:Ljava/util/Collection;
    :catchall_59
    move-exception v9

    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_59

    throw v9

    .line 188
    .restart local v1       #entry:Ljava/util/Map$Entry;
    .restart local v3       #iter:Ljava/util/Iterator;
    .restart local v4       #iterator:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v7       #values:Ljava/util/Collection;
    :cond_5c
    :try_start_5c
    iget-object v9, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 190
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v4           #iterator:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #values:Ljava/util/Collection;
    :cond_67
    monitor-exit v8
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_59

    .line 191
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 155
    .local v4, permissions:Ljava/util/Hashtable;
    iget-object v5, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, iter:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, key:Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v5, p0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 160
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v3           #key:Ljava/lang/String;
    :cond_30
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 161
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v5, "permissions"

    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 163
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 7
    .parameter "permission"

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/security/UnresolvedPermissionCollection;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 65
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "collection is read-only"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_e
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/security/UnresolvedPermission;

    if-eq v2, v3, :cond_31

    .line 68
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_31
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    monitor-enter v2

    .line 71
    :try_start_34
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, klass:Ljava/lang/String;
    iget-object v3, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 73
    .local v1, klassMates:Ljava/util/Collection;
    if-nez v1, :cond_4c

    .line 74
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #klassMates:Ljava/util/Collection;
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 75
    .restart local v1       #klassMates:Ljava/util/Collection;
    iget-object v3, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_4c
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    monitor-exit v2

    .line 79
    return-void

    .line 78
    .end local v0           #klass:Ljava/lang/String;
    .end local v1           #klassMates:Ljava/util/Collection;
    :catchall_51
    move-exception v3

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_51

    throw v3
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 4

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, all:Ljava/util/Collection;
    iget-object v2, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, iter:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 86
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method hasUnresolved(Ljava/security/Permission;)Z
    .registers 4
    .parameter "permission"

    .prologue
    .line 104
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method resolveCollection(Ljava/security/Permission;Ljava/security/PermissionCollection;)Ljava/security/PermissionCollection;
    .registers 11
    .parameter "target"
    .parameter "holder"

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, klass:Ljava/lang/String;
    iget-object v6, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 125
    iget-object v6, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    monitor-enter v6

    .line 126
    :try_start_13
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 127
    .local v4, klassMates:Ljava/util/Collection;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/UnresolvedPermission;

    .line 130
    .local v0, element:Ljava/security/UnresolvedPermission;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/UnresolvedPermission;->resolve(Ljava/lang/Class;)Ljava/security/Permission;

    move-result-object v5

    .line 131
    .local v5, resolved:Ljava/security/Permission;
    if-eqz v5, :cond_1f

    .line 132
    if-nez p2, :cond_43

    .line 133
    invoke-virtual {p1}, Ljava/security/Permission;->newPermissionCollection()Ljava/security/PermissionCollection;

    move-result-object p2

    .line 134
    if-nez p2, :cond_43

    .line 135
    new-instance v1, Ljava/security/PermissionsHash;

    invoke-direct {v1}, Ljava/security/PermissionsHash;-><init>()V

    .end local p2
    .local v1, holder:Ljava/security/PermissionCollection;
    move-object p2, v1

    .line 138
    .end local v1           #holder:Ljava/security/PermissionCollection;
    .restart local p2
    :cond_43
    invoke-virtual {p2, v5}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 145
    .end local v0           #element:Ljava/security/UnresolvedPermission;
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v4           #klassMates:Ljava/util/Collection;
    .end local v5           #resolved:Ljava/security/Permission;
    :catchall_4a
    move-exception v7

    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_4a

    throw v7

    .line 142
    .restart local v2       #iter:Ljava/util/Iterator;
    .restart local v4       #klassMates:Ljava/util/Collection;
    :cond_4d
    :try_start_4d
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_58

    .line 143
    iget-object v7, p0, Ljava/security/UnresolvedPermissionCollection;->klasses:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_4a

    .line 147
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v4           #klassMates:Ljava/util/Collection;
    :cond_59
    return-object p2
.end method
