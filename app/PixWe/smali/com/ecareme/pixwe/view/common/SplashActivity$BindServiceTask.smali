.class Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;-><init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$4(Lcom/ecareme/pixwe/view/common/SplashActivity;)V

    .line 435
    new-array v0, v3, [Ljava/lang/Integer;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->publishProgress([Ljava/lang/Object;)V

    .line 436
    new-instance v0, Ljava/lang/Long;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 452
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 441
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    sget-object v1, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$1(Lcom/ecareme/pixwe/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SplashActivity;->access$2(Lcom/ecareme/pixwe/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/SplashActivity$BindServiceTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
