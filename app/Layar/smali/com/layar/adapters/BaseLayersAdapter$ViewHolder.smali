.class Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BaseLayersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/BaseLayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field childHolder:Ljava/lang/Object;

.field detailsRoot:Landroid/view/View;

.field editStub:Landroid/view/ViewStub;

.field headerText:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field progress:Landroid/widget/ProgressBar;

.field publisher:Landroid/widget/TextView;

.field rlayer:Lcom/layar/data/layer/ResultLayer;

.field title:Landroid/widget/TextView;

.field typeIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
