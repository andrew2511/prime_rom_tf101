.class public Lcom/google/android/apps/books/util/VolumeScrubIndex;
.super Ljava/lang/Object;
.source "VolumeScrubIndex.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
.implements Lcom/google/android/apps/books/model/LoaderListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/apps/books/model/LoaderListener",
        "<",
        "Lcom/google/android/apps/books/model/VolumeMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field public mChapterIdToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mChapterIdToPageId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mImageChapterEnabled:[Z

.field public mIndexToChapterId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIndexToPageId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

.field private mMissingChapters:Z

.field public mPageIdToChapterId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPageIdToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingMode:I

.field public mTextChapterEnabled:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    .line 39
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mReadingMode:I

    return-void
.end method

.method private hasValidMetadata()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCalloutLabel(Landroid/content/res/Resources;IZ)Ljava/lang/CharSequence;
    .locals 10
    .parameter "res"
    .parameter "itemIndex"
    .parameter "scrubActive"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-direct {p0}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->hasValidMetadata()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 93
    :goto_0
    return-object v4

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4, p2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, pageTitle:Ljava/lang/String;
    if-eqz p3, :cond_1

    move-object v4, v3

    .line 81
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->getGroupForItem(I)I

    move-result v2

    .line 86
    .local v2, groupIndex:I
    iget-object v4, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, chapterTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    const-string v1, ""

    .line 91
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, chapterNumber:Ljava/lang/String;
    const v4, 0x7f0b0016

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "%1$s"

    aput-object v6, v5, v7

    const-string v6, "%2$s"

    aput-object v6, v5, v8

    new-array v6, v9, [Ljava/lang/CharSequence;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 2
    .parameter "groupIndex"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getGroupForItem(I)I
    .locals 4
    .parameter "itemIndex"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 143
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToIndex:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToChapterId:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getIndexForItem(Ljava/lang/String;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 111
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToPageId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemForGroup(I)I
    .locals 4
    .parameter "groupIndex"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 137
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mPageIdToIndex:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mChapterIdToPageId:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mIndexToChapterId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryLabel(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "res"
    .parameter "itemIndex"

    .prologue
    const/4 v5, 0x1

    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->hasValidMetadata()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, currentPage:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, lastPage:Ljava/lang/String;
    const v2, 0x7f0b0017

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isGroupEnabled(I)Z
    .locals 2
    .parameter "groupIndex"

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 149
    :cond_0
    iget v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mReadingMode:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 157
    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mTextChapterEnabled:[Z

    aget-boolean v0, v0, p1

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mImageChapterEnabled:[Z

    aget-boolean v0, v0, p1

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const-string v0, "missing metadata"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/VolumeMetadata;

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->parseChaptersCursorInto(Lcom/google/android/apps/books/util/VolumeScrubIndex;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/books/model/VolumeMetadata;->parsePagesCursorInto(Lcom/google/android/apps/books/util/VolumeScrubIndex;)V

    .line 57
    invoke-virtual {p2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMissingChapters:Z

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Lcom/google/android/apps/books/model/VolumeMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 63
    return-void
.end method

.method public setReadingMode(I)V
    .locals 0
    .parameter "readingMode"

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/apps/books/util/VolumeScrubIndex;->mReadingMode:I

    .line 67
    return-void
.end method
