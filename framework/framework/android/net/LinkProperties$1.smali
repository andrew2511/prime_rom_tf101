.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v7, 0x0

    .line 195
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 196
    .local v4, netProp:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, iface:Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 199
    :try_start_c
    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_22

    .line 204
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, addressCount:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_25

    .line 206
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/LinkAddress;

    invoke-virtual {v4, p0}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 200
    .end local v0           #addressCount:I
    .end local v2           #i:I
    .restart local p0
    :catch_22
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v5, v7

    .line 223
    .end local v1           #e:Ljava/lang/Exception;
    .end local p0
    :goto_24
    return-object v5

    .line 208
    .restart local v0       #addressCount:I
    .restart local v2       #i:I
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v0, :cond_3a

    .line 211
    :try_start_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_37
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_37} :catch_63

    .line 209
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 214
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v0, :cond_4f

    .line 217
    :try_start_41
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addGateway(Ljava/net/InetAddress;)V
    :try_end_4c
    .catch Ljava/net/UnknownHostException; {:try_start_41 .. :try_end_4c} :catch_61

    .line 215
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 220
    :cond_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5f

    .line 221
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/ProxyProperties;

    invoke-virtual {v4, p0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_5f
    move-object v5, v4

    .line 223
    goto :goto_24

    .line 218
    :catch_61
    move-exception v5

    goto :goto_4c

    .line 212
    :catch_63
    move-exception v5

    goto :goto_37
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .registers 3
    .parameter "size"

    .prologue
    .line 227
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
