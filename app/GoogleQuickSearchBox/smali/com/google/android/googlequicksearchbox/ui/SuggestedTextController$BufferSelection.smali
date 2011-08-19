.class Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferSelection"
.end annotation


# instance fields
.field final mEnd:I

.field final mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    .line 384
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    .line 385
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 388
    instance-of v2, p1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 390
    :goto_0
    return v2

    .line 389
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;

    move-object v1, v0

    .line 390
    .local v1, otherSel:Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    iget v3, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mStart:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    iget v3, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestedTextController$BufferSelection;->mEnd:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
