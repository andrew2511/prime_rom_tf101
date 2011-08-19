.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;
.super Landroid/os/Handler;
.source "UiSlideNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;


# direct methods
.method constructor <init>(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    .line 372
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    .line 376
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 381
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 382
    .local v1, oBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 385
    const-string v3, "nIndex"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, nIndex:I
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v3, v3, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-virtual {v3}, Lcom/infraware/slide/UxSlideEditorActivity;->getViewMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 389
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->saveCurrentSlideNote()V

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v3, v3, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->getSlideNote(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, szTmp:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 393
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 395
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v3, v3, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oSlideNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :goto_1
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-static {v3, v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$1(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;I)V

    .line 409
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->changeSlideNoteButton()V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-static {v3, v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v3, v3, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oSlideNoteEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 405
    :cond_3
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$0(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$1;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v3, v3, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oSlideNoteEdit:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 376
    :pswitch_data_0
    .packed-switch -0x301
        :pswitch_0
    .end packed-switch
.end method
