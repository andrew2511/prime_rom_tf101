.class Lnet/yostore/aws/view/capture/QuickUploadActivity$1;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$1;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$1;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$1;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 782
    return-void
.end method
