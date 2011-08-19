.class public Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;
.super Ljava/lang/Object;
.source "BaseAdapterWithImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/BaseAdapterWithImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "rowView"

    .prologue
    .line 57
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;,"Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder<TT;>;"
    .local p1, key:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/android/videoeditor/BaseAdapterWithImages$ImageViewHolder;->mKey:Ljava/lang/Object;

    .line 66
    return-void
.end method
