.class public Lorg/apache/harmony/luni/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

.field public static final NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Ldalvik/system/BlockGuard$WrappedFileSystem;

    invoke-static {}, Lorg/apache/harmony/luni/platform/OSFileSystem;->getOSFileSystem()Lorg/apache/harmony/luni/platform/OSFileSystem;

    move-result-object v1

    invoke-direct {v0, v1}, Ldalvik/system/BlockGuard$WrappedFileSystem;-><init>(Lorg/apache/harmony/luni/platform/IFileSystem;)V

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 45
    new-instance v0, Ldalvik/system/BlockGuard$WrappedNetworkSystem;

    invoke-static {}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getOSNetworkSystem()Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    move-result-object v1

    invoke-direct {v0, v1}, Ldalvik/system/BlockGuard$WrappedNetworkSystem;-><init>(Lorg/apache/harmony/luni/platform/INetworkSystem;)V

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK:Lorg/apache/harmony/luni/platform/INetworkSystem;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
