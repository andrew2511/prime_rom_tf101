.class Lcom/amazon/kcp/feedback/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/feedback/FeedbackActivity;->addTextListener(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

.field final synthetic val$optionsMenu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/feedback/FeedbackActivity;Landroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

    iput-object p2, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->val$optionsMenu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->val$optionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

    const v2, 0x7f0c0066

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->access$000(Lcom/amazon/kcp/feedback/FeedbackActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->access$100(Lcom/amazon/kcp/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$1;->val$optionsMenu:Landroid/view/Menu;

    const v2, 0x7f0c00de

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 143
    return-void
.end method
