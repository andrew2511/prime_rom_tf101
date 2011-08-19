.class public Lcom/layar/ui/BriefInfoViewWrapper;
.super Landroid/widget/FrameLayout;
.source "BriefInfoViewWrapper.java"


# instance fields
.field private mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

.field private mContext:Landroid/content/Context;

.field private mLayerBiw:Lcom/layar/ui/BriefInfoView;

.field private mPOIs:Lcom/layar/core/POIsContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/BriefInfoViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public setActionListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    .line 68
    return-void
.end method

.method public setPOI(Lcom/layar/data/BasePOI;Z)V
    .locals 4
    .parameter "poi"
    .parameter "isClick"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 30
    if-nez p1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0, v3}, Lcom/layar/ui/BriefInfoView;->setPOI(Lcom/layar/data/POI;)V

    .line 33
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0, v2}, Lcom/layar/ui/BriefInfoView;->setVisibility(I)V

    .line 57
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local p1
    :cond_1
    iget v0, p1, Lcom/layar/data/BasePOI;->poiType:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/layar/data/BasePOI;->poiType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    :cond_2
    iget-boolean v0, p1, Lcom/layar/data/BasePOI;->showSmallBiw:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    .line 40
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0, v3}, Lcom/layar/ui/BriefInfoView;->setPOI(Lcom/layar/data/POI;)V

    .line 42
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0, v2}, Lcom/layar/ui/BriefInfoView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    if-nez v0, :cond_4

    .line 48
    new-instance v0, Lcom/layar/ui/BriefInfoView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/layar/data/BasePOI;->poiType:I

    invoke-direct {v0, v1, v2}, Lcom/layar/ui/BriefInfoView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    .line 49
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mPOIs:Lcom/layar/core/POIsContainer;

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoView;->setPOIsContainer(Lcom/layar/core/POIsContainer;)V

    .line 50
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    iget-object v1, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mActionListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoView;->setActionListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 51
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {p0, v0}, Lcom/layar/ui/BriefInfoViewWrapper;->addView(Landroid/view/View;)V

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    check-cast p1, Lcom/layar/data/POI;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/layar/ui/BriefInfoView;->setPOI(Lcom/layar/data/POI;)V

    .line 55
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPOIsContainer(Lcom/layar/core/POIsContainer;)V
    .locals 1
    .parameter "pois"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mPOIs:Lcom/layar/core/POIsContainer;

    .line 61
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/layar/ui/BriefInfoViewWrapper;->mLayerBiw:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0, p1}, Lcom/layar/ui/BriefInfoView;->setPOIsContainer(Lcom/layar/core/POIsContainer;)V

    .line 64
    :cond_0
    return-void
.end method
