.class public Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;
.super Ljava/lang/Object;
.source "NDAsyncTaskResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 15
    .local p0, this:Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;,"Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->mException:Ljava/lang/Exception;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;,"Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult<TT;>;"
    .local p1, result:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->mResult:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 7
    .local p0, this:Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;,"Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult<TT;>;"
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->mException:Ljava/lang/Exception;

    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method
