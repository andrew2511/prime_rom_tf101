.class Lcom/amazon/kcp/redding/DocumentActivity$1;
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
    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$1;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$1;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/DocumentActivity;->access$000(Lcom/amazon/kcp/redding/DocumentActivity;)V

    .line 46
    return-void
.end method
