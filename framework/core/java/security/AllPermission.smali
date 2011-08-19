.class public final Ljava/security/AllPermission;
.super Ljava/security/Permission;
.source "AllPermission.java"


# static fields
.field private static final ALL_ACTIONS:Ljava/lang/String; = "<all actions>"

.field private static final ALL_PERMISSIONS:Ljava/lang/String; = "<all permissions>"

.field private static final serialVersionUID:J = -0x2879662babd0bf3bL


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const-string v0, "<all permissions>"

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 51
    const-string v0, "<all permissions>"

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 76
    instance-of v0, p1, Ljava/security/AllPermission;

    return v0
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string v0, "<all actions>"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .parameter "permission"

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .registers 2

    .prologue
    .line 126
    new-instance v0, Ljava/security/AllPermissionCollection;

    invoke-direct {v0}, Ljava/security/AllPermissionCollection;-><init>()V

    return-object v0
.end method
