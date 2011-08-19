.class public final Ljava/net/NetPermission;
.super Ljava/security/BasicPermission;
.source "NetPermission.java"


# static fields
.field private static final serialVersionUID:J = -0x73cb861398809b9dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
