.class Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;
.super Lcom/amazon/foundation/AbstractStatusTracker;
.source "CompositeStatusTrackerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubTracker"
.end annotation


# instance fields
.field public progressWeight:I

.field final synthetic this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;I)V
    .locals 0
    .parameter
    .parameter "progressWeight"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;

    .line 34
    invoke-direct {p0}, Lcom/amazon/foundation/AbstractStatusTracker;-><init>()V

    .line 35
    iput p2, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->progressWeight:I

    .line 36
    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/amazon/foundation/AbstractStatusTracker;->reportCurrentProgress(J)V

    .line 46
    iget-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;

    invoke-static {v0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->access$000(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)V

    .line 47
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;

    invoke-static {v0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->access$200(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)Lcom/amazon/foundation/IStatusTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/amazon/foundation/AbstractStatusTracker;->reset()V

    .line 75
    iget-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;

    invoke-static {v0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->access$100(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;

    invoke-static {v0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->access$000(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)V

    .line 77
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 1
    .parameter "max"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/amazon/foundation/AbstractStatusTracker;->setMaxProgress(J)V

    .line 57
    iget-object v0, p0, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter$SubTracker;->this$0:Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;

    invoke-static {v0}, Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;->access$100(Lcom/amazon/foundation/internal/CompositeStatusTrackerAdapter;)V

    .line 58
    return-void
.end method
