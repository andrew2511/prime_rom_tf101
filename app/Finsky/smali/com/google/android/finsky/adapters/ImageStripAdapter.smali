.class public Lcom/google/android/finsky/adapters/ImageStripAdapter;
.super Ljava/lang/Object;
.source "ImageStripAdapter.java"


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mIds:[Ljava/lang/String;

.field private final mImageCount:I

.field private final mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private final mImages:[Landroid/graphics/drawable/Drawable;

.field private final mTags:[Lcom/google/android/finsky/api/model/Document;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "imageCount"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    .line 25
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mIds:[Ljava/lang/String;

    .line 26
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    .line 27
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    new-array v0, v0, [Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 28
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    new-array v0, v0, [Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mTags:[Lcom/google/android/finsky/api/model/Document;

    .line 29
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 30
    return-void
.end method


# virtual methods
.method public getDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V
    .locals 3
    .parameter "index"
    .parameter "dimension"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->getImageAt(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 104
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 99
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p2, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setWidth(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 102
    invoke-virtual {p2, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;->setHeight(I)Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    goto :goto_0
.end method

.method public getImageAt(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageCount:I

    return v0
.end method

.method public getTagAt(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "index"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mTags:[Lcom/google/android/finsky/api/model/Document;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 124
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public setDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V
    .locals 1
    .parameter "index"
    .parameter "dim"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImageDimensions:[Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    aput-object p2, v0, p1

    .line 40
    return-void
.end method

.method public setImageAt(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "index"
    .parameter "drawable"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mImages:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public unregisterAll()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ImageStripAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 116
    return-void
.end method
