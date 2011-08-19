.class Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;
.super Landroid/os/AsyncTask;
.source "PaymentsManager.java"

# interfaces
.implements Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/user/PaymentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProvidersListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/user/PaymentProvidersResponse;",
        ">;",
        "Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;"
    }
.end annotation


# instance fields
.field private mResponse:Lcom/layar/data/user/PaymentProvidersResponse;

.field final synthetic this$0:Lcom/layar/data/user/PaymentsManager;


# direct methods
.method private constructor <init>(Lcom/layar/data/user/PaymentsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;-><init>(Lcom/layar/data/user/PaymentsManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/user/PaymentProvidersResponse;
    .locals 1
    .parameter "params"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v0, p0}, Lcom/layar/data/user/PaymentsManager;->access$0(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V

    .line 247
    iget-object v0, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->mResponse:Lcom/layar/data/user/PaymentProvidersResponse;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/user/PaymentProvidersResponse;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->mResponse:Lcom/layar/data/user/PaymentProvidersResponse;

    .line 279
    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p1, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 291
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void

    .line 282
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    iget-object v4, p1, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/data/user/PaymentProvider;

    .line 283
    .local v3, provider:Lcom/layar/data/user/PaymentProvider;
    iget-object v4, v3, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    invoke-static {v4}, Lcom/layar/data/ImageCache;->readPaymentIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 284
    .local v2, icon:Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 285
    iget-object v4, v3, Lcom/layar/data/user/PaymentProvider;->baseURL:Ljava/lang/String;

    iget-object v5, v3, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/layar/data/ImageCache;->downloadPaymentIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 287
    :cond_2
    if-eqz v2, :cond_3

    .line 288
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/layar/data/user/PaymentProvider;->icon:Ljava/lang/ref/SoftReference;

    .line 281
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/layar/data/user/PaymentProvidersResponse;)V
    .locals 8
    .parameter "response"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 254
    iget-object v3, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    monitor-enter v3

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v4}, Lcom/layar/data/user/PaymentsManager;->access$1(Lcom/layar/data/user/PaymentsManager;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 257
    const-string v5, "settings.payments.modified"

    iget-wide v6, p1, Lcom/layar/data/user/PaymentProvidersResponse;->modifiedAt:J

    .line 256
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 259
    iget-object v4, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/layar/data/user/PaymentsManager;->access$2(Lcom/layar/data/user/PaymentsManager;Z)V

    .line 260
    iget-object v4, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v4}, Lcom/layar/data/user/PaymentsManager;->access$3(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p1, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v4, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v4}, Lcom/layar/data/user/PaymentsManager;->access$3(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p1, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v4}, Lcom/layar/data/user/PaymentsManager;->access$4(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    :try_start_1
    iget-object v5, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v5}, Lcom/layar/data/user/PaymentsManager;->access$4(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 270
    iget-object v5, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v5}, Lcom/layar/data/user/PaymentsManager;->access$4(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 264
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    iget-object v4, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/layar/data/user/PaymentsManager;->access$5(Lcom/layar/data/user/PaymentsManager;Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;)V

    .line 254
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    return-void

    .line 267
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->this$0:Lcom/layar/data/user/PaymentsManager;

    invoke-static {v5}, Lcom/layar/data/user/PaymentsManager;->access$4(Lcom/layar/data/user/PaymentsManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;

    .line 268
    .local v1, handler:Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;
    invoke-interface {v1, p1}, Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;->handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0           #count:I
    .end local v1           #handler:Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 254
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/user/PaymentProvidersResponse;

    invoke-virtual {p0, p1}, Lcom/layar/data/user/PaymentsManager$GetProvidersListTask;->onPostExecute(Lcom/layar/data/user/PaymentProvidersResponse;)V

    return-void
.end method
