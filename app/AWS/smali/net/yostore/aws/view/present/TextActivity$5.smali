.class Lnet/yostore/aws/view/present/TextActivity$5;
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
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity$5;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 262
    new-instance v0, Lnet/yostore/aws/view/present/TextActivity$TextBigTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity$5;->this$0:Lnet/yostore/aws/view/present/TextActivity;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/view/present/TextActivity$TextBigTask;-><init>(Lnet/yostore/aws/view/present/TextActivity;Lnet/yostore/aws/view/present/TextActivity$TextBigTask;)V

    invoke-virtual {v0, v2}, Lnet/yostore/aws/view/present/TextActivity$TextBigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 263
    return-void
.end method
