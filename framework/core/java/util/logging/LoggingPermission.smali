.class public final Ljava/util/logging/LoggingPermission;
.super Ljava/security/BasicPermission;
.source "LoggingPermission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xe1d36e9045739eL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "control"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must be \"control\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_13
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actions != null && !actions.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_23
    return-void
.end method
