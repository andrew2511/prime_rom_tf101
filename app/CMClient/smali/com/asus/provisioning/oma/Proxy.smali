.class public Lcom/asus/provisioning/oma/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# instance fields
.field private accessPoint:Lcom/asus/provisioning/oma/AccessPoint;

.field private address:Ljava/lang/String;

.field private addressType:Ljava/lang/String;

.field private port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/asus/provisioning/oma/AccessPoint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->accessPoint:Lcom/asus/provisioning/oma/AccessPoint;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->addressType:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->port:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->address:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->port:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/provisioning/oma/Proxy;->port:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IPV4"

    invoke-virtual {p0}, Lcom/asus/provisioning/oma/Proxy;->getAddressType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessPoint(Lcom/asus/provisioning/oma/AccessPoint;)V
    .locals 0
    .parameter "accessPoint"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/asus/provisioning/oma/Proxy;->accessPoint:Lcom/asus/provisioning/oma/AccessPoint;

    .line 84
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/asus/provisioning/oma/Proxy;->address:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setAddressType(Ljava/lang/String;)V
    .locals 0
    .parameter "addressType"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/asus/provisioning/oma/Proxy;->addressType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0
    .parameter "port"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/asus/provisioning/oma/Proxy;->port:Ljava/lang/String;

    .line 70
    return-void
.end method
