.class public final Ljava/io/SerializablePermission;
.super Ljava/security/BasicPermission;
.source "SerializablePermission.java"


# static fields
.field private static final serialVersionUID:J = 0x767a4535d602efdaL


# instance fields
.field private actions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "permissionName"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
