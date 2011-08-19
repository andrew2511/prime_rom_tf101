.class Lcom/splashtop/remote/UpdateActivity$2;
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
    .line 190
    iput-object p1, p0, Lcom/splashtop/remote/UpdateActivity$2;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 213
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 209
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 194
    const/16 v0, 0x1a7f

    .line 196
    .local v0, port:I
    :try_start_0
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity$2;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v5}, Lcom/splashtop/remote/UpdateActivity;->access$100(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 198
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 199
    .local v1, port1:I
    add-int/lit8 v2, v0, 0x2

    .line 201
    .local v2, port2:I
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity$2;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-virtual {v5}, Lcom/splashtop/remote/UpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, port_info:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, port_info_format:Ljava/lang/String;
    iget-object v5, p0, Lcom/splashtop/remote/UpdateActivity$2;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v5}, Lcom/splashtop/remote/UpdateActivity;->access$200(Lcom/splashtop/remote/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void

    .line 197
    .end local v1           #port1:I
    .end local v2           #port2:I
    .end local v3           #port_info:Ljava/lang/String;
    .end local v4           #port_info_format:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
