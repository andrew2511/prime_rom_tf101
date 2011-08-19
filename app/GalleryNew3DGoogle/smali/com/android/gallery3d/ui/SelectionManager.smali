.class public Lcom/android/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mInSelectionMode:Z

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

.field private mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mTotal:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;Z)V
    .locals 2
    .parameter "galleryContext"
    .parameter "isAlbumSet"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 57
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, context:Landroid/content/Context;
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 59
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mVibrator:Landroid/os/Vibrator;

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 61
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 63
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 10
    .parameter
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 146
    .local v7, subCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    .line 150
    .local v8, total:I
    const/16 v0, 0x32

    .line 151
    .local v0, batch:I
    const/4 v4, 0x0

    .line 153
    .local v4, index:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 154
    add-int v9, v4, v0

    if-ge v9, v8, :cond_1

    move v1, v0

    .line 157
    .local v1, count:I
    :goto_2
    invoke-virtual {p1, v4, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 158
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 159
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 154
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_1
    sub-int v9, v8, v4

    move v1, v9

    goto :goto_2

    .line 161
    .restart local v1       #count:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_2
    add-int/2addr v4, v0

    .line 162
    goto :goto_1

    .line 163
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public deSelectAll()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 86
    return-void
.end method

.method public enterSelectionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 13
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v8, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-boolean v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v11, :cond_4

    .line 168
    iget-boolean v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v11, :cond_2

    .line 169
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 170
    .local v7, max:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_8

    .line 171
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    .line 172
    .local v9, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 173
    .local v3, id:Lcom/android/gallery3d/data/Path;
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 174
    if-eqz p1, :cond_1

    .line 175
    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    .end local v1           #i:I
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v7           #max:I
    .end local v9           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 183
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    if-eqz p1, :cond_3

    .line 184
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v11, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    :cond_4
    iget-boolean v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v11, :cond_7

    .line 193
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    .line 194
    .local v10, total:I
    const/4 v4, 0x0

    .line 195
    .local v4, index:I
    :goto_3
    if-ge v4, v10, :cond_8

    .line 196
    sub-int v11, v10, v4

    const/16 v12, 0x1f4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 197
    .local v0, count:I
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11, v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 198
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 199
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 200
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 202
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_6
    add-int/2addr v4, v0

    .line 203
    goto :goto_3

    .line 205
    .end local v0           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v10           #total:I
    :cond_7
    iget-object v11, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 206
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 210
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    :cond_8
    return-object v8
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 119
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_1

    .line 120
    iget v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    if-gez v1, :cond_0

    .line 121
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 125
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    sub-int v0, v1, v0

    .line 127
    :cond_1
    return v0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    goto :goto_0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcom/android/gallery3d/data/Path;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 69
    return-void
.end method

.method public setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    .line 73
    return-void
.end method

.method public setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 216
    return-void
.end method

.method public toggle(Lcom/android/gallery3d/data/Path;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 142
    :cond_1
    return-void

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
