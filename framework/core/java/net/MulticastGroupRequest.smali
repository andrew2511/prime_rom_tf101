.class public final Ljava/net/MulticastGroupRequest;
.super Ljava/lang/Object;
.source "MulticastGroupRequest.java"


# instance fields
.field private final gr_group:Ljava/net/InetAddress;

.field private final gr_interface:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 4
    .parameter "groupAddress"
    .parameter "networkInterface"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ljava/net/MulticastGroupRequest;->gr_group:Ljava/net/InetAddress;

    .line 30
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    :goto_b
    iput v0, p0, Ljava/net/MulticastGroupRequest;->gr_interface:I

    .line 31
    return-void

    .line 30
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method
