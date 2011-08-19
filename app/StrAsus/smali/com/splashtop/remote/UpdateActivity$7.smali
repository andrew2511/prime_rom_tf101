.class Lcom/splashtop/remote/UpdateActivity$7;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/UpdateActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/UpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/splashtop/remote/UpdateActivity$7;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 365
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 367
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ret"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    const-string v2, "action"

    const-string v3, "delete"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v2, "id"

    iget-object v3, p0, Lcom/splashtop/remote/UpdateActivity$7;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-static {v3}, Lcom/splashtop/remote/UpdateActivity;->access$700(Lcom/splashtop/remote/UpdateActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/splashtop/remote/bean/MacBean;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 370
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity$7;->this$0:Lcom/splashtop/remote/UpdateActivity;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Lcom/splashtop/remote/UpdateActivity;->setResult(ILandroid/content/Intent;)V

    .line 372
    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity$7;->this$0:Lcom/splashtop/remote/UpdateActivity;

    invoke-virtual {v2}, Lcom/splashtop/remote/UpdateActivity;->finish()V

    .line 373
    return-void
.end method
