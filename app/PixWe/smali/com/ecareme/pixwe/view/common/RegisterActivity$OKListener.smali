.class Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v2, 0x7f060085

    const/4 v8, 0x1

    .line 137
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$1(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[_a-z0-9-]+([.][_a-z0-9-]+)*@[a-z0-9-]+([.][a-z0-9-]+)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$2(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Za-z0-9._\\s-]{3,16}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Za-z0-9]{6,12}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$2(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$2(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$2(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$4(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$1(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$4(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060062

    new-instance v2, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener$1;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener$1;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$2(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$5(Lcom/ecareme/pixwe/view/common/RegisterActivity;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$3(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$6(Lcom/ecareme/pixwe/view/common/RegisterActivity;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$1(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, email:Ljava/lang/String;
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$7(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, language:Ljava/lang/String;
    iget-object v7, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    new-instance v0, Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$8(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$9(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$10(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$RegisterTask;)V

    .line 178
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    new-instance v1, Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v3}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$8(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v7}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$9(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v3, v7, v8}, Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;-><init>(Lcom/ecareme/pixwe/view/common/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$11(Lcom/ecareme/pixwe/view/common/RegisterActivity;Lcom/ecareme/pixwe/view/common/RegisterActivity$LoginTask;)V

    .line 179
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 180
    .local v6, _msg:Landroid/os/Message;
    const/16 v0, 0x1e

    iput v0, v6, Landroid/os/Message;->what:I

    .line 181
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/RegisterActivity$OKListener;->this$0:Lcom/ecareme/pixwe/view/common/RegisterActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/RegisterActivity;->access$0(Lcom/ecareme/pixwe/view/common/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
