.class Lnet/yostore/aws/view/navigate/LibActivity$1$1;
.super Ljava/lang/Object;
.source "LibActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/navigate/LibActivity$1;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$1$1;->this$1:Lnet/yostore/aws/view/navigate/LibActivity$1;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 265
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$1$1;->this$1:Lnet/yostore/aws/view/navigate/LibActivity$1;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/LibActivity$1;->access$0(Lnet/yostore/aws/view/navigate/LibActivity$1;)Lnet/yostore/aws/view/navigate/LibActivity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/LibActivity;->finish()V

    .line 266
    return-void
.end method
