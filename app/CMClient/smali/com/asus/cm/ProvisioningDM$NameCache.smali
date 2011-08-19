.class Lcom/asus/cm/ProvisioningDM$NameCache;
.super Ljava/lang/Object;
.source "ProvisioningDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/ProvisioningDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameCache"
.end annotation


# instance fields
.field AppSvrNode:Ljava/lang/String;

.field AuthClientNode:Ljava/lang/String;

.field AuthServerNode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "svr"
    .parameter "aServ"
    .parameter "aCli"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/asus/cm/ProvisioningDM$NameCache;->AppSvrNode:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/asus/cm/ProvisioningDM$NameCache;->AuthServerNode:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/asus/cm/ProvisioningDM$NameCache;->AuthClientNode:Ljava/lang/String;

    .line 32
    return-void
.end method
