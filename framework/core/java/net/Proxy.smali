.class public Ljava/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Proxy$Type;
    }
.end annotation


# static fields
.field public static final NO_PROXY:Ljava/net/Proxy;


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .registers 5
    .parameter "type"
    .parameter "sa"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p1, v0, :cond_9

    if-nez p2, :cond_11

    .line 62
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Proxy.Type or SocketAddress argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 65
    iput-object p2, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    .line 66
    return-void
.end method


# virtual methods
.method public address()Ljava/net/SocketAddress;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 138
    :goto_5
    return v2

    .line 133
    :cond_6
    instance-of v2, p1, Ljava/net/Proxy;

    if-nez v2, :cond_c

    move v2, v4

    .line 134
    goto :goto_5

    .line 136
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/net/Proxy;

    move-object v1, v0

    .line 138
    .local v1, another:Ljava/net/Proxy;
    iget-object v2, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    iget-object v3, v1, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    iget-object v3, v1, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v5

    goto :goto_5

    :cond_22
    move v2, v4

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, ret:I
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    if-eqz v1, :cond_13

    .line 151
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    if-eqz v1, :cond_12

    .line 107
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_12
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    if-eqz v1, :cond_2a

    .line 111
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Ljava/net/Proxy$Type;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method
