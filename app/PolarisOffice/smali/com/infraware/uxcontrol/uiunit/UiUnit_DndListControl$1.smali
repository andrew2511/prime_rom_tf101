.class Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;
.super Ljava/lang/Object;
.source "UiUnit_DndListControl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;->constructEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

.field private final synthetic val$eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->val$eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->val$eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_DialogPositiveDismiss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 142
    return-void
.end method
