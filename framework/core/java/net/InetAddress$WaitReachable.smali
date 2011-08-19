.class Ljava/net/InetAddress$WaitReachable;
.super Ljava/lang/Object;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitReachable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/InetAddress$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/net/InetAddress$WaitReachable;-><init>()V

    return-void
.end method
