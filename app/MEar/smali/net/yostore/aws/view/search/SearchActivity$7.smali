.class Lnet/yostore/aws/view/search/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$7;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$7;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$3(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 723
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$7;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$6(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 725
    const v1, 0x7f0600b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 726
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 727
    const v1, 0x7f060003

    .line 728
    new-instance v2, Lnet/yostore/aws/view/search/SearchActivity$7$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/search/SearchActivity$7$1;-><init>(Lnet/yostore/aws/view/search/SearchActivity$7;)V

    .line 727
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 735
    return-void
.end method
