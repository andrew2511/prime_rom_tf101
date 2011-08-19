.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$12;
.super Ljava/lang/Object;
.source "OffLinePlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->changeShuffleMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$12;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 663
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$12;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$17(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;I)V

    .line 664
    return-void
.end method
