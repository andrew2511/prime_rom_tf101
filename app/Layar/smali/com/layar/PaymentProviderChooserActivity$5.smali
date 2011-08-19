.class Lcom/layar/PaymentProviderChooserActivity$5;
.super Ljava/lang/Object;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/PaymentProviderChooserActivity;->loginHandler(Ljava/lang/String;)Lcom/layar/data/user/UserManager$LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/PaymentProviderChooserActivity;

.field private final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    iput-object p2, p0, Lcom/layar/PaymentProviderChooserActivity$5;->val$provider:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-virtual {v0}, Lcom/layar/PaymentProviderChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 217
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 218
    const v1, 0x7f090178

    const/4 v2, 0x0

    .line 217
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    sget-object v0, Lcom/layar/PaymentProviderChooserActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login response was unexpected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :sswitch_0
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$5;->val$provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/PaymentProviderChooserActivity;->access$6(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :sswitch_1
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    const v1, 0x7f090170

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setPassword(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$5;->val$provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/PaymentProviderChooserActivity;->access$7(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :sswitch_2
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 206
    const v1, 0x7f090151

    .line 205
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$5;->val$provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/PaymentProviderChooserActivity;->access$7(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :sswitch_3
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 211
    const v1, 0x7f090152

    .line 210
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    :sswitch_4
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$5;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 194
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
