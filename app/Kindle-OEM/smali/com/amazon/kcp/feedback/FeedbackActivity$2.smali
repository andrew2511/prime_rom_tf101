.class Lcom/amazon/kcp/feedback/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/feedback/FeedbackActivity;->sendFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$2;->this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity$2;->this$0:Lcom/amazon/kcp/feedback/FeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->access$200(Lcom/amazon/kcp/feedback/FeedbackActivity;)V

    .line 257
    return-void
.end method
