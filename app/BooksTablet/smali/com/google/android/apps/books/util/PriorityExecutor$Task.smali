.class Lcom/google/android/apps/books/util/PriorityExecutor$Task;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/PriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;I)V
    .locals 0
    .parameter
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/apps/books/util/PriorityExecutor$Task;,"Lcom/google/android/apps/books/util/PriorityExecutor$Task<TR;>;"
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TR;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 29
    iput p2, p0, Lcom/google/android/apps/books/util/PriorityExecutor$Task;->mPriority:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/util/PriorityExecutor$Task;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor$Task;->mPriority:I

    return v0
.end method
