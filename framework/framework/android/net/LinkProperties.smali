.class public Landroid/net/LinkProperties;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDnses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mGateways:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpProxy:Landroid/net/ProxyProperties;

.field mIfaceName:Ljava/lang/String;

.field private mLinkAddresses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 231
    new-instance v0, Landroid/net/LinkProperties$1;

    invoke-direct {v0}, Landroid/net/LinkProperties$1;-><init>()V

    sput-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/net/LinkProperties;->clear()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .registers 4
    .parameter "source"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p1, :cond_28

    .line 69
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 71
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 72
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    .line 73
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 75
    :cond_28
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 158
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public addDns(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "dns"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public addGateway(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "gateway"

    .prologue
    .line 110
    iget-object v0, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public addLinkAddress(Landroid/net/LinkAddress;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    .line 128
    iput-object v1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 129
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 171
    :goto_5
    return v2

    .line 168
    :cond_6
    instance-of v2, p1, Landroid/net/LinkProperties;

    if-nez v2, :cond_c

    move v2, v4

    goto :goto_5

    .line 169
    :cond_c
    move-object v0, p1

    check-cast v0, Landroid/net/LinkProperties;

    move-object v1, v0

    .line 171
    .local v1, p:Landroid/net/LinkProperties;
    iget-object v2, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    iget-object v3, v1, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    iget-object v3, v1, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    iget-object v3, v1, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    iget-object v3, v1, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-static {v2, v3}, Landroid/net/LinkProperties;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v5

    goto :goto_5

    :cond_44
    move v2, v4

    goto :goto_5
.end method

.method public getAddresses()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v3, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 88
    .local v2, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 90
    .end local v2           #linkAddress:Landroid/net/LinkAddress;
    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public getDnses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getGateways()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxy()Landroid/net/ProxyProperties;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddresses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 141
    const/16 v0, 0x11

    .line 142
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v1, :cond_31

    move v1, v3

    :goto_a
    add-int/lit16 v0, v1, 0x20f

    .line 143
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v2, :cond_38

    move v2, v3

    :goto_13
    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    if-nez v2, :cond_3f

    move v2, v3

    :goto_1c
    add-int v0, v1, v2

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    if-nez v2, :cond_46

    move v2, v3

    :goto_25
    add-int v0, v1, v2

    .line 146
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    if-nez v2, :cond_4d

    move v2, v3

    :goto_2e
    add-int v0, v1, v2

    .line 147
    return v0

    .line 142
    :cond_31
    iget-object v1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    .line 143
    :cond_38
    iget-object v2, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    .line 144
    :cond_3f
    iget-object v2, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1c

    .line 145
    :cond_46
    iget-object v2, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_25

    .line 146
    :cond_4d
    iget-object v2, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2e
.end method

.method public setHttpProxy(Landroid/net/ProxyProperties;)V
    .registers 2
    .parameter "proxy"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    .line 118
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .registers 2
    .parameter "iface"

    .prologue
    .line 78
    iput-object p1, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 180
    iget-object v8, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    if-nez v8, :cond_31

    const-string v8, ""

    move-object v5, v8

    .line 182
    .local v5, ifaceName:Ljava/lang/String;
    :goto_7
    const-string v6, "LinkAddresses: ["

    .line 183
    .local v6, linkAddresses:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .local v0, addr:Landroid/net/LinkAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 180
    .end local v0           #addr:Landroid/net/LinkAddress;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ifaceName:Ljava/lang/String;
    .end local v6           #linkAddresses:Ljava/lang/String;
    :cond_31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InterfaceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/LinkProperties;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_7

    .line 184
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #ifaceName:Ljava/lang/String;
    .restart local v6       #linkAddresses:Ljava/lang/String;
    :cond_4e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    const-string v1, "DnsAddresses: ["

    .line 187
    .local v1, dns:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .local v0, addr:Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 188
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_91
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "Gateways: ["

    .line 191
    .local v2, gateways:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ac
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .local v3, gw:Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ac

    .line 192
    .end local v3           #gw:Ljava/net/InetAddress;
    :cond_d4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v8, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-nez v8, :cond_10c

    const-string v8, ""

    move-object v7, v8

    .line 195
    .local v7, proxy:Ljava/lang/String;
    :goto_ee
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 193
    .end local v7           #proxy:Ljava/lang/String;
    :cond_10c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpProxy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v9}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_ee
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v4, p0, Landroid/net/LinkProperties;->mLinkAddresses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 206
    .local v3, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_16

    .line 209
    .end local v3           #linkAddress:Landroid/net/LinkAddress;
    :cond_26
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v4, p0, Landroid/net/LinkProperties;->mDnses:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 211
    .local v0, d:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_35

    .line 214
    .end local v0           #d:Ljava/net/InetAddress;
    :cond_49
    iget-object v4, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v4, p0, Landroid/net/LinkProperties;->mGateways:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 216
    .local v1, gw:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_58

    .line 219
    .end local v1           #gw:Ljava/net/InetAddress;
    :cond_6c
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    if-eqz v4, :cond_7a

    .line 220
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 221
    iget-object v4, p0, Landroid/net/LinkProperties;->mHttpProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 225
    :goto_79
    return-void

    .line 223
    :cond_7a
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_79
.end method
