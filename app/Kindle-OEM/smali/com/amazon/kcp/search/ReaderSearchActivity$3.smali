.class Lcom/amazon/kcp/search/ReaderSearchActivity$3;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity;->startSearch()V
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
    .line 338
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    new-instance v1, Lcom/amazon/kcp/search/ReaderSearchActivity$3$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$3$1;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method
