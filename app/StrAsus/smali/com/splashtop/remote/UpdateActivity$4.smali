.class Lcom/splashtop/remote/UpdateActivity$4;
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
.field final synthetic this$0:Lcom/splashtop/remote/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/UpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v0}, Lcom/splashtop/remote/UpdateActivity;->access$300(Lcom/splashtop/remote/UpdateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v0}, Lcom/splashtop/remote/UpdateActivity;->access$400(Lcom/splashtop/remote/UpdateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v0}, Lcom/splashtop/remote/UpdateActivity;->access$500(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v0}, Lcom/splashtop/remote/UpdateActivity;->access$500(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v0}, Lcom/splashtop/remote/UpdateActivity;->access$500(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 268
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v0}, Lcom/splashtop/remote/UpdateActivity;->access$500(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 259
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 250
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/splashtop/remote/UpdateActivity;->access$402(Lcom/splashtop/remote/UpdateActivity;Z)Z

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$4;->this$0:Lcom/splashtop/remote/UpdateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/splashtop/remote/UpdateActivity;->access$402(Lcom/splashtop/remote/UpdateActivity;Z)Z

    goto :goto_0
.end method
