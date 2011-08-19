.class Lnet/yostore/aws/view/navigate/PlayListActivity$17;
.super Ljava/lang/Object;
.source "PlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/PlayListActivity;->changeRepeatMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/PlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$17;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1400
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListActivity$17;->this$0:Lnet/yostore/aws/view/navigate/PlayListActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/PlayListActivity;->access$15(Lnet/yostore/aws/view/navigate/PlayListActivity;I)V

    .line 1401
    return-void
.end method
