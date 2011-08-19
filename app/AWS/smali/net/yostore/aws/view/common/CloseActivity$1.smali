.class Lnet/yostore/aws/view/common/CloseActivity$1;
.super Ljava/lang/Object;
.source "CloseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/CloseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/CloseActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/CloseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/CloseActivity$1;->this$0:Lnet/yostore/aws/view/common/CloseActivity;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/yostore/aws/view/common/CloseActivity$1;->this$0:Lnet/yostore/aws/view/common/CloseActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/common/CloseActivity;->finish()V

    .line 38
    return-void
.end method
