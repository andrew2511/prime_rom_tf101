.class Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;
.super Landroid/os/AsyncTask;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/PaymentProviderChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitiatePaymentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/user/InitiatePaymentResponse;",
        ">;",
        "Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;"
    }
.end annotation


# instance fields
.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mProvider:Lcom/layar/data/user/PaymentProvider;

.field private mResponse:Lcom/layar/data/user/InitiatePaymentResponse;

.field final synthetic this$0:Lcom/layar/PaymentProviderChooserActivity;


# direct methods
.method public constructor <init>(Lcom/layar/PaymentProviderChooserActivity;Landroid/content/Context;Lcom/layar/data/user/PaymentProvider;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "provider"

    .prologue
    const/4 v3, 0x1

    .line 389
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 374
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 375
    iput-object p3, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mProvider:Lcom/layar/data/user/PaymentProvider;

    .line 377
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    .line 378
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask$1;

    invoke-direct {v1, p0}, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask$1;-><init>(Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 385
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 387
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/user/InitiatePaymentResponse;
    .locals 3
    .parameter "params"

    .prologue
    .line 400
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mProvider:Lcom/layar/data/user/PaymentProvider;

    iget-object v1, v1, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v2}, Lcom/layar/PaymentProviderChooserActivity;->access$0(Lcom/layar/PaymentProviderChooserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/layar/data/user/PaymentsManager;->initiate(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;)V

    .line 401
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mResponse:Lcom/layar/data/user/InitiatePaymentResponse;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/user/InitiatePaymentResponse;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lcom/layar/data/user/InitiatePaymentResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mResponse:Lcom/layar/data/user/InitiatePaymentResponse;

    .line 434
    return-void
.end method

.method protected onPostExecute(Lcom/layar/data/user/InitiatePaymentResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 409
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-virtual {v1}, Lcom/layar/PaymentProviderChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerManager;->resetCache()V

    .line 412
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    const-class v2, Lcom/layar/DetailsViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UrlToOpen"

    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/layar/PaymentProviderChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 429
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 416
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    iget-object v3, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mProvider:Lcom/layar/data/user/PaymentProvider;

    iget-object v3, v3, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/PaymentProviderChooserActivity;->access$1(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)Lcom/layar/data/user/UserManager$LoginHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0x38f

    if-ne v1, v2, :cond_2

    .line 419
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v1}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->this$0:Lcom/layar/PaymentProviderChooserActivity;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Lcom/layar/PaymentProviderChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    const/4 v3, 0x1

    .line 421
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 426
    sget-object v1, Lcom/layar/PaymentProviderChooserActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initiate payment request failed, error response: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lcom/layar/data/user/InitiatePaymentResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/user/InitiatePaymentResponse;

    invoke-virtual {p0, p1}, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->onPostExecute(Lcom/layar/data/user/InitiatePaymentResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 394
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mProvider:Lcom/layar/data/user/PaymentProvider;

    invoke-virtual {v0, v1}, Lcom/layar/data/user/PaymentsManager;->setPaymentProvider(Lcom/layar/data/user/PaymentProvider;)V

    .line 395
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 396
    return-void
.end method
