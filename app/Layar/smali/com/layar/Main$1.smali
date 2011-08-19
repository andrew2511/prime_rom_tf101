.class Lcom/layar/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main;->loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Main;


# direct methods
.method constructor <init>(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/layar/Main$1;)Lcom/layar/Main;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    return-object v0
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    invoke-virtual {v0}, Lcom/layar/Main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 215
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$12(Lcom/layar/Main;)V

    goto :goto_0

    .line 192
    :sswitch_0
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$12(Lcom/layar/Main;)V

    goto :goto_0

    .line 195
    :sswitch_1
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$13(Lcom/layar/Main;)V

    goto :goto_0

    .line 198
    :sswitch_2
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$13(Lcom/layar/Main;)V

    goto :goto_0

    .line 201
    :sswitch_3
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    const v1, 0x7f090152

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 204
    :sswitch_4
    iget-object v0, p0, Lcom/layar/Main$1;->this$0:Lcom/layar/Main;

    new-instance v1, Lcom/layar/Main$1$1;

    invoke-direct {v1, p0}, Lcom/layar/Main$1$1;-><init>(Lcom/layar/Main$1;)V

    invoke-static {v0, v1}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x29 -> :sswitch_2
        0x2a -> :sswitch_1
        0x2c -> :sswitch_3
        0x38f -> :sswitch_4
    .end sparse-switch
.end method
