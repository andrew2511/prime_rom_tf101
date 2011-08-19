.class public Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;
.super Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidatesWriteEvent"
.end annotation


# instance fields
.field public mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(Lcom/nuance/xt9/input/WriteRecognizerListener$1;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Ljava/util/List;

    .line 43
    return-void
.end method
