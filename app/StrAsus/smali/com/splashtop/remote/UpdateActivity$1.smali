.class Lcom/splashtop/remote/UpdateActivity$1;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/UpdateActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selectionEnd:I

.field private selectionStart:I

.field final synthetic this$0:Lcom/splashtop/remote/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/UpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/splashtop/remote/UpdateActivity$1;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 177
    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v3}, Lcom/splashtop/remote/UpdateActivity;->access$000(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    iput v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->selectionStart:I

    .line 178
    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v3}, Lcom/splashtop/remote/UpdateActivity;->access$000(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->selectionEnd:I

    .line 179
    const-string v3, "[\u4e00-\u9fa5]|[\ufe30-\uffa0]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 180
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 181
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->selectionStart:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/splashtop/remote/UpdateActivity$1;->selectionEnd:I

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 183
    iget v2, p0, Lcom/splashtop/remote/UpdateActivity$1;->selectionStart:I

    .line 184
    .local v2, tempSelection:I
    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v3}, Lcom/splashtop/remote/UpdateActivity;->access$000(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity$1;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v3}, Lcom/splashtop/remote/UpdateActivity;->access$000(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 187
    .end local v2           #tempSelection:I
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 173
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 168
    return-void
.end method
