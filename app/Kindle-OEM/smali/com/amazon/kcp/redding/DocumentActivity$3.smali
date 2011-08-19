.class Lcom/amazon/kcp/redding/DocumentActivity$3;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/DocumentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/redding/DocumentActivity;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 71
    :cond_0
    return-void
.end method
