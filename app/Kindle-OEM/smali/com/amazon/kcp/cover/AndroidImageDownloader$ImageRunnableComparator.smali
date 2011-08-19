.class Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;
.super Ljava/lang/Object;
.source "AndroidImageDownloader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/AndroidImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageRunnableComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    .local p0, this:Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;,"Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/cover/AndroidImageDownloader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    .local p0, this:Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;,"Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator<TE;>;"
    invoke-direct {p0}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 78
    .local p0, this:Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;,"Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator<TE;>;"
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;->compareTo(Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    .local p0, this:Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;,"Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator<TE;>;"
    check-cast p1, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnableComparator;->compare(Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;Lcom/amazon/kcp/cover/AndroidImageDownloader$ImageRunnable;)I

    move-result v0

    return v0
.end method
