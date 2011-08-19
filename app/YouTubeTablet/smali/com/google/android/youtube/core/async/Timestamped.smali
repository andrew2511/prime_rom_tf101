.class public final Lcom/google/android/youtube/core/async/Timestamped;
.super Ljava/lang/Object;
.source "Timestamped.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .parameter
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/youtube/core/async/Timestamped;,"Lcom/google/android/youtube/core/async/Timestamped<TT;>;"
    .local p1, element:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    .line 29
    iput-wide p2, p0, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    .line 30
    return-void
.end method
