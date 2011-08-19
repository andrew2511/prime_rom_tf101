.class public Ljava/security/AccessControlException;
.super Ljava/lang/SecurityException;
.source "AccessControlException.java"


# static fields
.field private static final serialVersionUID:J = 0x474ea5094463b577L


# instance fields
.field private perm:Ljava/security/Permission;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Permission;)V
    .registers 3
    .parameter "message"
    .parameter "perm"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    .line 53
    return-void
.end method


# virtual methods
.method public getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    return-object v0
.end method
