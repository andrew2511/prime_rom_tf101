.class Lnet/yostore/aws/ansytask/BindAWSServiceTask$3;
.super Ljava/lang/Object;
.source "BindAWSServiceTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/BindAWSServiceTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/BindAWSServiceTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$3;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 112
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BindAWSServiceTask$3;->this$0:Lnet/yostore/aws/ansytask/BindAWSServiceTask;

    iget-object p0, v0, Lnet/yostore/aws/ansytask/BindAWSServiceTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 113
    return-void
.end method
