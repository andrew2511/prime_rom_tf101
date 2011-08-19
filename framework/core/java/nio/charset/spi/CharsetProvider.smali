.class public abstract Ljava/nio/charset/spi/CharsetProvider;
.super Ljava/lang/Object;
.source "CharsetProvider.java"


# static fields
.field private static final CONSTRUCT_PERM:Ljava/lang/RuntimePermission;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "charsetProvider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/nio/charset/spi/CharsetProvider;->CONSTRUCT_PERM:Ljava/lang/RuntimePermission;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 40
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_e

    .line 41
    sget-object v1, Ljava/nio/charset/spi/CharsetProvider;->CONSTRUCT_PERM:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 42
    :cond_e
    return-void
.end method


# virtual methods
.method public abstract charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
.end method

.method public abstract charsets()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end method
