.class Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog$5;
.super Ljava/lang/Object;
.source "UiUnit_Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->constructEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog$5;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog$5;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog$5;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_DialogNegativeDismiss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method
