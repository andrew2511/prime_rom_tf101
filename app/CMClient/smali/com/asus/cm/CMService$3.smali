.class Lcom/asus/cm/CMService$3;
.super Ljava/lang/Object;
.source "CMService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/CMService;->getDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;

.field final synthetic val$rootLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/asus/cm/CMService$3;->this$0:Lcom/asus/cm/CMService;

    iput-object p2, p0, Lcom/asus/cm/CMService$3;->val$rootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1628
    iget-object v3, p0, Lcom/asus/cm/CMService$3;->val$rootLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0b001f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1631
    .local v2, passwd:Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMUtils;->getSecretPW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/CMService$3;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v4}, Lcom/asus/cm/CMService;->access$1600(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmTree;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/asus/cm/CMConfig;->getLawmoRootUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Ext/UnlockCode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1632
    iget-object v3, p0, Lcom/asus/cm/CMService$3;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2100(Lcom/asus/cm/CMService;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1634
    :try_start_1
    iget-object v3, p0, Lcom/asus/cm/CMService$3;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setUnlockResult(I)V

    .line 1635
    iget-object v3, p0, Lcom/asus/cm/CMService$3;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2300(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->triggerUnlockSession(Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1645
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1646
    return-void

    .line 1636
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1637
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    :try_start_2
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1641
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1642
    .local v1, ex:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method
