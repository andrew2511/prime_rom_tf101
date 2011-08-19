.class Lcom/asus/dm/DMService$4;
.super Ljava/lang/Object;
.source "DMService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dm/DMService;->showNIDMDLCDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/asus/dm/DMService$4;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1556
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/DMService$4;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v1}, Lcom/asus/dm/DMService;->access$100(Lcom/asus/dm/DMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->cancelSession()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1561
    return-void

    .line 1557
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1558
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method
