.class final Landroid/net/wifi/WpsConfiguration$1;
.super Ljava/lang/Object;
.source "WpsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsConfiguration;
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
        "Landroid/net/wifi/WpsConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WpsConfiguration;
    .registers 4
    .parameter "in"

    .prologue
    .line 113
    new-instance v0, Landroid/net/wifi/WpsConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WpsConfiguration;-><init>()V

    .line 114
    .local v0, config:Landroid/net/wifi/WpsConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WpsConfiguration$Setup;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WpsConfiguration$Setup;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->setup:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->BSSID:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->pin:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/LinkProperties;

    iput-object p0, v0, Landroid/net/wifi/WpsConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 120
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WpsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WpsConfiguration;
    .registers 3
    .parameter "size"

    .prologue
    .line 124
    new-array v0, p1, [Landroid/net/wifi/WpsConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsConfiguration$1;->newArray(I)[Landroid/net/wifi/WpsConfiguration;

    move-result-object v0

    return-object v0
.end method
