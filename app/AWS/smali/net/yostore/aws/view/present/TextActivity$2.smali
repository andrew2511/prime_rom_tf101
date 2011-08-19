.class Lnet/yostore/aws/view/present/TextActivity$2;
.super Ljava/lang/Object;
.source "TextActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/TextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/TextActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/TextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$2;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x4

    .line 180
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$2;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$12(Lnet/yostore/aws/view/present/TextActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$2;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$11(Lnet/yostore/aws/view/present/TextActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$2;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$10(Lnet/yostore/aws/view/present/TextActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method
