.class Lcom/layar/PaymentProviderChooserActivity$6;
.super Ljava/lang/Object;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/PaymentProviderChooserActivity;->retryInitiatePayment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/PaymentProviderChooserActivity;


# direct methods
.method constructor <init>(Lcom/layar/PaymentProviderChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$6;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 238
    const/high16 v1, 0x4088

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$6;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-virtual {v1, v0}, Lcom/layar/PaymentProviderChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$6;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v1}, Lcom/layar/PaymentProviderChooserActivity;->access$5(Lcom/layar/PaymentProviderChooserActivity;)Lcom/layar/ActivityHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$6;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/layar/PaymentProviderChooserActivity$6;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Lcom/layar/PaymentProviderChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    const/4 v3, 0x1

    .line 244
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 249
    sget-object v1, Lcom/layar/PaymentProviderChooserActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initiate payment request failed, error response: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
