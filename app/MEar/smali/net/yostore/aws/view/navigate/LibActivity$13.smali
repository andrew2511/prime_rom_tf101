.class Lnet/yostore/aws/view/navigate/LibActivity$13;
.super Ljava/lang/Object;
.source "LibActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/LibActivity;->changeShuffleMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/LibActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/LibActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/LibActivity$13;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1433
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/LibActivity$13;->this$0:Lnet/yostore/aws/view/navigate/LibActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/LibActivity;->access$26(Lnet/yostore/aws/view/navigate/LibActivity;I)V

    .line 1434
    return-void
.end method
