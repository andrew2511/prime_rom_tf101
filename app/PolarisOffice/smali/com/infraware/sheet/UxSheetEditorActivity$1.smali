.class Lcom/infraware/sheet/UxSheetEditorActivity$1;
.super Landroid/os/Handler;
.source "UxSheetEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/sheet/UxSheetEditorActivity;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/sheet/UxSheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/sheet/UxSheetEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/sheet/UxSheetEditorActivity$1;)Lcom/infraware/sheet/UxSheetEditorActivity;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->isFinishing()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 500
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 140
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 141
    .local v9, oBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0008

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, szTitle:Ljava/lang/String;
    const-string v11, ""

    .line 143
    .local v11, szContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    if-nez v14, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    new-instance v15, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$1(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->createView(Ljava/lang/CharSequence;Z)V

    .line 148
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v14, v0

    sparse-switch v14, :sswitch_data_0

    .line 496
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v14, v0

    if-lez v14, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$21(Lcom/infraware/sheet/UxSheetEditorActivity;II)V

    goto :goto_0

    .line 151
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0009

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14, v13, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    new-instance v15, Lcom/infraware/sheet/UxSheetEditorActivity$1$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/sheet/UxSheetEditorActivity$1$1;-><init>(Lcom/infraware/sheet/UxSheetEditorActivity$1;)V

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 169
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0306

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14, v13, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 175
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0307

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14, v13, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 181
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a036f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14, v13, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 187
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 190
    :cond_3
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 193
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 196
    :cond_4
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 198
    if-eqz v9, :cond_0

    .line 200
    const-string v14, "ErrorCode"

    const/4 v15, -0x1

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 201
    .local v8, nStrId:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_5

    const v8, 0x7f0a0273

    .line 202
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    new-instance v15, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v16, v0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0273

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 205
    sget-object v19, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v15 .. v19}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 202
    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$3(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$4(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$4(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v14

    sget-object v15, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$4(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v14

    new-instance v15, Lcom/infraware/sheet/UxSheetEditorActivity$1$2;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/sheet/UxSheetEditorActivity$1$2;-><init>(Lcom/infraware/sheet/UxSheetEditorActivity$1;)V

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$4(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 222
    .end local v8           #nStrId:I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->initSheetBar()V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->InitFunctionBar()V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    new-instance v15, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$5(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/helpers/EvClipboardHelper;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    move-object/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/infraware/sheet/UxSheetToolBarUpdater;-><init>(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetMainToolbar;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/EvObjectProc;)V

    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$6(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/common/UxToolBarUpdater;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$8(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/sheet/UxSheetToolBarUpdater;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$9(Lcom/infraware/sheet/UxSheetEditorActivity;Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$10(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/view/Menu;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$10(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/view/Menu;

    move-result-object v14

    const v15, 0x7f0c0178

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    sget-object v15, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v14, v15}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_bProcessingError:Z

    if-eqz v14, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    new-instance v15, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v16, v0

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a01af

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0364

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 244
    sget-object v19, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v15 .. v19}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 241
    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$3(Lcom/infraware/sheet/UxSheetEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$4(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$4(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 250
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$11(Lcom/infraware/sheet/UxSheetEditorActivity;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->changeViewMode(I)V

    goto/16 :goto_0

    .line 255
    .restart local p1
    :sswitch_8
    if-eqz v9, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    const-string v15, "CellString"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual/range {p1 .. p1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 265
    .restart local p1
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual/range {p1 .. p1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v14

    if-nez v14, :cond_0

    .line 267
    if-eqz v9, :cond_0

    .line 269
    const-string v14, "nStart"

    const/4 v15, -0x1

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 270
    .local v7, nPosStart:I
    const-string v14, "nEnd"

    const/4 v15, -0x1

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 271
    .local v6, nPosEnd:I
    if-ltz v7, :cond_0

    if-ge v7, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14, v7, v6}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_0

    .line 277
    .end local v6           #nPosEnd:I
    .end local v7           #nPosStart:I
    .restart local p1
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual/range {p1 .. p1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v14

    if-nez v14, :cond_0

    .line 280
    const-string v14, "nPos"

    const/4 v15, -0x1

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 282
    .local v5, nPos:I
    if-ltz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->length()I

    move-result v14

    if-lt v14, v5, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 286
    .end local v5           #nPos:I
    .restart local p1
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 289
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 293
    :cond_8
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 295
    if-eqz v9, :cond_0

    .line 297
    const-string v10, ""

    .line 298
    .local v10, strMessage:Ljava/lang/String;
    const-string v14, "Count"

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 299
    .local v3, nCount:I
    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a027a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 301
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 300
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const v15, 0x7f0a027b

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 305
    .end local v3           #nCount:I
    .end local v10           #strMessage:Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 309
    :cond_a
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0070

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 314
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 318
    :cond_b
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0071

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 323
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 327
    :cond_c
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0073

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 333
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 336
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oSheetbar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;

    if-eqz v14, :cond_e

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oSheetbar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v15

    invoke-virtual {v15}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentSheetIndex()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;->setSelectedSheet(I)V

    .line 339
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v15

    invoke-virtual {v15}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentSheetIndex()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->syncPageIndex(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oHandler:Landroid/os/Handler;

    const/16 v15, -0x205

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 348
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 352
    :cond_f
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 354
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v14, v0

    if-nez v14, :cond_16

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0049

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->showToast(Ljava/lang/String;I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$11(Lcom/infraware/sheet/UxSheetEditorActivity;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$13(Lcom/infraware/sheet/UxSheetEditorActivity;Z)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_strOpenPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_10

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v14}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 376
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 391
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$15(Lcom/infraware/sheet/UxSheetEditorActivity;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$16(Lcom/infraware/sheet/UxSheetEditorActivity;Z)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 396
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 400
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$17(Lcom/infraware/sheet/UxSheetEditorActivity;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->finish()V

    .line 413
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$18(Lcom/infraware/sheet/UxSheetEditorActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_strOpenPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-static {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_11

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$14(Lcom/infraware/sheet/UxSheetEditorActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 386
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto/16 :goto_2

    .line 410
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/sheet/UxSheetEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a004a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/infraware/sheet/UxSheetEditorActivity;->showToast(Ljava/lang/String;I)V

    goto :goto_3

    .line 417
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$19(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxSurfaceView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/common/UxSurfaceView;->showSoftInput()V

    goto/16 :goto_0

    .line 420
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$20(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/EvCaretTask;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    goto/16 :goto_0

    .line 423
    :sswitch_14
    const-string v14, "szName"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 424
    .local v12, szFuncName:Ljava/lang/String;
    const-string v14, "("

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 425
    .local v2, idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->requestFocus()Z

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    const/16 v14, 0x10

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->setEditMode(I)V

    goto/16 :goto_0

    .line 448
    .end local v2           #idx:I
    .end local v12           #szFuncName:Ljava/lang/String;
    .restart local p0
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v14

    sget-object v15, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v14, v15, :cond_17

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    sget-object v15, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v14, v15}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 450
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v14

    sget-object v15, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v14, v15, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    sget-object v15, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v14, v15}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 460
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 464
    :cond_18
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 469
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oSheetbar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;

    if-eqz v14, :cond_19

    .line 471
    const-string v14, "nIndex"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 472
    .local v4, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oSheetbar:Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;

    invoke-virtual {v14, v4}, Lcom/infraware/uxcontrol/uicontrol/sheet/UiSheetbar;->setSelectedSheet(I)V

    .line 474
    .end local v4           #nIndex:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$0(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 478
    :cond_1a
    const/4 v14, 0x0

    sput-boolean v14, Lcom/infraware/sheet/UxSheetEditorActivity;->g_bProgressFlag:Z

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oHandler:Landroid/os/Handler;

    const/16 v15, -0x205

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$2(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/infraware/common/CoCoreFunctionInterface;->isProtectSheet()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_oHandler:Landroid/os/Handler;

    const v15, 0x7f0a0275

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 487
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    iget v14, v14, Lcom/infraware/sheet/UxSheetEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$7(Lcom/infraware/sheet/UxSheetEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/infraware/sheet/UxSheetToolBarUpdater;

    invoke-virtual/range {p1 .. p1}, Lcom/infraware/sheet/UxSheetToolBarUpdater;->isProtectSheet()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 492
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/sheet/UxSheetEditorActivity$1;->this$0:Lcom/infraware/sheet/UxSheetEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/sheet/UxSheetEditorActivity;->access$12(Lcom/infraware/sheet/UxSheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        -0x305 -> :sswitch_16
        -0x304 -> :sswitch_16
        -0x303 -> :sswitch_16
        -0x205 -> :sswitch_18
        -0x204 -> :sswitch_14
        -0x203 -> :sswitch_a
        -0x202 -> :sswitch_b
        -0x201 -> :sswitch_9
        -0x200 -> :sswitch_8
        -0x11d -> :sswitch_4
        -0x11a -> :sswitch_10
        -0x118 -> :sswitch_15
        -0x112 -> :sswitch_3
        -0x111 -> :sswitch_2
        -0x10f -> :sswitch_0
        -0x10e -> :sswitch_11
        -0x10d -> :sswitch_13
        -0x10c -> :sswitch_12
        -0x10b -> :sswitch_f
        -0x10a -> :sswitch_d
        -0x109 -> :sswitch_e
        -0x106 -> :sswitch_17
        -0x105 -> :sswitch_c
        -0x104 -> :sswitch_6
        -0x103 -> :sswitch_5
        -0x102 -> :sswitch_1
        -0x101 -> :sswitch_7
    .end sparse-switch
.end method
