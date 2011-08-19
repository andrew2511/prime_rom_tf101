.class Lcom/asus/dm/DMService$DmPersister;
.super Lcom/asus/provisioning/IDmPersister$Stub;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DmPersister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/asus/dm/DMService$DmPersister;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Lcom/asus/provisioning/IDmPersister$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setDMProvisioning(Lcom/asus/provisioning/oma/Application;)V
    .locals 5
    .parameter "app"

    .prologue
    .line 797
    new-instance v1, Lcom/asus/dm/ProvisioningDM;

    iget-object v2, p0, Lcom/asus/dm/DMService$DmPersister;->this$0:Lcom/asus/dm/DMService;

    iget-object v3, p0, Lcom/asus/dm/DMService$DmPersister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$1500(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmTree;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dm/DMService$DmPersister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v4}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/asus/dm/ProvisioningDM;-><init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/dm/DMCRegistryManager;)V

    .line 799
    .local v1, provDM:Lcom/asus/dm/ProvisioningDM;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/asus/dm/ProvisioningDM;->EchoApplication(Lcom/asus/provisioning/oma/Application;)V

    .line 800
    invoke-virtual {v1, p1}, Lcom/asus/dm/ProvisioningDM;->writeToTree(Lcom/asus/provisioning/oma/Application;)V

    .line 801
    const-wide/16 v2, 0x1f40

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 802
    iget-object v2, p0, Lcom/asus/dm/DMService$DmPersister;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v2}, Lcom/asus/dm/DMService;->access$1600(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMService$DMSystemService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/dm/DMService$DMSystemService;->doDMSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 804
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
