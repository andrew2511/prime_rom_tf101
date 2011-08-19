.class public final Ljava/sql/SQLPermission;
.super Ljava/security/BasicPermission;
.source "SQLPermission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x13f980d01a0356e7L


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
    .registers 4
    .parameter "name"
    .parameter "actions"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
