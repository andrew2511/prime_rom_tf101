.class Lnet/yostore/aws/view/present/TextActivity$4;
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
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$2(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$13(Lnet/yostore/aws/view/present/TextActivity;I)V

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$5(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/TextActivity;->access$14(Lnet/yostore/aws/view/present/TextActivity;)V

    .line 248
    new-instance v0, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;-><init>(Lnet/yostore/aws/view/present/TextActivity;Lnet/yostore/aws/view/present/TextActivity$NextViewTask;)V

    invoke-virtual {v0, v2}, Lnet/yostore/aws/view/present/TextActivity$NextViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$4;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/TextActivity;->access$5(Lnet/yostore/aws/view/present/TextActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/TextActivity;->access$13(Lnet/yostore/aws/view/present/TextActivity;I)V

    goto :goto_0
.end method
