.class Lcom/amazon/kcp/search/ReaderSearchActivity$1;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 2
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    new-instance v1, Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity$1;J)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 120
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->setMaxProgress(J)V

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->reportCurrentProgress(J)V

    .line 127
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 2
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    new-instance v1, Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity$1;J)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
