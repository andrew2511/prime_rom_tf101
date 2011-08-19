.class public Lnet/yostore/aws/view/search/SearchActivity$searchTask;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "searchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _mdialog:Landroid/app/ProgressDialog;

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field ctx:Landroid/content/Context;

.field errMsg:Ljava/lang/String;

.field intent:Landroid/content/Intent;

.field searchStr:Ljava/lang/String;

.field task:Landroid/os/AsyncTask;

.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "searchStr"

    .prologue
    .line 166
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 162
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    iput-object p0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->task:Landroid/os/AsyncTask;

    .line 163
    iput-object p2, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    .line 164
    iput-object p3, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 165
    iput-object p4, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->searchStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->publishProgress([Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {p0, v0, v1, v2}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 173
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->haveInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->intent:Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const-class v2, Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->intent:Landroid/content/Intent;

    const-string v1, "skey"

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->searchStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->intent:Landroid/content/Intent;

    const-string v1, "saved"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 192
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const v4, 0x7f060031

    const/4 v3, 0x1

    const v2, 0x7f060029

    .line 218
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$searchTask$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask$2;-><init>(Lnet/yostore/aws/view/search/SearchActivity$searchTask;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    :cond_0
    :goto_0
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->publishProgress([Ljava/lang/Object;)V

    .line 264
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 230
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.freeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    const v1, 0x7f06002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$searchTask$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask$3;-><init>(Lnet/yostore/aws/view/search/SearchActivity$searchTask;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.login.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$searchTask$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask$4;-><init>(Lnet/yostore/aws/view/search/SearchActivity$searchTask;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    const-string v1, "err.connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    new-instance v1, Lnet/yostore/aws/view/search/SearchActivity$searchTask$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask$5;-><init>(Lnet/yostore/aws/view/search/SearchActivity$searchTask;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 203
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/view/search/SearchActivity$searchTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/search/SearchActivity$searchTask$1;-><init>(Lnet/yostore/aws/view/search/SearchActivity$searchTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 268
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 269
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 271
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 272
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    .line 276
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 294
    :cond_1
    :goto_1
    return-void

    .line 274
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 280
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 282
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 285
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 287
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/view/search/SearchActivity$searchTask;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
