.class Ljava/util/PropertyPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "PropertyPermissionCollection.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x615b395a4e354ae7L


# instance fields
.field permissions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "permissions"

    const-class v4, Ljava/util/Hashtable;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "all_allowed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/PropertyPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/PropertyPermissionCollection;->permissions:Ljava/util/Hashtable;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 93
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "permissions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Ljava/util/PropertyPermissionCollection;->permissions:Ljava/util/Hashtable;

    .line 95
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 84
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "permissions"

    iget-object v2, p0, Ljava/util/PropertyPermissionCollection;->permissions:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v1, "all_allowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 87
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 6
    .parameter "perm"

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/util/PropertyPermissionCollection;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_37

    .line 40
    iget-object v2, p0, Ljava/util/PropertyPermissionCollection;->permissions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Permission;

    .line 45
    .local v1, prev:Ljava/security/Permission;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 46
    new-instance v0, Ljava/util/PropertyPermission;

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read,write"

    invoke-direct {v0, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v0, np:Ljava/security/Permission;
    iget-object v2, p0, Ljava/util/PropertyPermissionCollection;->permissions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0           #np:Ljava/security/Permission;
    :cond_36
    return-void

    .line 51
    .end local v1           #prev:Ljava/security/Permission;
    :cond_37
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
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
    .line 57
    iget-object v0, p0, Ljava/util/PropertyPermissionCollection;->permissions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 7
    .parameter "perm"

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p0}, Ljava/util/PropertyPermissionCollection;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 63
    .local v0, elemEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/security/Permission;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Permission;

    invoke-virtual {v1, p1}, Ljava/security/Permission;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    .line 73
    :goto_18
    return v1

    :cond_19
    invoke-virtual {p1}, Ljava/security/Permission;->getActions()Ljava/lang/String;

    move-result-object v1

    const-string v2, "read,write"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Ljava/util/PropertyPermission;

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/PropertyPermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v1, Ljava/util/PropertyPermission;

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "write"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/PropertyPermissionCollection;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-eqz v1, :cond_49

    move v1, v4

    goto :goto_18

    :cond_49
    const/4 v1, 0x0

    goto :goto_18
.end method
