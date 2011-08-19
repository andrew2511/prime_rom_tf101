.class public final Ljava/security/AccessControlContext;
.super Ljava/lang/Object;
.source "AccessControlContext.java"


# instance fields
.field combiner:Ljava/security/DomainCombiner;

.field context:[Ljava/security/ProtectionDomain;

.field private inherited:Ljava/security/AccessControlContext;


# direct methods
.method public constructor <init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V
    .registers 6
    .parameter "acc"
    .parameter "combiner"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 79
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_13

    .line 80
    new-instance v1, Ljava/security/SecurityPermission;

    const-string v2, "createAccessControlContext"

    invoke-direct {v1, v2}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 84
    :cond_13
    iget-object v1, p1, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    iput-object v1, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    .line 85
    iput-object p2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    .line 86
    return-void
.end method

.method public constructor <init>([Ljava/security/ProtectionDomain;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_d

    .line 100
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context can not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_d
    array-length v2, p1

    if-eqz v2, :cond_40

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/ProtectionDomain;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_2d

    .line 106
    aget-object v2, p1, v1

    if-eqz v2, :cond_2a

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 107
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 110
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_40

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/ProtectionDomain;

    iput-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    .line 112
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 115
    .end local v0           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/ProtectionDomain;>;"
    .end local v1           #i:I
    :cond_40
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    if-nez v2, :cond_49

    .line 117
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/ProtectionDomain;

    iput-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    .line 119
    :cond_49
    return-void
.end method

.method constructor <init>([Ljava/security/ProtectionDomain;Ljava/security/AccessControlContext;)V
    .registers 3
    .parameter "stack"
    .parameter "inherited"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 137
    iput-object p2, p0, Ljava/security/AccessControlContext;->inherited:Ljava/security/AccessControlContext;

    .line 138
    return-void
.end method

.method constructor <init>([Ljava/security/ProtectionDomain;Ljava/security/DomainCombiner;)V
    .registers 3
    .parameter "stack"
    .parameter "combiner"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 156
    iput-object p2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    .line 157
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/security/Permission;)V
    .registers 6
    .parameter "perm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_a

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Permission cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v1, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 191
    iget-object v1, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/security/ProtectionDomain;->implies(Ljava/security/Permission;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 192
    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission check failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    .line 190
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 196
    :cond_36
    iget-object v1, p0, Ljava/security/AccessControlContext;->inherited:Ljava/security/AccessControlContext;

    if-eqz v1, :cond_3f

    .line 197
    iget-object v1, p0, Ljava/security/AccessControlContext;->inherited:Ljava/security/AccessControlContext;

    invoke-virtual {v1, p1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 199
    :cond_3f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 233
    :goto_5
    return v2

    .line 220
    :cond_6
    instance-of v2, p1, Ljava/security/AccessControlContext;

    if-eqz v2, :cond_39

    .line 221
    move-object v0, p1

    check-cast v0, Ljava/security/AccessControlContext;

    move-object v1, v0

    .line 222
    .local v1, that:Ljava/security/AccessControlContext;
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    iget-object v3, v1, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    iget-object v3, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    invoke-static {v2, v3}, Lorg/apache/harmony/security/fortress/PolicyUtils;->matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v2, v4

    .line 224
    goto :goto_5

    .line 227
    :cond_24
    iget-object v2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    if-eqz v2, :cond_31

    .line 228
    iget-object v2, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    iget-object v3, v1, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    .line 230
    :cond_31
    iget-object v2, v1, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    if-nez v2, :cond_37

    move v2, v5

    goto :goto_5

    :cond_37
    move v2, v4

    goto :goto_5

    .end local v1           #that:Ljava/security/AccessControlContext;
    :cond_39
    move v2, v4

    .line 233
    goto :goto_5
.end method

.method public getDomainCombiner()Ljava/security/DomainCombiner;
    .registers 4

    .prologue
    .line 251
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 252
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 253
    new-instance v1, Ljava/security/SecurityPermission;

    const-string v2, "getDomainCombiner"

    invoke-direct {v1, v2}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 255
    :cond_10
    iget-object v1, p0, Ljava/security/AccessControlContext;->combiner:Ljava/security/DomainCombiner;

    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, hash:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 272
    iget-object v2, p0, Ljava/security/AccessControlContext;->context:[Ljava/security/ProtectionDomain;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 274
    :cond_13
    return v0
.end method
