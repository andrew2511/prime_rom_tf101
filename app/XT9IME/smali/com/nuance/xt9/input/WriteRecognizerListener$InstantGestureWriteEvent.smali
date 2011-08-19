.class public Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;
.super Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;
.source "WriteRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/WriteRecognizerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstantGestureWriteEvent"
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

.field public mGestureChar:C


# direct methods
.method public constructor <init>(CLjava/util/List;)V
    .locals 2
    .parameter "gestureChar"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/xt9/input/WriteRecognizerListener$WriteEvent;-><init>(ILjava/lang/Object;)V

    .line 84
    iput-char p1, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    .line 85
    iput-object p2, p0, Lcom/nuance/xt9/input/WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Ljava/util/List;

    .line 86
    return-void
.end method
