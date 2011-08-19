.class Lnet/yostore/aws/view/common/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/RegisterActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$2;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$2;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->finish()V

    .line 83
    return-void
.end method
