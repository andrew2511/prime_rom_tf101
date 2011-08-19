.class Lnet/yostore/aws/view/capture/QuickUploadActivity$5;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;->getInputData(Landroid/content/Intent;)V
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
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$5;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 297
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$5;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->finish()V

    .line 298
    return-void
.end method
