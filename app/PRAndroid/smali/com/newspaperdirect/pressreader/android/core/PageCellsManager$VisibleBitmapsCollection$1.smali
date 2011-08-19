.class Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;
.super Ljava/lang/Object;
.source "PageCellsManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 417
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public next()Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;I)V

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$3(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$5(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$4(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;I)V

    .line 423
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$6(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;I)V

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$1(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$7(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;->access$10(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;)[[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$0(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->this$1:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;->access$2(Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$VisibleBitmapsCollection$1;->next()Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$PageCell;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
