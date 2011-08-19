.class public Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/PriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPriority(Ljava/lang/Runnable;)I
    .locals 2
    .parameter "r"

    .prologue
    .line 41
    instance-of v0, p1, Lcom/google/android/apps/books/util/PriorityExecutor$Task;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lcom/google/android/apps/books/util/PriorityExecutor$Task;

    .end local p1
    invoke-static {p1}, Lcom/google/android/apps/books/util/PriorityExecutor$Task;->access$000(Lcom/google/android/apps/books/util/PriorityExecutor$Task;)I

    move-result v0

    .line 45
    :goto_0
    return v0

    .line 44
    .restart local p1
    :cond_0
    const-string v0, "PriorityExecutor"

    const-string v1, "unknown priority, assuming 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Runnable;

    .end local p1
    check-cast p2, Ljava/lang/Runnable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;->getPriority(Ljava/lang/Runnable;)I

    move-result v0

    .line 36
    .local v0, leftPriority:I
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;->getPriority(Ljava/lang/Runnable;)I

    move-result v1

    .line 37
    .local v1, rightPriority:I
    sub-int v2, v1, v0

    return v2
.end method
