.class Lcom/amazon/kcp/reader/ui/MagnifyingView$1;
.super Ljava/lang/Object;
.source "MagnifyingView.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/MagnifyingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/MagnifyingView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/MagnifyingView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView$1;->this$0:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MagnifyingView$1;->this$0:Lcom/amazon/kcp/reader/ui/MagnifyingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->access$000(Lcom/amazon/kcp/reader/ui/MagnifyingView;Z)V

    .line 45
    return-void
.end method
