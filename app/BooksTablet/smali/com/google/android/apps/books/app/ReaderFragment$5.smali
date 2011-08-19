.class final Lcom/google/android/apps/books/app/ReaderFragment$5;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->val$r:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$5;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 688
    return-void
.end method
