.class Lcom/nuance/xt9/input/CandidatesListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/CandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/CandidatesListView;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iput-boolean v3, v0, Lcom/nuance/xt9/input/CandidatesListView;->mScrolled:Z

    .line 218
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iput v1, v0, Lcom/nuance/xt9/input/CandidatesListView;->mA:F

    .line 219
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iput v1, v0, Lcom/nuance/xt9/input/CandidatesListView;->mV:F

    .line 220
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v2, p3}, Lcom/nuance/xt9/input/CandidatesListView;->pull(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/CandidatesListView;->access$000(Lcom/nuance/xt9/input/CandidatesListView;I)V

    .line 221
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v1, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/xt9/input/CandidatesListView;->getScrollX()I

    move-result v1

    iput v1, v0, Lcom/nuance/xt9/input/CandidatesListView;->mTargetScrollX:I

    .line 222
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/xt9/input/CandidatesListView$RollAverage;

    invoke-virtual {v0, p3}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->add(F)V

    .line 224
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-static {v0}, Lcom/nuance/xt9/input/CandidatesListView;->access$100(Lcom/nuance/xt9/input/CandidatesListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/xt9/input/CandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/xt9/input/CandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-static {v0}, Lcom/nuance/xt9/input/CandidatesListView;->access$200(Lcom/nuance/xt9/input/CandidatesListView;)V

    .line 229
    iget-object v0, p0, Lcom/nuance/xt9/input/CandidatesListView$2;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/CandidatesListView;->invalidate()V

    .line 230
    return v3
.end method
