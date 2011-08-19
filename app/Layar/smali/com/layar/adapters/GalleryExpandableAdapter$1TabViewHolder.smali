.class Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;
.super Ljava/lang/Object;
.source "GalleryExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/adapters/GalleryExpandableAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field rightIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/layar/adapters/GalleryExpandableAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/layar/adapters/GalleryExpandableAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/layar/adapters/GalleryExpandableAdapter$1TabViewHolder;->this$0:Lcom/layar/adapters/GalleryExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
