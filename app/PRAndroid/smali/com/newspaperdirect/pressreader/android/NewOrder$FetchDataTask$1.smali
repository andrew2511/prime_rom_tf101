.class Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;)Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;
    .locals 1
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 507
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v3

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$0(Lcom/newspaperdirect/pressreader/android/NewOrder;Landroid/app/ProgressDialog;)V

    .line 508
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$1(Lcom/newspaperdirect/pressreader/android/NewOrder;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 513
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->access$3(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$1(Lcom/newspaperdirect/pressreader/android/NewOrder;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1$2;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 519
    return-void
.end method
