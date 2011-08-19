.class Lcom/infraware/word/UxWordEditorActivity$1;
.super Landroid/os/Handler;
.source "UxWordEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/word/UxWordEditorActivity;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/word/UxWordEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/word/UxWordEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/word/UxWordEditorActivity$1;)Lcom/infraware/word/UxWordEditorActivity;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 118
    .local v8, oBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0008

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, szTitle:Ljava/lang/String;
    const-string v10, ""

    .line 120
    .local v10, szContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    if-nez v12, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$1(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->createView(Ljava/lang/CharSequence;Z)V

    .line 125
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    sparse-switch v12, :sswitch_data_0

    .line 484
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    if-lez v12, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->access$18(Lcom/infraware/word/UxWordEditorActivity;II)V

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 128
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0009

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    new-instance v13, Lcom/infraware/word/UxWordEditorActivity$1$1;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/word/UxWordEditorActivity$1$1;-><init>(Lcom/infraware/word/UxWordEditorActivity$1;)V

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 145
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0306

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 151
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0307

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 157
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a036f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 163
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 167
    :cond_2
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 176
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 180
    :cond_3
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 182
    if-eqz v8, :cond_1

    .line 184
    const-string v12, "ErrorCode"

    const/4 v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 185
    .local v6, nStrId:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_4

    const v6, 0x7f0a0273

    .line 187
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0273

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 190
    sget-object v17, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v13 .. v17}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 187
    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$3(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    sget-object v13, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    new-instance v13, Lcom/infraware/word/UxWordEditorActivity$1$2;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/word/UxWordEditorActivity$1$2;-><init>(Lcom/infraware/word/UxWordEditorActivity$1;)V

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 207
    .end local v6           #nStrId:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/word/UxWordToolBarUpdater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v15, v0

    iget-object v15, v15, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/infraware/word/UxWordEditorActivity;->access$5(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/helpers/EvClipboardHelper;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Lcom/infraware/word/UxWordToolBarUpdater;-><init>(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/EvObjectProc;)V

    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$6(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/common/UxToolBarUpdater;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    sget-object v15, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Word:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v13, v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v13, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->createView()V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$7(Lcom/infraware/word/UxWordEditorActivity;Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$8(Lcom/infraware/word/UxWordEditorActivity;)Landroid/view/Menu;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$8(Lcom/infraware/word/UxWordEditorActivity;)Landroid/view/Menu;

    move-result-object v12

    const v13, 0x7f0c0178

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 222
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$9(Lcom/infraware/word/UxWordEditorActivity;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    sget-object v13, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v12, v13}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    .line 227
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-boolean v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_bProcessingError:Z

    if-eqz v12, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a01af

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0364

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 232
    sget-object v17, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v13 .. v17}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 229
    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$3(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$9(Lcom/infraware/word/UxWordEditorActivity;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->changeViewMode(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oHandler:Landroid/os/Handler;

    const/16 v13, -0x10c

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 225
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    sget-object v13, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v12, v13}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_1

    .line 248
    :sswitch_7
    const-string v12, "nIndex"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 249
    .local v4, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v12, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v12, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 253
    .end local v4           #nIndex:I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 257
    :cond_8
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 259
    if-eqz v8, :cond_1

    .line 261
    const-string v9, ""

    .line 262
    .local v9, strMessage:Ljava/lang/String;
    const-string v12, "Count"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 263
    .local v3, nCount:I
    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a027a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/infraware/word/UxWordEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 264
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const v13, 0x7f0a027b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 269
    .end local v3           #nCount:I
    .end local v9           #strMessage:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 273
    :cond_a
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0070

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 278
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 282
    :cond_b
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0071

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 287
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 291
    :cond_c
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0073

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 297
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 301
    :cond_d
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 308
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 312
    :cond_e
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 314
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    if-nez v12, :cond_15

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0049

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->showToast(Ljava/lang/String;I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$9(Lcom/infraware/word/UxWordEditorActivity;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$10(Lcom/infraware/word/UxWordEditorActivity;Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_f

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v12}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 336
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 351
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$12(Lcom/infraware/word/UxWordEditorActivity;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$13(Lcom/infraware/word/UxWordEditorActivity;Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 356
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 359
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$14(Lcom/infraware/word/UxWordEditorActivity;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->finish()V

    .line 372
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$15(Lcom/infraware/word/UxWordEditorActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_10

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto/16 :goto_3

    .line 369
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a004a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/word/UxWordEditorActivity;->showToast(Ljava/lang/String;I)V

    goto :goto_4

    .line 377
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$16(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/EvCaretTask;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    move-result v2

    .line 378
    .local v2, bResult:Z
    if-eqz v2, :cond_1

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/word/UxWordEditorActivity;->access$17(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/UxSurfaceView;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/infraware/common/Utils;->showIme(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 383
    .end local v2           #bResult:Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$16(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/EvCaretTask;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    goto/16 :goto_0

    .line 386
    :sswitch_10
    const-string v12, "PageIndex"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 387
    .local v5, nPageIndex:I
    const-string v12, "Thumbnail"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 389
    .local v7, oBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v12, v5, v7}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->setThumbnailImage(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 392
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->showTitleProgress(Z)V

    goto/16 :goto_0

    .line 407
    .end local v5           #nPageIndex:I
    .end local v7           #oBitmap:Landroid/graphics/Bitmap;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 411
    :cond_17
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 413
    const v6, 0x7f0a035c

    .line 414
    .restart local v6       #nStrId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0273

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 417
    sget-object v17, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v13 .. v17}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 414
    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$3(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    sget-object v13, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    new-instance v13, Lcom/infraware/word/UxWordEditorActivity$1$3;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/word/UxWordEditorActivity$1$3;-><init>(Lcom/infraware/word/UxWordEditorActivity$1;)V

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 432
    .end local v6           #nStrId:I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f0a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a035d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12, v11, v10}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 439
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->updatePanel()V

    goto/16 :goto_0

    .line 444
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 448
    :cond_18
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 450
    const v6, 0x7f0a0363

    .line 451
    .restart local v6       #nStrId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    new-instance v13, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v14, v0

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0273

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 454
    sget-object v17, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v13 .. v17}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 451
    invoke-static {v12, v13}, Lcom/infraware/word/UxWordEditorActivity;->access$3(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    sget-object v13, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    new-instance v13, Lcom/infraware/word/UxWordEditorActivity$1$4;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/word/UxWordEditorActivity$1$4;-><init>(Lcom/infraware/word/UxWordEditorActivity$1;)V

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 469
    .end local v6           #nStrId:I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v12

    sget-object v13, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v12, v13, :cond_19

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    sget-object v13, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v12, v13}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 471
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v12

    sget-object v13, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v12, v13, :cond_1

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v12

    sget-object v13, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v12, v13}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 477
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    if-eqz v12, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/word/UxWordEditorActivity$1;->this$0:Lcom/infraware/word/UxWordEditorActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/infraware/word/UxWordEditorActivity;->access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 481
    :cond_1a
    const/4 v12, 0x0

    sput-boolean v12, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x305 -> :sswitch_16
        -0x304 -> :sswitch_16
        -0x303 -> :sswitch_16
        -0x11d -> :sswitch_3
        -0x11a -> :sswitch_c
        -0x118 -> :sswitch_15
        -0x117 -> :sswitch_14
        -0x116 -> :sswitch_11
        -0x115 -> :sswitch_12
        -0x112 -> :sswitch_2
        -0x111 -> :sswitch_1
        -0x110 -> :sswitch_10
        -0x10f -> :sswitch_13
        -0x10e -> :sswitch_d
        -0x10d -> :sswitch_f
        -0x10c -> :sswitch_e
        -0x10b -> :sswitch_b
        -0x10a -> :sswitch_9
        -0x109 -> :sswitch_a
        -0x106 -> :sswitch_7
        -0x105 -> :sswitch_8
        -0x104 -> :sswitch_5
        -0x103 -> :sswitch_4
        -0x102 -> :sswitch_0
        -0x101 -> :sswitch_6
    .end sparse-switch
.end method
