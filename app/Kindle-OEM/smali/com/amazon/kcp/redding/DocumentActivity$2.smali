.class Lcom/amazon/kcp/redding/DocumentActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DocumentActivity.java"


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
    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$2;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$2;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/DocumentActivity;->access$000(Lcom/amazon/kcp/redding/DocumentActivity;)V

    .line 55
    return-void
.end method
