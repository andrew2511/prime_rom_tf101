.class public Lcom/amazon/kcp/application/AssociateInformationProviderFactory;
.super Ljava/lang/Object;
.source "AssociateInformationProviderFactory.java"


# static fields
.field private static provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AssociateInformationProviderFactory has not been initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;

    return-object v0
.end method

.method static initialize(Lcom/amazon/kcp/application/IAssociateInformationProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 26
    sput-object p0, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->provider:Lcom/amazon/kcp/application/IAssociateInformationProvider;

    .line 27
    return-void
.end method
