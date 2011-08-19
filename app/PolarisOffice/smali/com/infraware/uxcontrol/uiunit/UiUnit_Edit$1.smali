.class Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;
.super Ljava/lang/Object;
.source "UiUnit_Edit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->createNativeView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AfterTextChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BeforeTextChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_EditTextChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
