.class Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$1;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 309
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask$1;->this$1:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->access$4(Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;)Lnet/yostore/aws/view/common/RegisterActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 310
    return-void
.end method
