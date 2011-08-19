.class Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask$1;
.super Ljava/lang/Object;
.source "AuthenticatingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;-><init>(Lcom/asus/webstorage/id/AuthenticatingActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;


# direct methods
.method constructor <init>(Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask$1;->this$1:Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask$1;->this$1:Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;

    invoke-static {v0}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->access$2(Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;)Lcom/asus/webstorage/id/AuthenticatingActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/webstorage/id/AuthenticatingActivity;->setResult(I)V

    .line 199
    iget-object v0, p0, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask$1;->this$1:Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;

    invoke-static {v0}, Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;->access$2(Lcom/asus/webstorage/id/AuthenticatingActivity$RenewTokenTask;)Lcom/asus/webstorage/id/AuthenticatingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/webstorage/id/AuthenticatingActivity;->finish()V

    .line 200
    return-void
.end method
