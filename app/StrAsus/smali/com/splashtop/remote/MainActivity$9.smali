.class Lcom/splashtop/remote/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/MainActivity;

.field final synthetic val$macBean:Lcom/splashtop/remote/bean/MacBean;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/MainActivity;Lcom/splashtop/remote/bean/MacBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/splashtop/remote/MainActivity$9;->this$0:Lcom/splashtop/remote/MainActivity;

    iput-object p2, p0, Lcom/splashtop/remote/MainActivity$9;->val$macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 704
    packed-switch p2, :pswitch_data_0

    .line 735
    .end local p0
    :goto_0
    return-void

    .line 706
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$9;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-virtual {v1, v3}, Lcom/splashtop/remote/MainActivity;->showDialog(I)V

    .line 707
    new-instance v1, Lcom/splashtop/remote/MainActivity$MainAsyncTask;

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$9;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {v1, v2}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;-><init>(Lcom/splashtop/remote/MainActivity;)V

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/MainActivity$MainAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 710
    :pswitch_1
    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$9;->this$0:Lcom/splashtop/remote/MainActivity;

    iget-object v2, p0, Lcom/splashtop/remote/MainActivity$9;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-static {v2}, Lcom/splashtop/remote/MainActivity;->access$400(Lcom/splashtop/remote/MainActivity;)Lcom/splashtop/remote/bean/MacBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/splashtop/remote/bean/MacBean;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v1, p0}, Lcom/splashtop/remote/MainActivity;->editServer(Lcom/splashtop/remote/bean/MacBean;)V

    goto :goto_0

    .line 713
    .restart local p0
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/splashtop/remote/MainActivity$9;->this$0:Lcom/splashtop/remote/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 714
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070035

    new-instance v3, Lcom/splashtop/remote/MainActivity$9$2;

    invoke-direct {v3, p0}, Lcom/splashtop/remote/MainActivity$9$2;-><init>(Lcom/splashtop/remote/MainActivity$9;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070036

    new-instance v3, Lcom/splashtop/remote/MainActivity$9$1;

    invoke-direct {v3, p0}, Lcom/splashtop/remote/MainActivity$9$1;-><init>(Lcom/splashtop/remote/MainActivity$9;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
