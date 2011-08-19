.class Lcom/infraware/slide/UxSlideEditorActivity$1;
.super Landroid/os/Handler;
.source "UxSlideEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/slide/UxSlideEditorActivity;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/slide/UxSlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/slide/UxSlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    .line 358
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/slide/UxSlideEditorActivity$1;)Lcom/infraware/slide/UxSlideEditorActivity;
    .locals 1
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 362
    .local v8, oBundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, szTitle:Ljava/lang/String;
    const-string v11, ""

    .line 364
    .local v11, szContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    if-nez v13, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$1(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->createView(Ljava/lang/CharSequence;Z)V

    .line 369
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    sparse-switch v13, :sswitch_data_0

    .line 807
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    if-lez v13, :cond_1

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v14, v0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->access$20(Lcom/infraware/slide/UxSlideEditorActivity;II)V

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 377
    :sswitch_0
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_LOADINGPROGRESS_LOADING"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    new-instance v14, Lcom/infraware/slide/UxSlideEditorActivity$1$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/slide/UxSlideEditorActivity$1$1;-><init>(Lcom/infraware/slide/UxSlideEditorActivity$1;)V

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 396
    :sswitch_1
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_LOADINGPROGRESS_SAVING"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0306

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 403
    :sswitch_2
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_LOADINGPROGRESS_REPLACE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0307

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 410
    :sswitch_3
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_LOADINGPROGRESS_WAIT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a036f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 417
    :sswitch_4
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_LOADINGPROGRESS_END"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 422
    :cond_2
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 426
    :sswitch_5
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_LOADINGPROGRESS_ERROR"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 431
    :cond_3
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 433
    if-eqz v8, :cond_1

    .line 435
    const-string v13, "ErrorCode"

    const/4 v14, -0x1

    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 436
    .local v6, nStrId:I
    const/4 v13, -0x1

    if-ne v6, v13, :cond_4

    const v6, 0x7f0a0273

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0273

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 440
    sget-object v18, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v14 .. v18}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 437
    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$3(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    sget-object v14, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    new-instance v14, Lcom/infraware/slide/UxSlideEditorActivity$1$2;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/slide/UxSlideEditorActivity$1$2;-><init>(Lcom/infraware/slide/UxSlideEditorActivity$1;)V

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 457
    .end local v6           #nStrId:I
    :sswitch_6
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_INITIALIZE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/slide/UxSlideToolBarUpdater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/infraware/slide/UxSlideEditorActivity;->access$5(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/helpers/EvClipboardHelper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lcom/infraware/slide/UxSlideToolBarUpdater;-><init>(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideMainToolbar;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/EvObjectProc;)V

    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$6(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/common/UxToolBarUpdater;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$7(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/common/UxToolBarUpdater;->updateToolbar()V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    sget-object v16, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Slide:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v14 .. v16}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v14, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->createView()V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$8(Lcom/infraware/slide/UxSlideEditorActivity;Z)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$9(Lcom/infraware/slide/UxSlideEditorActivity;)Landroid/view/Menu;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$9(Lcom/infraware/slide/UxSlideEditorActivity;)Landroid/view/Menu;

    move-result-object v13

    const v14, 0x7f0c0178

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 473
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$10(Lcom/infraware/slide/UxSlideEditorActivity;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    sget-object v14, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v13, v14}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    .line 478
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_bProcessingError:Z

    if-eqz v13, :cond_6

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a01af

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0364

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 483
    sget-object v18, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v14 .. v18}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 480
    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$3(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 488
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->initSlideNote()V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$10(Lcom/infraware/slide/UxSlideEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->changeViewMode(I)V

    goto/16 :goto_0

    .line 476
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    sget-object v14, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v13, v14}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_1

    .line 496
    :sswitch_7
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_PAGE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v13, "nIndex"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 498
    .local v4, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13, v4}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->setCurrentPage(I)V

    .line 508
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$11(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$11(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 505
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->setCurrentPage(I)V

    goto :goto_2

    .line 512
    .end local v4           #nIndex:I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 516
    :cond_a
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 518
    if-eqz v8, :cond_1

    .line 520
    const-string v10, ""

    .line 521
    .local v10, strMessage:Ljava/lang/String;
    const-string v13, "Count"

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 522
    .local v3, nCount:I
    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a027a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 524
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 523
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const v14, 0x7f0a027b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 528
    .end local v3           #nCount:I
    .end local v10           #strMessage:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 532
    :cond_c
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0070

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 537
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 541
    :cond_d
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0071

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 546
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 550
    :cond_e
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0073

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 556
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 560
    :cond_f
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 568
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 572
    :cond_10
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 574
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v13, v0

    if-nez v13, :cond_17

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0049

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->showToast(Ljava/lang/String;I)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$10(Lcom/infraware/slide/UxSlideEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$12(Lcom/infraware/slide/UxSlideEditorActivity;Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_strOpenPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_11

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v13}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 595
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 597
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 610
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$14(Lcom/infraware/slide/UxSlideEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$15(Lcom/infraware/slide/UxSlideEditorActivity;Z)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 615
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 619
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 622
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$16(Lcom/infraware/slide/UxSlideEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->finish()V

    .line 632
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$17(Lcom/infraware/slide/UxSlideEditorActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_strOpenPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_12

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$13(Lcom/infraware/slide/UxSlideEditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 605
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto/16 :goto_4

    .line 629
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a004a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/infraware/slide/UxSlideEditorActivity;->showToast(Ljava/lang/String;I)V

    goto :goto_5

    .line 638
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$18(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/EvCaretTask;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    move-result v2

    .line 639
    .local v2, bResult:Z
    if-eqz v2, :cond_1

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v14, v0

    invoke-static {v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$19(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/UxSurfaceView;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/infraware/common/Utils;->showIme(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 643
    .end local v2           #bResult:Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$18(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/EvCaretTask;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    goto/16 :goto_0

    .line 646
    :sswitch_10
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_THUMBNAIL_UPDATE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v13, "PageIndex"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 648
    .local v5, nPageIndex:I
    const-string v13, "Thumbnail"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 651
    .local v7, oBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_nEV_VIEW_MODE:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_19

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13, v5, v7}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->setThumbnailImage(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 656
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->showTitleProgress(Z)V

    goto/16 :goto_0

    .line 660
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13, v5, v7}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->setThumbnailImage(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 663
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->showTitleProgress(Z)V

    goto/16 :goto_0

    .line 679
    .end local v5           #nPageIndex:I
    .end local v7           #oBitmap:Landroid/graphics/Bitmap;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 683
    :cond_1b
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 685
    const v6, 0x7f0a035c

    .line 686
    .restart local v6       #nStrId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0273

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 689
    sget-object v18, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v14 .. v18}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 686
    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$3(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    new-instance v14, Lcom/infraware/slide/UxSlideEditorActivity$1$3;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/slide/UxSlideEditorActivity$1$3;-><init>(Lcom/infraware/slide/UxSlideEditorActivity$1;)V

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 702
    .end local v6           #nStrId:I
    :sswitch_12
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_IMAGE_PROCESSING"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f0a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a035d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 710
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 714
    :cond_1c
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    .line 716
    const v6, 0x7f0a0363

    .line 717
    .restart local v6       #nStrId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    new-instance v14, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v15, v0

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0273

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 720
    sget-object v18, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct/range {v14 .. v18}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 717
    invoke-static {v13, v14}, Lcom/infraware/slide/UxSlideEditorActivity;->access$3(Lcom/infraware/slide/UxSlideEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    new-instance v14, Lcom/infraware/slide/UxSlideEditorActivity$1$4;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/infraware/slide/UxSlideEditorActivity$1$4;-><init>(Lcom/infraware/slide/UxSlideEditorActivity$1;)V

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$4(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 734
    .end local v6           #nStrId:I
    :sswitch_14
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_WHOLEPAGE_LOADED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_nEV_VIEW_MODE:I

    if-nez v13, :cond_1d

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->updatePanel()V

    goto/16 :goto_0

    .line 742
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->updatePanel()V

    goto/16 :goto_0

    .line 747
    :sswitch_15
    const-string v13, "UxSlideEditorActivity"

    const-string v14, "MSG_SYNC_ZOOM_MODE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v13

    sget-object v14, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v13, v14, :cond_1e

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    sget-object v14, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WHOLE_PAGE:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v13, v14}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 750
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/common/CoCoreFunctionInterface;->getZoomViewMode()Lcom/infraware/common/UserClasses$VIEW_MODE;

    move-result-object v13

    sget-object v14, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    if-ne v13, v14, :cond_1

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$2(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v13

    sget-object v14, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v13, v14}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    goto/16 :goto_0

    .line 754
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    if-eqz v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v13, v13, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 757
    .local v9, oMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    iput v13, v9, Landroid/os/Message;->what:I

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v13, v13, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 761
    .end local v9           #oMsg:Landroid/os/Message;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 765
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 771
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v13, v13, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 774
    .restart local v9       #oMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    iput v13, v9, Landroid/os/Message;->what:I

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v13, v13, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 778
    .end local v9           #oMsg:Landroid/os/Message;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 782
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 786
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v13, v13, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 789
    .restart local v9       #oMsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    iput v13, v9, Landroid/os/Message;->what:I

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/infraware/slide/UxSlideEditorActivity;->m_oSlidePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;

    iget-object v13, v13, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideThumbnailPanel;->m_oUiUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 793
    .end local v9           #oMsg:Landroid/os/Message;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$0(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 797
    const/4 v13, 0x0

    sput-boolean v13, Lcom/infraware/slide/UxSlideEditorActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 803
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$11(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/slide/UxSlideEditorActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/infraware/slide/UxSlideEditorActivity;->access$11(Lcom/infraware/slide/UxSlideEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    move-result-object v13

    invoke-virtual {v13}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->reLoadSlidenote()V

    goto/16 :goto_0

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        -0x306 -> :sswitch_19
        -0x305 -> :sswitch_18
        -0x304 -> :sswitch_17
        -0x303 -> :sswitch_16
        -0x11d -> :sswitch_3
        -0x11a -> :sswitch_c
        -0x118 -> :sswitch_15
        -0x117 -> :sswitch_13
        -0x116 -> :sswitch_11
        -0x115 -> :sswitch_12
        -0x112 -> :sswitch_2
        -0x111 -> :sswitch_1
        -0x110 -> :sswitch_10
        -0x10f -> :sswitch_14
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
