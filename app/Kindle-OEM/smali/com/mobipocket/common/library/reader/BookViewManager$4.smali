.class final Lcom/mobipocket/common/library/reader/BookViewManager$4;
.super Ljava/lang/Object;
.source "BookViewManager.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;->getUnknownPageLimiter()Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field MAX_MULTI_JUMP:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1977
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$4;->MAX_MULTI_JUMP:I

    return-void
.end method


# virtual methods
.method public getMaxMultiJump()I
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$4;->MAX_MULTI_JUMP:I

    return v0
.end method
