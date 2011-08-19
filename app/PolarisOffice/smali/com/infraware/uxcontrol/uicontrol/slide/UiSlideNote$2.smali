.class Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;
.super Ljava/lang/Object;
.source "UiSlideNote.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->createView()V
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
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    .line 121
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 123
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p1, v5, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 124
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$2(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v1, v1, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    iget-object v2, v2, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->m_oActivity:Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-virtual {v2}, Lcom/infraware/slide/UxSlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0311

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$3(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;Landroid/widget/Toast;)V

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$2(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    :cond_1
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$2(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote$2;->this$0:Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;

    invoke-static {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;->access$2(Lcom/infraware/uxcontrol/uicontrol/slide/UiSlideNote;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 118
    return-void
.end method
