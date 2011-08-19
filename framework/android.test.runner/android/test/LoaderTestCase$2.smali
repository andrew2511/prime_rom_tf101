.class Landroid/test/LoaderTestCase$2;
.super Ljava/lang/Object;
.source "LoaderTestCase.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/LoaderTestCase;->getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/LoaderTestCase;

.field final synthetic val$queue:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Landroid/test/LoaderTestCase$2;->this$0:Landroid/test/LoaderTestCase;

    iput-object p2, p0, Landroid/test/LoaderTestCase$2;->val$queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, completedLoader:Landroid/content/Loader;,"Landroid/content/Loader<TT;>;"
    .local p2, data:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V

    .line 70
    iget-object v0, p0, Landroid/test/LoaderTestCase$2;->val$queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
