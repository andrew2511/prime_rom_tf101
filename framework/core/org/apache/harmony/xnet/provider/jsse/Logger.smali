.class public Lorg/apache/harmony/xnet/provider/jsse/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
    }
.end annotation


# static fields
.field private static names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$1;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 112
    :goto_d
    return-void

    .line 109
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
    .registers 3
    .parameter "name"

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 116
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/Logger;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 117
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-direct {v1, p0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;-><init>(Ljava/lang/String;)V

    .line 120
    :goto_15
    return-object v1

    .line 115
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method
