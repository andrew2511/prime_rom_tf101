.class public Lcom/nuance/xt9/input/CandidatesListView$RollAverage;
.super Ljava/lang/Object;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RollAverage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFlushed:Z

.field private final mKeepRatio:F

.field private mVal:F

.field final synthetic this$0:Lcom/nuance/xt9/input/CandidatesListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/nuance/xt9/input/CandidatesListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/xt9/input/CandidatesListView;F)V
    .locals 0
    .parameter
    .parameter "keepRatio"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->this$0:Lcom/nuance/xt9/input/CandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p2, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mKeepRatio:F

    .line 138
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->flush()V

    .line 139
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 3
    .parameter "val"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iput p1, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mVal:F

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mKeepRatio:F

    iget v1, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mVal:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mKeepRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mVal:F

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mFlushed:Z

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mVal:F

    .line 161
    return-void
.end method

.method public get()F
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 155
    :cond_0
    iget v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mVal:F

    return v0
.end method

.method public isFlushed()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/nuance/xt9/input/CandidatesListView$RollAverage;->mFlushed:Z

    return v0
.end method
