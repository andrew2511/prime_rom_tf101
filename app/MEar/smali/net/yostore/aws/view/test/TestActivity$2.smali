.class Lnet/yostore/aws/view/test/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/test/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/test/TestActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/test/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/test/TestActivity$2;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lnet/yostore/aws/view/test/TestActivity$2;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/test/TestActivity;->access$0(Lnet/yostore/aws/view/test/TestActivity;)V

    .line 205
    return-void
.end method
