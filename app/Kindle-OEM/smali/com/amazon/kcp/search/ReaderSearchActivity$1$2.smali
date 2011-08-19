.class Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity$1;->reportCurrentProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$1;

.field final synthetic val$progress:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity$1;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$1;

    iput-wide p2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;->val$progress:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$000(Lcom/amazon/kcp/search/ReaderSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$2;->val$progress:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    return-void
.end method
