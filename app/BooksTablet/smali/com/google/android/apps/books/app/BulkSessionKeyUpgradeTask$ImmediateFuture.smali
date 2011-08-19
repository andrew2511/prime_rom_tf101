.class Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "BulkSessionKeyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;,"Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;->set(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method
