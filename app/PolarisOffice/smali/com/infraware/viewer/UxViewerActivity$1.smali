.class Lcom/infraware/viewer/UxViewerActivity$1;
.super Landroid/os/Handler;
.source "UxViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/viewer/UxViewerActivity;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/viewer/UxViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/viewer/UxViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/viewer/UxViewerActivity$1;)Lcom/infraware/viewer/UxViewerActivity;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 78
    .local v7, oBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0008

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, szTitle:Ljava/lang/String;
    const-string v9, ""

    .line 80
    .local v9, szContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    if-nez v11, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    new-instance v12, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v11, v12}, Lcom/infraware/viewer/UxViewerActivity;->access$1(Lcom/infraware/viewer/UxViewerActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->createView(Ljava/lang/CharSequence;Z)V

    .line 86
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v11, v0

    packed-switch v11, :pswitch_data_0

    .line 246
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v11, v0

    if-lez v11, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/infraware/viewer/UxViewerActivity;->access$7(Lcom/infraware/viewer/UxViewerActivity;II)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 89
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0009

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    new-instance v12, Lcom/infraware/viewer/UxViewerActivity$1$1;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/viewer/UxViewerActivity$1$1;-><init>(Lcom/infraware/viewer/UxViewerActivity$1;)V

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 106
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a036f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 112
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 116
    :cond_2
    const/4 v11, 0x0

    sput-boolean v11, Lcom/infraware/viewer/UxViewerActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 119
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 123
    :cond_3
    const/4 v11, 0x0

    sput-boolean v11, Lcom/infraware/viewer/UxViewerActivity;->g_bProgressFlag:Z

    .line 125
    if-eqz v7, :cond_1

    .line 127
    const-string v11, "ErrorCode"

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 128
    .local v5, nStrId:I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    const v5, 0x7f0a0273

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    new-instance v12, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v13, v0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0273

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 133
    sget-object v16, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v12 .. v16}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 130
    invoke-static {v11, v12}, Lcom/infraware/viewer/UxViewerActivity;->access$3(Lcom/infraware/viewer/UxViewerActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$4(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$4(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v11

    sget-object v12, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$4(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v11

    new-instance v12, Lcom/infraware/viewer/UxViewerActivity$1$2;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/viewer/UxViewerActivity$1$2;-><init>(Lcom/infraware/viewer/UxViewerActivity$1;)V

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$4(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 151
    .end local v5           #nStrId:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    new-instance v12, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v13, v0

    sget-object v14, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Viewer:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v12, v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v12, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->createView()V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/infraware/viewer/UxViewerActivity;->getDocType()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->showDrawer(Z)V

    .line 158
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/infraware/viewer/UxViewerActivity;->access$5(Lcom/infraware/viewer/UxViewerActivity;Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$6(Lcom/infraware/viewer/UxViewerActivity;)Landroid/view/Menu;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$6(Lcom/infraware/viewer/UxViewerActivity;)Landroid/view/Menu;

    move-result-object v11

    const v12, 0x7f0c0178

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$6(Lcom/infraware/viewer/UxViewerActivity;)Landroid/view/Menu;

    move-result-object v11

    const v12, 0x7f0c018b

    invoke-interface {v11, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 170
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v11

    sget-object v12, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v11, v12}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 173
    :pswitch_6
    const-string v11, "nIndex"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 174
    .local v3, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/infraware/viewer/UxViewerActivity;->getDocType()I

    move-result v11

    const/16 v12, 0xc

    if-eq v11, v12, :cond_1

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v11, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 178
    .end local v3           #nIndex:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 180
    :cond_7
    if-eqz v7, :cond_1

    .line 182
    const-string v8, ""

    .line 183
    .local v8, strMessage:Ljava/lang/String;
    const-string v11, "Count"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 184
    .local v2, nCount:I
    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a027a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 186
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Lcom/infraware/viewer/UxViewerActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 185
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    const v12, 0x7f0a027b

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/infraware/viewer/UxViewerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 190
    .end local v2           #nCount:I
    .end local v8           #strMessage:Ljava/lang/String;
    :pswitch_8
    const-string v11, "PageIndex"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 191
    .local v4, nPageIndex:I
    const-string v11, "Thumbnail"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 194
    .local v6, oBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v11, v4, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->setThumbnailImage(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 197
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/viewer/UxViewerActivity;->showTitleProgress(Z)V

    goto/16 :goto_0

    .line 201
    .end local v4           #nPageIndex:I
    .end local v6           #oBitmap:Landroid/graphics/Bitmap;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v11

    sget-object v12, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v11, v12, :cond_a

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v11

    sget-object v12, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v11, v12}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v11

    sget-object v12, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v11, v12, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$2(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v11

    sget-object v12, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v11, v12}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 208
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    iget-object v11, v11, Lcom/infraware/viewer/UxViewerActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->updatePanel()V

    goto/16 :goto_0

    .line 212
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 216
    :cond_b
    const/4 v11, 0x0

    sput-boolean v11, Lcom/infraware/viewer/UxViewerActivity;->g_bProgressFlag:Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0070

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/infraware/viewer/UxViewerActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 221
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 225
    :cond_c
    const/4 v11, 0x0

    sput-boolean v11, Lcom/infraware/viewer/UxViewerActivity;->g_bProgressFlag:Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0071

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/infraware/viewer/UxViewerActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 230
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 234
    :cond_d
    const/4 v11, 0x0

    sput-boolean v11, Lcom/infraware/viewer/UxViewerActivity;->g_bProgressFlag:Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/infraware/viewer/UxViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0073

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/infraware/viewer/UxViewerActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 239
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/viewer/UxViewerActivity$1;->this$0:Lcom/infraware/viewer/UxViewerActivity;

    move-object v11, v0

    invoke-static {v11}, Lcom/infraware/viewer/UxViewerActivity;->access$0(Lcom/infraware/viewer/UxViewerActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 243
    :cond_e
    const/4 v11, 0x0

    sput-boolean v11, Lcom/infraware/viewer/UxViewerActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch -0x11d
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
