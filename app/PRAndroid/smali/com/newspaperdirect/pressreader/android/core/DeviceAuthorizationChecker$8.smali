.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;
.super Landroid/os/AsyncTask;
.source "DeviceAuthorizationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/Service;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

.field private final synthetic val$clientName:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$serviceName:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$serviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$clientName:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;)Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;
    .locals 7
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$serviceName:Ljava/lang/String;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->get(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    .line 268
    .local v1, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V

    .line 270
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->deauthorize()V

    .line 272
    :cond_0
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$serviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$clientName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :goto_0
    return-object v2

    .line 274
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 275
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-direct {v2, v0}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;,"Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult<Lcom/newspaperdirect/pressreader/android/core/Service;>;"
    const v4, 0x7f09001a

    const v6, 0x7f090060

    const v12, 0x7f09005c

    const/4 v5, 0x0

    .line 280
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 282
    .local v3, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    const/4 v9, 0x0

    .line 284
    .local v9, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :try_start_0
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/Service;

    move-object v9, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 361
    :goto_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$2(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V

    .line 362
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-static {v9}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    .line 364
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorized()V

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 286
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09001c

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 290
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$1;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$password:Ljava/lang/String;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$clientName:Ljava/lang/String;

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->val$serviceName:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$2;

    invoke-direct {v4, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 308
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 309
    .local v8, e:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->printStackTrace()V

    .line 310
    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->getResponseErrorCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 314
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 316
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$3;

    invoke-direct {v4, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$4;

    invoke-direct {v4, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 311
    :pswitch_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090026

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$3(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 312
    :pswitch_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090027

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$3(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 337
    .end local v8           #e:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
    :catch_2
    move-exception v1

    move-object v8, v1

    .line 338
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 341
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$5;

    invoke-direct {v4, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$6;

    invoke-direct {v4, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$8;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V

    return-void
.end method
