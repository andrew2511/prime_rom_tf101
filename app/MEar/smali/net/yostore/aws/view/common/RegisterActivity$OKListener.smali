.class Lnet/yostore/aws/view/common/RegisterActivity$OKListener;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/RegisterActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity;Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;)V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)Lnet/yostore/aws/view/common/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v3, 0x7f060016

    const/4 v2, 0x1

    .line 103
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$4(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 104
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$5(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 105
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 106
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$5(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$5(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 107
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 108
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v1, v3}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$5(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 110
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$7(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$4(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 111
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$6(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$7(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/EditText;

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

    .line 113
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060003

    new-instance v2, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$1;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->access$8(Lnet/yostore/aws/view/common/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 127
    new-instance v0, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;-><init>(Lnet/yostore/aws/view/common/RegisterActivity$OKListener;)V

    .line 139
    invoke-virtual {v0}, Lnet/yostore/aws/view/common/RegisterActivity$OKListener$2;->start()V

    goto/16 :goto_0
.end method
