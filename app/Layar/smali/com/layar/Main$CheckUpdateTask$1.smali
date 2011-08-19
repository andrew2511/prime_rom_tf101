.class Lcom/layar/Main$CheckUpdateTask$1;
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
    iput-object p1, p0, Lcom/layar/Main$CheckUpdateTask$1;->this$1:Lcom/layar/Main$CheckUpdateTask;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    .line 489
    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/layar/Main$CheckUpdateTask$1;->this$1:Lcom/layar/Main$CheckUpdateTask;

    iget-object v2, v2, Lcom/layar/Main$CheckUpdateTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    iget-object v2, v2, Lcom/layar/util/UpdateHelper$Version;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 488
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 490
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/layar/Main$CheckUpdateTask$1;->this$1:Lcom/layar/Main$CheckUpdateTask;

    invoke-static {v1}, Lcom/layar/Main$CheckUpdateTask;->access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/Main;->access$7(Lcom/layar/Main;Landroid/app/Dialog;)V

    .line 491
    iget-object v1, p0, Lcom/layar/Main$CheckUpdateTask$1;->this$1:Lcom/layar/Main$CheckUpdateTask;

    invoke-static {v1}, Lcom/layar/Main$CheckUpdateTask;->access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layar/Main;->startActivity(Landroid/content/Intent;)V

    .line 492
    iget-object v1, p0, Lcom/layar/Main$CheckUpdateTask$1;->this$1:Lcom/layar/Main$CheckUpdateTask;

    invoke-static {v1}, Lcom/layar/Main$CheckUpdateTask;->access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/Main;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/layar/Main$CheckUpdateTask$1;->this$1:Lcom/layar/Main$CheckUpdateTask;

    invoke-static {v1}, Lcom/layar/Main$CheckUpdateTask;->access$4(Lcom/layar/Main$CheckUpdateTask;)Lcom/layar/Main;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/Main;->finish()V

    .line 494
    :cond_0
    return-void
.end method
