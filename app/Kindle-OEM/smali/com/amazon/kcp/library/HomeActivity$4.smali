.class Lcom/amazon/kcp/library/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/HomeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/library/HomeActivity$4;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/HomeActivity$4;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/HomeActivity;->access$000(Lcom/amazon/kcp/library/HomeActivity;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/HomeActivity$4;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity$4;->this$0:Lcom/amazon/kcp/library/HomeActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/HomeActivity;->access$300(Lcom/amazon/kcp/library/HomeActivity;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/HomeActivity;->access$200(Lcom/amazon/kcp/library/HomeActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 102
    return-void
.end method
