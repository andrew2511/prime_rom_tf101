.class Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog$1;
.super Ljava/lang/Object;
.source "UiProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->createView(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 65
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->access$0(Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_DialogNegativeDismiss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method
