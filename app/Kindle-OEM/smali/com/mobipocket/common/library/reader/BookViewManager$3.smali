.class final Lcom/mobipocket/common/library/reader/BookViewManager$3;
.super Ljava/lang/Object;
.source "BookViewManager.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;->getTableLimiter()Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public limitReached(I)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 1966
    const/16 v0, 0x1388

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
