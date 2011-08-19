.class Lcom/layar/Main$CheckUpdateTask$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main$CheckUpdateTask;->onPostExecute(Lcom/layar/data/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Main$CheckUpdateTask;


# direct methods
.method constructor <init>(Lcom/layar/Main$CheckUpdateTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$CheckUpdateTask$2;->this$1:Lcom/layar/Main$CheckUpdateTask;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask$2;->this$1:Lcom/layar/Main$CheckUpdateTask;

    invoke-static {v0}, Lcom/layar/Main$CheckUpdateTask;->access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/Main;->access$7(Lcom/layar/Main;Landroid/app/Dialog;)V

    .line 500
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/PaymentsManager;->reloadProviders()V

    .line 501
    iget-object v0, p0, Lcom/layar/Main$CheckUpdateTask$2;->this$1:Lcom/layar/Main$CheckUpdateTask;

    invoke-static {v0}, Lcom/layar/Main$CheckUpdateTask;->access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Main;->access$6(Lcom/layar/Main;)V

    .line 502
    return-void
.end method
