.class Lnet/yostore/aws/view/present/TextActivity$3;
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
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$3;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$3;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$2(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$13(Lnet/yostore/aws/view/present/TextActivity;I)V

    if-ltz v1, :cond_0

    .line 191
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$3;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$14(Lnet/yostore/aws/view/present/TextActivity;)V

    .line 214
    new-instance v0, Lnet/yostore/aws/view/present/TextActivity$PreViewTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$3;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-direct {v0, v1, v3}, Lnet/yostore/aws/view/present/TextActivity$PreViewTask;-><init>(Lnet/yostore/aws/view/present/TextActivity;Lnet/yostore/aws/view/present/TextActivity$PreViewTask;)V

    invoke-virtual {v0, v3}, Lnet/yostore/aws/view/present/TextActivity$PreViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$3;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$13(Lnet/yostore/aws/view/present/TextActivity;I)V

    goto :goto_0
.end method
