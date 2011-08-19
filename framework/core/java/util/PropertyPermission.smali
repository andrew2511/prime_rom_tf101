.class public final Ljava/util/PropertyPermission;
.super Ljava/security/BasicPermission;
.source "PropertyPermission.java"


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0xc49b5eba24d7ec3L


# instance fields
.field private transient read:Z

.field private transient write:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "actions"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/PropertyPermission;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p2}, Ljava/util/PropertyPermission;->decodeActions(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private decodeActions(Ljava/lang/String;)V
    .registers 7
    .parameter "actions"

    .prologue
    const/4 v4, 0x1

    .line 63
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lorg/apache/harmony/luni/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " \t\n\r,"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 66
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, token:Ljava/lang/String;
    const-string v2, "read"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 68
    iput-boolean v4, p0, Ljava/util/PropertyPermission;->read:Z

    goto :goto_c

    .line 69
    :cond_21
    const-string v2, "write"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 70
    iput-boolean v4, p0, Ljava/util/PropertyPermission;->write:Z

    goto :goto_c

    .line 72
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 75
    .end local v0           #token:Ljava/lang/String;
    :cond_32
    iget-boolean v2, p0, Ljava/util/PropertyPermission;->read:Z

    if-nez v2, :cond_40

    iget-boolean v2, p0, Ljava/util/PropertyPermission;->write:Z

    if-nez v2, :cond_40

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 78
    :cond_40
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 168
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v2, "actions"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, actions:Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/util/PropertyPermission;->decodeActions(Ljava/lang/String;)V

    .line 170
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
    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 161
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "actions"

    invoke-virtual {p0}, Ljava/util/PropertyPermission;->getActions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 163
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Ljava/security/BasicPermission;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 97
    move-object v0, p1

    check-cast v0, Ljava/util/PropertyPermission;

    move-object v1, v0

    .line 98
    .local v1, pp:Ljava/util/PropertyPermission;
    iget-boolean v2, p0, Ljava/util/PropertyPermission;->read:Z

    iget-boolean v3, v1, Ljava/util/PropertyPermission;->read:Z

    if-ne v2, v3, :cond_19

    iget-boolean v2, p0, Ljava/util/PropertyPermission;->write:Z

    iget-boolean v3, v1, Ljava/util/PropertyPermission;->write:Z

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    .line 100
    .end local v1           #pp:Ljava/util/PropertyPermission;
    :goto_18
    return v2

    .restart local v1       #pp:Ljava/util/PropertyPermission;
    :cond_19
    move v2, v4

    .line 98
    goto :goto_18

    .end local v1           #pp:Ljava/util/PropertyPermission;
    :cond_1b
    move v2, v4

    .line 100
    goto :goto_18
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Ljava/util/PropertyPermission;->read:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Ljava/util/PropertyPermission;->write:Z

    if-eqz v0, :cond_b

    const-string v0, "read,write"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "read"

    goto :goto_a

    :cond_e
    const-string v0, "write"

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 124
    invoke-super {p0}, Ljava/security/BasicPermission;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 6
    .parameter "permission"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1}, Ljava/security/BasicPermission;->implies(Ljava/security/Permission;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 138
    move-object v0, p1

    check-cast v0, Ljava/util/PropertyPermission;

    move-object v1, v0

    .line 139
    .local v1, pp:Ljava/util/PropertyPermission;
    iget-boolean v2, p0, Ljava/util/PropertyPermission;->read:Z

    if-nez v2, :cond_13

    iget-boolean v2, v1, Ljava/util/PropertyPermission;->read:Z

    if-nez v2, :cond_1d

    :cond_13
    iget-boolean v2, p0, Ljava/util/PropertyPermission;->write:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v1, Ljava/util/PropertyPermission;->write:Z

    if-nez v2, :cond_1d

    :cond_1b
    const/4 v2, 0x1

    .line 141
    .end local v1           #pp:Ljava/util/PropertyPermission;
    :goto_1c
    return v2

    .restart local v1       #pp:Ljava/util/PropertyPermission;
    :cond_1d
    move v2, v3

    .line 139
    goto :goto_1c

    .end local v1           #pp:Ljava/util/PropertyPermission;
    :cond_1f
    move v2, v3

    .line 141
    goto :goto_1c
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 153
    new-instance v0, Ljava/util/PropertyPermissionCollection;

    invoke-direct {v0}, Ljava/util/PropertyPermissionCollection;-><init>()V

    return-object v0
.end method
