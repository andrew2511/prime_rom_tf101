.class Lcom/splashtop/remote/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/splashtop/remote/ServerListView$ListViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHandshakeBeforeConnect(Lcom/splashtop/remote/bean/MacBean;)V
    .locals 4
    .parameter "mb"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0, p1}, Lcom/splashtop/remote/MainActivity;->access$402(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/bean/MacBean;)Lcom/splashtop/remote/bean/MacBean;

    .line 270
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v0, v2}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    .line 272
    new-instance v0, Lcom/splashtop/remote/MainActivity$MainAsyncTask;

    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {v0, v1}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;-><init>(Lcom/splashtop/remote/MainActivity;)V

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    :cond_0
    return-void
.end method

.method public showItemDialog(Lcom/splashtop/remote/bean/MacBean;)V
    .locals 1
    .parameter "mb"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0, p1}, Lcom/splashtop/remote/MainActivity;->access$402(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/bean/MacBean;)Lcom/splashtop/remote/bean/MacBean;

    .line 280
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/splashtop/remote/MainActivity$6;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v0}, Lcom/splashtop/remote/MainActivity;->access$500(Lcom/splashtop/remote/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 284
    :cond_0
    return-void
.end method
