.class final Ljava/security/BasicPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "BasicPermissionCollection.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0xa4287048dede3c7L


# instance fields
.field private transient allEnabled:Z

.field private transient items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private permClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "all_allowed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permissions"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permClass"

    const-class v4, Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/BasicPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 181
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    .line 182
    monitor-enter p0

    .line 183
    :try_start_c
    const-string v2, "permClass"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iput-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    .line 184
    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    const-string v2, "permissions"

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 186
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Permission;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v2, v3, :cond_33

    .line 188
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Inconsistent types of contained permissions"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :catchall_4f
    move-exception v2

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_c .. :try_end_51} :catchall_4f

    throw v2

    .line 191
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :cond_52
    :try_start_52
    const-string v2, "all_allowed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    .line 192
    iget-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    if-eqz v2, :cond_71

    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 193
    new-instance v2, Ljava/io/InvalidObjectException;

    const-string v3, "Invalid state of wildcard flag"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_52 .. :try_end_72} :catchall_4f

    .line 196
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
    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 167
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "all_allowed"

    iget-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 168
    const-string v1, "permissions"

    new-instance v2, Ljava/util/Hashtable;

    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v1, "permClass"

    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 171
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 8
    .parameter "permission"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/security/BasicPermissionCollection;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 66
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "collection is read-only"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_10
    if-nez p1, :cond_1a

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "permission == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 73
    .local v0, inClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/security/Permission;>;"
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eqz v2, :cond_3f

    .line 74
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v2, v0, :cond_84

    .line 75
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

    .line 77
    :cond_3f
    instance-of v2, p1, Ljava/security/BasicPermission;

    if-nez v2, :cond_5c

    .line 78
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

    .line 81
    :cond_5c
    monitor-enter p0

    .line 82
    :try_start_5d
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eqz v2, :cond_81

    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v0, v2, :cond_81

    .line 83
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

    .line 86
    :catchall_7e
    move-exception v2

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_7e

    throw v2

    .line 85
    :cond_81
    :try_start_81
    iput-object v0, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    .line 86
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_7e

    .line 89
    :cond_84
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    if-nez v2, :cond_9f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_a3

    const/16 v2, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_a3

    :cond_9f
    move v2, v5

    :goto_a0
    iput-boolean v2, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    .line 92
    return-void

    :cond_a3
    move v2, v4

    .line 91
    goto :goto_a0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
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
    .line 99
    iget-object v0, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 11
    .parameter "permission"

    .prologue
    const/16 v8, 0x2e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/security/BasicPermissionCollection;->permClass:Ljava/lang/Class;

    if-eq v3, v4, :cond_10

    :cond_e
    move v3, v6

    .line 146
    :goto_f
    return v3

    .line 116
    :cond_10
    iget-boolean v3, p0, Ljava/security/BasicPermissionCollection;->allEnabled:Z

    if-eqz v3, :cond_16

    move v3, v7

    .line 117
    goto :goto_f

    .line 119
    :cond_16
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, checkName:Ljava/lang/String;
    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v7

    .line 122
    goto :goto_f

    .line 126
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 129
    .local v1, name:[C
    array-length v3, v1

    const/4 v4, 0x2

    sub-int v2, v3, v4

    .line 130
    .local v2, pos:I
    :goto_2c
    if-ltz v2, :cond_32

    .line 131
    aget-char v3, v1, v2

    if-ne v3, v8, :cond_4b

    .line 135
    :cond_32
    if-ltz v2, :cond_59

    .line 136
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2a

    aput-char v4, v1, v3

    .line 137
    iget-object v3, p0, Ljava/security/BasicPermissionCollection;->items:Ljava/util/Map;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    invoke-direct {v4, v1, v6, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move v3, v7

    .line 138
    goto :goto_f

    .line 130
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 140
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    :goto_50
    if-ltz v2, :cond_32

    .line 141
    aget-char v3, v1, v2

    if-eq v3, v8, :cond_32

    .line 140
    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    :cond_59
    move v3, v6

    .line 146
    goto :goto_f
.end method
