.class Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask$1;
.super Ljava/lang/Object;
.source "RegisterAfterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 117
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;)Lnet/yostore/aws/view/common/RegisterAfterActivity;

    move-result-object v0

    iget-object p0, v0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    return-void
.end method
