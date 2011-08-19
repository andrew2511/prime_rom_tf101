.class public abstract Lcom/android/contacts/widget/IndexerListAdapter;
.super Lcom/android/contacts/widget/PinnedHeaderListAdapter;
.source "IndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    .line 59
    iput-object p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V
    .locals 13
    .parameter "listView"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 190
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v9

    sub-int v0, v9, v12

    .line 158
    .local v0, index:I
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 159
    :cond_1
    invoke-virtual {p1, v0, v11}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v2

    .line 162
    .local v2, listPosition:I
    invoke-virtual {p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v7, v2, v9

    .line 164
    .local v7, position:I
    const/4 v8, -0x1

    .line 165
    .local v8, section:I
    invoke-virtual {p0, v7}, Lcom/android/contacts/widget/IndexerListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 166
    .local v5, partition:I
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    if-ne v5, v9, :cond_3

    .line 167
    invoke-virtual {p0, v7}, Lcom/android/contacts/widget/IndexerListAdapter;->getOffsetInPartition(I)I

    move-result v4

    .line 168
    .local v4, offset:I
    if-eq v4, v10, :cond_3

    .line 169
    invoke-virtual {p0, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v8

    .line 173
    .end local v4           #offset:I
    :cond_3
    if-ne v8, v10, :cond_4

    .line 174
    invoke-virtual {p1, v0, v11}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 176
    :cond_4
    iget-object v10, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 179
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForPartition(I)I

    move-result v6

    .line 180
    .local v6, partitionStart:I
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->hasHeader(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 185
    :cond_5
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v9

    add-int v3, v6, v9

    .line 186
    .local v3, nextSectionPosition:I
    sub-int v9, v3, v12

    if-ne v7, v9, :cond_6

    move v1, v12

    .line 187
    .local v1, isLastInSection:Z
    :goto_1
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto :goto_0

    .end local v1           #isLastInSection:Z
    :cond_6
    move v1, v11

    .line 186
    goto :goto_1
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-static {v1}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->access$000(Lcom/android/contacts/widget/IndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    .line 219
    :goto_0
    return-object v1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-static {v1, p1}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->access$002(Lcom/android/contacts/widget/IndexerListAdapter$Placement;I)I

    .line 203
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 205
    .local v0, section:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v4, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 207
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v2, p1, :cond_2

    move v2, v4

    :goto_2
    iput-boolean v2, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 219
    .end local v0           #section:I
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    goto :goto_0

    .line 209
    .restart local v0       #section:I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 210
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v2, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 213
    goto :goto_2

    .line 215
    .end local v0           #section:I
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 216
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 217
    iget-object v1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v2, v1, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-super {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "viewIndex"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/widget/IndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 145
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, -0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .parameter "partition"

    .prologue
    .line 86
    iput p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    .line 87
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .parameter "indexer"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 95
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->invalidate()V

    .line 96
    return-void
.end method

.method protected abstract setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 79
    return-void
.end method
