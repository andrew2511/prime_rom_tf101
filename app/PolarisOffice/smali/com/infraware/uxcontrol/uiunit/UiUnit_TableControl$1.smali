.class Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;
.super Ljava/lang/Object;
.source "UiUnit_TableControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->constructEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

.field private final synthetic val$eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->val$eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 102
    .local v0, nX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 105
    .local v2, nY:I
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iget v4, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nCellWidth:I

    div-int v1, v0, v4

    .line 106
    .local v1, nXCell:I
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iget v4, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nCellHeight:I

    div-int v3, v2, v4

    .line 108
    .local v3, nYCell:I
    if-gez v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 110
    :cond_0
    if-gez v3, :cond_1

    .line 111
    const/4 v3, 0x0

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Posint  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nCell    :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->str:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    invoke-virtual {v4, v1, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->setCellColor(II)V

    .line 116
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iget v4, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nBeforeXCell:I

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iget v4, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nBeforeYCell:I

    if-eq v4, v3, :cond_3

    .line 117
    :cond_2
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iget-object v6, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->val$eUnitCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V

    .line 119
    :cond_3
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iput v1, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nBeforeXCell:I

    .line 120
    iget-object v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl$1;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;

    iput v3, v4, Lcom/infraware/uxcontrol/uiunit/UiUnit_TableControl;->m_nBeforeYCell:I

    .line 135
    return v10
.end method
