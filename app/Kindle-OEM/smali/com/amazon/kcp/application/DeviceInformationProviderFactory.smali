.class public Lcom/amazon/kcp/application/DeviceInformationProviderFactory;
.super Ljava/lang/Object;
.source "DeviceInformationProviderFactory.java"


# static fields
.field private static provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DeviceInformationProviderFactory has not been initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    return-object v0
.end method

.method static initialize(Lcom/amazon/kcp/application/IDeviceInformationProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 27
    sput-object p0, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    .line 28
    return-void
.end method
