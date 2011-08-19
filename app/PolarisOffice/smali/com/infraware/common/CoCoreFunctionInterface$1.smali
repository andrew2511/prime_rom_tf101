.class Lcom/infraware/common/CoCoreFunctionInterface$1;
.super Landroid/os/Handler;
.source "CoCoreFunctionInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/CoCoreFunctionInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/CoCoreFunctionInterface;


# direct methods
.method constructor <init>(Lcom/infraware/common/CoCoreFunctionInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 3145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x14

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3217
    :goto_0
    return-void

    .line 3152
    :pswitch_0
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/evengine/ICoEngineInterface;->IRedoUndo(I)V

    goto :goto_0

    .line 3155
    :pswitch_1
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/infraware/evengine/ICoEngineInterface;->IRedoUndo(I)V

    goto :goto_0

    .line 3159
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-boolean v0, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bEditMode:Z

    if-eqz v0, :cond_2

    .line 3161
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->isReflowTextMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3163
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISetWebMode()V

    .line 3164
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    iput-boolean v2, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bReflowMode:Z

    goto :goto_0

    .line 3168
    :cond_1
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->ISetPrintMode()V

    .line 3169
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    iput-boolean v3, v0, Lcom/infraware/common/CoCoreFunctionInterface;->m_bReflowMode:Z

    goto :goto_0

    .line 3174
    :cond_2
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->isReflowTextMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3175
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_REFLOW_TEXT:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto :goto_0

    .line 3177
    :cond_3
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    sget-object v1, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_ORIGIN:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto :goto_0

    .line 3183
    :pswitch_3
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/high16 v3, -0x100

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ICreateTable(III)V

    goto :goto_0

    .line 3186
    :pswitch_4
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 3187
    :cond_4
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertCell(II)V

    goto/16 :goto_0

    .line 3189
    :cond_5
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ICellInsertDelete(II)V

    goto/16 :goto_0

    .line 3192
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->access$1(Lcom/infraware/common/CoCoreFunctionInterface;)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 3194
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_7

    .line 3195
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertRows(III)V

    goto/16 :goto_0

    .line 3197
    :cond_7
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertColumns(III)V

    goto/16 :goto_0

    .line 3201
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_9

    .line 3202
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/infraware/evengine/ICoEngineInterface;->ICellInsertDelete(II)V

    goto/16 :goto_0

    .line 3204
    :cond_9
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/infraware/evengine/ICoEngineInterface;->ICellInsertDelete(II)V

    goto/16 :goto_0

    .line 3208
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_a

    .line 3209
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertRows(III)V

    goto/16 :goto_0

    .line 3211
    :cond_a
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v2, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISheetInsertColumns(III)V

    goto/16 :goto_0

    .line 3214
    :pswitch_7
    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->access$0()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/common/CoCoreFunctionInterface$1;->this$0:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-static {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->access$2(Lcom/infraware/common/CoCoreFunctionInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISaveDocument(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
