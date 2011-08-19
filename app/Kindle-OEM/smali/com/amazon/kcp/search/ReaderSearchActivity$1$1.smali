.class Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity$1;->setMaxProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$1;

.field final synthetic val$max:J


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity$1;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$1;

    iput-wide p2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;->val$max:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;->this$1:Lcom/amazon/kcp/search/ReaderSearchActivity$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$1;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$000(Lcom/amazon/kcp/search/ReaderSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$1$1;->val$max:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 96
    return-void
.end method
