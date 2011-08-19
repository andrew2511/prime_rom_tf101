.class final Ljava/security/AllPermissionCollection;
.super Ljava/security/PermissionCollection;
.source "AllPermissionCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/AllPermissionCollection$SingletonEnumeration;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x37d7405c183cd706L


# instance fields
.field private transient all:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "all_allowed"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/security/AllPermissionCollection;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 70
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 133
    .local v0, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v1, "all_allowed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 134
    new-instance v1, Ljava/security/AllPermission;

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    iput-object v1, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    .line 136
    :cond_14
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 123
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "all_allowed"

    iget-object v2, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 125
    return-void

    .line 123
    :cond_12
    const/4 v2, 0x0

    goto :goto_b
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 5
    .parameter "permission"

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/security/AllPermissionCollection;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "collection is read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_e
    instance-of v0, p1, Ljava/security/AllPermission;

    if-nez v0, :cond_2b

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2b
    iput-object p1, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    .line 56
    return-void
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
    .line 63
    new-instance v0, Ljava/security/AllPermissionCollection$SingletonEnumeration;

    iget-object v1, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    invoke-direct {v0, v1}, Ljava/security/AllPermissionCollection$SingletonEnumeration;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 113
    iget-object v0, p0, Ljava/security/AllPermissionCollection;->all:Ljava/security/Permission;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
