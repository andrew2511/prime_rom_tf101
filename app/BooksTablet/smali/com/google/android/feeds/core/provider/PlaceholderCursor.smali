.class Lcom/google/android/feeds/core/provider/PlaceholderCursor;
.super Landroid/database/MatrixCursor;
.source "PlaceholderCursor.java"


# instance fields
.field private final mStatus:Lcom/google/android/feeds/core/provider/FeedStatus;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/google/android/feeds/core/provider/FeedStatus;)V
    .locals 1
    .parameter "columnNames"
    .parameter "status"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 33
    if-nez p2, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/google/android/feeds/core/provider/PlaceholderCursor;->mStatus:Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 37
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, extras:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/feeds/core/provider/PlaceholderCursor;->mStatus:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v1, v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method
