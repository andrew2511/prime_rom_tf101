.class Lnet/yostore/aws/view/common/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 93
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity$1;->this$0:Lnet/yostore/aws/view/common/RegisterActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/RegisterActivity;->access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    return-void
.end method
