.class Lcom/asus/cm/CMService$DmPersister;
.super Lcom/asus/provisioning/IDmPersister$Stub;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DmPersister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, Lcom/asus/cm/CMService$DmPersister;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0}, Lcom/asus/provisioning/IDmPersister$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setDMProvisioning(Lcom/asus/provisioning/oma/Application;)V
    .locals 5
    .parameter "app"

    .prologue
    .line 852
    new-instance v1, Lcom/asus/cm/ProvisioningDM;

    iget-object v2, p0, Lcom/asus/cm/CMService$DmPersister;->this$0:Lcom/asus/cm/CMService;

    iget-object v3, p0, Lcom/asus/cm/CMService$DmPersister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$1600(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmTree;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/CMService$DmPersister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v4}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/asus/cm/ProvisioningDM;-><init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/CMCRegistryManager;)V

    .line 854
    .local v1, provDM:Lcom/asus/cm/ProvisioningDM;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/asus/cm/ProvisioningDM;->EchoApplication(Lcom/asus/provisioning/oma/Application;)V

    .line 855
    invoke-virtual {v1, p1}, Lcom/asus/cm/ProvisioningDM;->writeToTree(Lcom/asus/provisioning/oma/Application;)V

    .line 856
    const-wide/16 v2, 0x1f40

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 857
    iget-object v2, p0, Lcom/asus/cm/CMService$DmPersister;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v2}, Lcom/asus/cm/CMService;->access$1700(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMService$CMSystemService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/cm/CMService$CMSystemService;->doDMSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 859
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
