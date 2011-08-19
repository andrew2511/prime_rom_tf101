.class final Lcom/nuance/xt9/input/AlphaInputView$PerfData;
.super Ljava/lang/Object;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PerfData"
.end annotation


# instance fields
.field mCorrectionLevel:I

.field mKdbId:I

.field mLanguageId:I

.field mPerfWords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/xt9/input/AlphaInputView$PerfForOneWord;",
            ">;"
        }
    .end annotation
.end field

.field mProfilingMethod:I

.field mWordCompletionPoint:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/xt9/input/AlphaInputView$PerfData;->mPerfWords:Ljava/util/LinkedList;

    return-void
.end method
