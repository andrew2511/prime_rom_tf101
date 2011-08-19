.class Lnet/yostore/aws/view/capture/QuickUploadActivity$8$1;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$8;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8$1;->this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$8;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 440
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8$1;->this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$8;

    invoke-static {v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$8;)Lnet/yostore/aws/view/capture/QuickUploadActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8$1;->this$1:Lnet/yostore/aws/view/capture/QuickUploadActivity$8;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;->access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$8;)Lnet/yostore/aws/view/capture/QuickUploadActivity;

    move-result-object v1

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 442
    return-void
.end method
