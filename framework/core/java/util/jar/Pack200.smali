.class public abstract Ljava/util/jar/Pack200;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Pack200$Unpacker;,
        Ljava/util/jar/Pack200$Packer;
    }
.end annotation


# static fields
.field private static final SYSTEM_PROPERTY_PACKER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final SYSTEM_PROPERTY_UNPACKER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static newPacker()Ljava/util/jar/Pack200$Packer;
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/jar/Pack200$1;

    invoke-direct {v0}, Ljava/util/jar/Pack200$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Packer;

    return-object v0
.end method

.method public static newUnpacker()Ljava/util/jar/Pack200$Unpacker;
    .registers 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/jar/Pack200$2;

    invoke-direct {v0}, Ljava/util/jar/Pack200$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Unpacker;

    return-object v0
.end method
