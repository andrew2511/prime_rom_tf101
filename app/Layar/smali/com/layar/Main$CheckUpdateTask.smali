.class Lcom/layar/Main$CheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/layar/data/Response;",
        ">;"
    }
.end annotation


# instance fields
.field newVersion:Lcom/layar/util/UpdateHelper$Version;

.field final synthetic this$0:Lcom/layar/Main;


# direct methods
.method private constructor <init>(Lcom/layar/Main;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/Main;Lcom/layar/Main$CheckUpdateTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/layar/Main$CheckUpdateTask;-><init>(Lcom/layar/Main;)V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/Response;
    .locals 6
    .parameter "params"

    .prologue
    const v5, 0x7f0900f3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 451
    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/layar/Main$CheckUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-static {v1}, Lcom/layar/Main;->access$4(Lcom/layar/Main;)Lcom/layar/util/UpdateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/util/UpdateHelper;->shouldCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/layar/Main$CheckUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-static {v1}, Lcom/layar/Main;->access$4(Lcom/layar/Main;)Lcom/layar/util/UpdateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/util/UpdateHelper;->checkUpdate()Lcom/layar/util/UpdateHelper$Version;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/Main$CheckUpdateTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    .line 458
    :cond_0
    invoke-static {}, Lcom/layar/App;->getCategoryManager()Lcom/layar/data/category/CategoryManager;

    move-result-object v0

    .line 459
    .local v0, categoryManager:Lcom/layar/data/category/CategoryManager;
    invoke-virtual {v0}, Lcom/layar/data/category/CategoryManager;->needUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    new-array v1, v3, [Ljava/lang/Integer;

    const v2, 0x7f0900f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/layar/Main$CheckUpdateTask;->publishProgress([Ljava/lang/Object;)V

    .line 461
    invoke-virtual {v0, v3}, Lcom/layar/data/category/CategoryManager;->downloadAndSaveCategories(Z)Lcom/layar/data/category/CategoriesResponse;

    move-result-object v1

    .line 463
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/Main$CheckUpdateTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/Response;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/layar/data/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Lcom/layar/Main;->updateMessageText(I)V

    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p1}, Lcom/layar/data/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p1}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v2, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    iget-object v3, p0, Lcom/layar/Main$CheckUpdateTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    iget-object v3, v3, Lcom/layar/util/UpdateHelper$Version;->features:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 483
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setRotation(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 484
    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 485
    const v2, 0x7f0900dc

    new-instance v3, Lcom/layar/Main$CheckUpdateTask$1;

    invoke-direct {v3, p0}, Lcom/layar/Main$CheckUpdateTask$1;-><init>(Lcom/layar/Main$CheckUpdateTask;)V

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 496
    const v2, 0x7f0900dd

    new-instance v3, Lcom/layar/Main$CheckUpdateTask$2;

    invoke-direct {v3, p0}, Lcom/layar/Main$CheckUpdateTask$2;-><init>(Lcom/layar/Main$CheckUpdateTask;)V

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v1

    .line 482
    invoke-static {v0, v1}, Lcom/layar/Main;->access$7(Lcom/layar/Main;Landroid/app/Dialog;)V

    .line 505
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$8(Lcom/layar/Main;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 538
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/PaymentsManager;->reloadProviders()V

    .line 521
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$6(Lcom/layar/Main;)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p1}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v0

    const/16 v1, 0x38f

    if-ne v0, v1, :cond_3

    .line 525
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    new-instance v1, Lcom/layar/Main$CheckUpdateTask$3;

    invoke-direct {v1, p0}, Lcom/layar/Main$CheckUpdateTask$3;-><init>(Lcom/layar/Main$CheckUpdateTask;)V

    invoke-static {v0, v1}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-virtual {p1}, Lcom/layar/data/Response;->getResponseCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/layar/ActivityHelper;->downloadErrorHandling(Landroid/content/Context;I)Z

    .line 534
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/PaymentsManager;->reloadProviders()V

    .line 535
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$6(Lcom/layar/Main;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/Response;

    invoke-virtual {p0, p1}, Lcom/layar/Main$CheckUpdateTask;->onPostExecute(Lcom/layar/data/Response;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask;->this$0:Lcom/layar/Main;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/layar/Main;->updateMessageText(I)V

    .line 469
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/layar/Main$CheckUpdateTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
