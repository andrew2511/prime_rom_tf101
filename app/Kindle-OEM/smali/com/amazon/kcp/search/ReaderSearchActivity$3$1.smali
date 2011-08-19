.class Lcom/amazon/kcp/search/ReaderSearchActivity$3$1;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity$3;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$3;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$3$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$3$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$3;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$100(Lcom/amazon/kcp/search/ReaderSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$3$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$3;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$300(Lcom/amazon/kcp/search/ReaderSearchActivity;Z)V

    .line 352
    :cond_0
    return-void
.end method
