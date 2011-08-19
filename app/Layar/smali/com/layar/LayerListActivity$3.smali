.class Lcom/layar/LayerListActivity$3;
.super Ljava/lang/Object;
.source "LayerListActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/LayerListActivity;->loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/LayerListActivity;


# direct methods
.method constructor <init>(Lcom/layar/LayerListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/LayerListActivity$3;->this$0:Lcom/layar/LayerListActivity;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/layar/LayerListActivity$3;->this$0:Lcom/layar/LayerListActivity;

    invoke-virtual {v0}, Lcom/layar/LayerListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 449
    :sswitch_0
    iget-object v0, p0, Lcom/layar/LayerListActivity$3;->this$0:Lcom/layar/LayerListActivity;

    invoke-virtual {v0}, Lcom/layar/LayerListActivity;->reloadData()V

    goto :goto_0

    .line 453
    :sswitch_1
    iget-object v0, p0, Lcom/layar/LayerListActivity$3;->this$0:Lcom/layar/LayerListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/LayerListActivity$3;->this$0:Lcom/layar/LayerListActivity;

    .line 454
    const-class v3, Lcom/layar/UserLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    invoke-virtual {v0, v1}, Lcom/layar/LayerListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 447
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method
