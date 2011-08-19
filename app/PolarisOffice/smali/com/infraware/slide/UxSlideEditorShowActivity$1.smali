.class Lcom/infraware/slide/UxSlideEditorShowActivity$1;
.super Landroid/os/Handler;
.source "UxSlideEditorShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/slide/UxSlideEditorShowActivity;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;


# direct methods
.method constructor <init>(Lcom/infraware/slide/UxSlideEditorShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/slide/UxSlideEditorShowActivity$1;)Lcom/infraware/slide/UxSlideEditorShowActivity;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v9, -0x1

    const v10, 0x7f0a0273

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 121
    .local v2, oBundle:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, szTitle:Ljava/lang/String;
    const-string v4, ""

    .line 123
    .local v4, szContent:Ljava/lang/String;
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    if-nez v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    new-instance v7, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    iget-object v8, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-direct {v7, v8}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v6, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$1(Lcom/infraware/slide/UxSlideEditorShowActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V

    .line 126
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->createView(Ljava/lang/CharSequence;Z)V

    .line 128
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 327
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 131
    :sswitch_1
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 134
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 135
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    new-instance v7, Lcom/infraware/slide/UxSlideEditorShowActivity$1$1;

    invoke-direct {v7, p0}, Lcom/infraware/slide/UxSlideEditorShowActivity$1$1;-><init>(Lcom/infraware/slide/UxSlideEditorShowActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 146
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 149
    :sswitch_2
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0306

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 150
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 152
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 155
    :sswitch_3
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0307

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 157
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 158
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 161
    :sswitch_4
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a036f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setCancelable(Z)V

    .line 164
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 167
    :sswitch_5
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 171
    :cond_2
    sput-boolean v12, Lcom/infraware/slide/UxSlideEditorShowActivity;->g_bProgressFlag:Z

    goto/16 :goto_0

    .line 175
    :sswitch_6
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 179
    :cond_3
    sput-boolean v12, Lcom/infraware/slide/UxSlideEditorShowActivity;->g_bProgressFlag:Z

    .line 181
    if-eqz v2, :cond_1

    .line 183
    const-string v6, "ErrorCode"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, nStrId:I
    if-ne v1, v9, :cond_4

    const v1, 0x7f0a0273

    .line 185
    :cond_4
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    new-instance v7, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    iget-object v8, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    .line 186
    iget-object v9, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v9}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    iget-object v10, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v10}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 188
    sget-object v11, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 185
    invoke-static {v6, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$3(Lcom/infraware/slide/UxSlideEditorShowActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 189
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 191
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v6, v7, v12}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 192
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    new-instance v7, Lcom/infraware/slide/UxSlideEditorShowActivity$1$2;

    invoke-direct {v7, p0}, Lcom/infraware/slide/UxSlideEditorShowActivity$1$2;-><init>(Lcom/infraware/slide/UxSlideEditorShowActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 201
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 205
    .end local v1           #nStrId:I
    :sswitch_7
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 206
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6, v13}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$5(Lcom/infraware/slide/UxSlideEditorShowActivity;Z)V

    .line 208
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    iget-boolean v6, v6, Lcom/infraware/slide/UxSlideEditorShowActivity;->m_bProcessingError:Z

    if-eqz v6, :cond_5

    .line 210
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    new-instance v7, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    iget-object v8, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    .line 211
    iget-object v9, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v9}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a01af

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    iget-object v10, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v10}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0364

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 213
    sget-object v11, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 210
    invoke-static {v6, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$3(Lcom/infraware/slide/UxSlideEditorShowActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 214
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 215
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 219
    :cond_5
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    const v7, 0x7f0c015f

    invoke-virtual {v6, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 220
    .local v0, docViewLayout:Landroid/widget/RelativeLayout;
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$2(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v6

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    invoke-virtual {v6, v12, v7, v8, v13}, Lcom/infraware/common/CoCoreFunctionInterface;->changeMode(IIIZ)V

    .line 222
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    const-class v7, Lcom/infraware/slide/UxSlideShowActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v3, oIntent:Landroid/content/Intent;
    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRATYPE;->EXTRATYPE_SLIDESHOW:Ljava/lang/String;

    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$ACTIVITY_EXTRAVALUE;->EXTRAVALUE_SLIDESHOW_FIRST:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    const/16 v7, 0x9

    invoke-virtual {v6, v3, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 260
    .end local v0           #docViewLayout:Landroid/widget/RelativeLayout;
    .end local v3           #oIntent:Landroid/content/Intent;
    :sswitch_8
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 261
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 264
    :cond_6
    sput-boolean v12, Lcom/infraware/slide/UxSlideEditorShowActivity;->g_bProgressFlag:Z

    .line 266
    const v1, 0x7f0a035c

    .line 267
    .restart local v1       #nStrId:I
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    new-instance v7, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    iget-object v8, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    .line 268
    iget-object v9, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v9}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 269
    iget-object v10, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v10}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 270
    sget-object v11, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 267
    invoke-static {v6, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$3(Lcom/infraware/slide/UxSlideEditorShowActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 271
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 272
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    new-instance v7, Lcom/infraware/slide/UxSlideEditorShowActivity$1$3;

    invoke-direct {v7, p0}, Lcom/infraware/slide/UxSlideEditorShowActivity$1$3;-><init>(Lcom/infraware/slide/UxSlideEditorShowActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 279
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 283
    .end local v1           #nStrId:I
    :sswitch_9
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a035d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 286
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 290
    :sswitch_a
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 291
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$0(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 294
    :cond_7
    sput-boolean v12, Lcom/infraware/slide/UxSlideEditorShowActivity;->g_bProgressFlag:Z

    .line 296
    const v1, 0x7f0a0363

    .line 297
    .restart local v1       #nStrId:I
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    new-instance v7, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    iget-object v8, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    .line 298
    iget-object v9, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v9}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    iget-object v10, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-virtual {v10}, Lcom/infraware/slide/UxSlideEditorShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 300
    sget-object v11, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 297
    invoke-static {v6, v7}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$3(Lcom/infraware/slide/UxSlideEditorShowActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V

    .line 301
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 302
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    new-instance v7, Lcom/infraware/slide/UxSlideEditorShowActivity$1$4;

    invoke-direct {v7, p0}, Lcom/infraware/slide/UxSlideEditorShowActivity$1$4;-><init>(Lcom/infraware/slide/UxSlideEditorShowActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 309
    iget-object v6, p0, Lcom/infraware/slide/UxSlideEditorShowActivity$1;->this$0:Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-static {v6}, Lcom/infraware/slide/UxSlideEditorShowActivity;->access$4(Lcom/infraware/slide/UxSlideEditorShowActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        -0x306 -> :sswitch_0
        -0x305 -> :sswitch_0
        -0x304 -> :sswitch_0
        -0x303 -> :sswitch_0
        -0x11d -> :sswitch_4
        -0x11a -> :sswitch_0
        -0x118 -> :sswitch_0
        -0x117 -> :sswitch_a
        -0x116 -> :sswitch_8
        -0x115 -> :sswitch_9
        -0x112 -> :sswitch_3
        -0x111 -> :sswitch_2
        -0x110 -> :sswitch_0
        -0x10f -> :sswitch_0
        -0x10e -> :sswitch_0
        -0x10d -> :sswitch_0
        -0x10c -> :sswitch_0
        -0x10b -> :sswitch_0
        -0x10a -> :sswitch_0
        -0x109 -> :sswitch_0
        -0x106 -> :sswitch_0
        -0x105 -> :sswitch_0
        -0x104 -> :sswitch_6
        -0x103 -> :sswitch_5
        -0x102 -> :sswitch_1
        -0x101 -> :sswitch_7
    .end sparse-switch
.end method
