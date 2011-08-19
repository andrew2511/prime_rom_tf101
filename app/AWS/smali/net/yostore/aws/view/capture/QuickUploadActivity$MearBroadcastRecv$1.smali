.class Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv$1;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv$1;->this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 806
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv$1;->this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;->access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;)Lnet/yostore/aws/view/capture/QuickUploadActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$6(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv$1;->this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;->access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;)Lnet/yostore/aws/view/capture/QuickUploadActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->finish()V

    .line 810
    return-void

    .line 808
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
