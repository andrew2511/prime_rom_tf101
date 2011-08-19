.class public Lcom/layar/LayerInfoActivity$LoadLayerTask;
.super Landroid/os/AsyncTask;
.source "LayerInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/LayerInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoadLayerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/layer/LayerManager$LayerResponse;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/layar/LayerInfoActivity;


# direct methods
.method protected constructor <init>(Lcom/layar/LayerInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;
    .locals 2
    .parameter "params"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v0, v0, Lcom/layar/LayerInfoActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/LayerInfoActivity$LoadLayerTask;->doInBackground([Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/LayerInfoActivity$LoadLayerTask;->cancel(Z)Z

    .line 275
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-virtual {v0}, Lcom/layar/LayerInfoActivity;->finish()V

    .line 276
    return-void
.end method

.method protected onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 250
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-virtual {v0}, Lcom/layar/LayerInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    invoke-virtual {p1}, Lcom/layar/data/layer/LayerManager$LayerResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    iget v0, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    const v1, 0x7f090038

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-virtual {v0}, Lcom/layar/LayerInfoActivity;->finish()V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v0, v0, Lcom/layar/LayerInfoActivity;->helper:Lcom/layar/ActivityHelper;

    iget v1, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    const v1, 0x7f090100

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-virtual {v0}, Lcom/layar/LayerInfoActivity;->finish()V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    iget-object v1, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0, v1}, Lcom/layar/LayerInfoActivity;->_setLayer(Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/LayerManager$LayerResponse;

    invoke-virtual {p0, p1}, Lcom/layar/LayerInfoActivity$LoadLayerTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-virtual {v0}, Lcom/layar/LayerInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->dialog:Landroid/app/ProgressDialog;

    .line 237
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->this$0:Lcom/layar/LayerInfoActivity;

    invoke-virtual {v1}, Lcom/layar/LayerInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 239
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 240
    iget-object v0, p0, Lcom/layar/LayerInfoActivity$LoadLayerTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
