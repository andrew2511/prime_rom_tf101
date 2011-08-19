.class Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
.super Ljava/lang/Object;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HostAndPort"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "host"
    .parameter "port"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    .line 126
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    .line 127
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 137
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    move-object v1, v0

    .line 138
    .local v1, other:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    iget v3, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method
