.class public Lcom/layar/adapters/PoiActionsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PoiActionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/layar/data/PoiAction;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private customItemBackground:I

.field private final layer:Lcom/layar/data/layer/Layer20;

.field private locker:Lcom/layar/data/PoiLocker;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final owner:Landroid/app/Activity;

.field private final poi:Lcom/layar/data/BasePOI;

.field private final poisContainer:Lcom/layar/core/POIsContainer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Lcom/layar/core/POIsContainer;)V
    .locals 7
    .parameter "owner"
    .parameter "poi"
    .parameter "layer"
    .parameter "poisContainer"

    .prologue
    const/4 v6, 0x0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->locker:Lcom/layar/data/PoiLocker;

    .line 33
    const/4 v1, -0x1

    iput v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->customItemBackground:I

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p1, p0, Lcom/layar/adapters/PoiActionsAdapter;->owner:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/layar/adapters/PoiActionsAdapter;->poi:Lcom/layar/data/BasePOI;

    .line 60
    iput-object p3, p0, Lcom/layar/adapters/PoiActionsAdapter;->layer:Lcom/layar/data/layer/Layer20;

    .line 61
    iput-object p4, p0, Lcom/layar/adapters/PoiActionsAdapter;->poisContainer:Lcom/layar/core/POIsContainer;

    .line 63
    iget-object v1, p2, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    array-length v2, v1

    move v3, v6

    :goto_0
    if-lt v3, v2, :cond_2

    .line 71
    iget-boolean v1, p3, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    if-eqz v1, :cond_0

    .line 72
    invoke-static {}, Lcom/layar/data/PoiAction;->getGetThereAction()Lcom/layar/data/PoiAction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layar/adapters/PoiActionsAdapter;->add(Ljava/lang/Object;)V

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/layar/data/PoiLocker;

    if-eqz v1, :cond_1

    .line 75
    check-cast p1, Lcom/layar/data/PoiLocker;

    .end local p1
    iput-object p1, p0, Lcom/layar/adapters/PoiActionsAdapter;->locker:Lcom/layar/data/PoiLocker;

    .line 76
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->locker:Lcom/layar/data/PoiLocker;

    invoke-interface {v1, p2}, Lcom/layar/data/PoiLocker;->isLocked(Lcom/layar/data/BasePOI;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    :goto_1
    invoke-static {v1}, Lcom/layar/data/PoiAction;->getLockAction(Z)Lcom/layar/data/PoiAction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layar/adapters/PoiActionsAdapter;->add(Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void

    .line 63
    .restart local p1
    :cond_2
    aget-object v0, v1, v3

    .line 64
    .local v0, action:Lcom/layar/data/PoiAction;
    iget-boolean v4, v0, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    if-eqz v4, :cond_3

    .line 65
    iget v4, p2, Lcom/layar/data/BasePOI;->geodistance:I

    iget v5, v0, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    if-le v4, v5, :cond_3

    .line 63
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0, v0}, Lcom/layar/adapters/PoiActionsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    .end local v0           #action:Lcom/layar/data/PoiAction;
    .end local p1
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/layar/adapters/PoiActionsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 83
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;

    .line 98
    .local v1, holder:Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/PoiActionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/PoiAction;

    .line 99
    .local v0, action:Lcom/layar/data/PoiAction;
    if-eqz v0, :cond_0

    .line 100
    iget-object v2, v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/layar/data/PoiAction;->ICONS:[I

    iget v4, v0, Lcom/layar/data/PoiAction;->activityType:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iput-object v0, v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;->action:Lcom/layar/data/PoiAction;

    .line 104
    :cond_0
    return-object p2

    .line 86
    .end local v0           #action:Lcom/layar/data/PoiAction;
    .end local v1           #holder:Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    new-instance v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;

    invoke-direct {v1, v4}, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;-><init>(Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;)V

    .line 88
    .restart local v1       #holder:Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    const v2, 0x7f07008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f070024

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 91
    iget-object v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_2
    iget v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->customItemBackground:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 94
    iget v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->customItemBackground:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;

    .line 111
    .local v7, holder:Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    if-eqz v7, :cond_0

    .line 112
    iget-object v0, v7, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;->action:Lcom/layar/data/PoiAction;

    .line 113
    .local v0, action:Lcom/layar/data/PoiAction;
    const-string v1, "lock"

    iget-object v2, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->locker:Lcom/layar/data/PoiLocker;

    iget-object v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->poi:Lcom/layar/data/BasePOI;

    invoke-interface {v1, v2}, Lcom/layar/data/PoiLocker;->lock(Lcom/layar/data/BasePOI;)V

    .line 127
    .end local v0           #action:Lcom/layar/data/PoiAction;
    .end local v7           #holder:Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v0       #action:Lcom/layar/data/PoiAction;
    .restart local v7       #holder:Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->owner:Landroid/app/Activity;

    instance-of v1, v1, Lcom/layar/data/AudioPlayer;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->owner:Landroid/app/Activity;

    check-cast v1, Lcom/layar/data/AudioPlayer;

    move-object v5, v1

    .line 119
    .local v5, player:Lcom/layar/data/AudioPlayer;
    :goto_1
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->owner:Landroid/app/Activity;

    instance-of v1, v1, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->owner:Landroid/app/Activity;

    check-cast v1, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    move-object v6, v1

    .line 122
    .local v6, listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    :goto_2
    iget-object v1, p0, Lcom/layar/adapters/PoiActionsAdapter;->layer:Lcom/layar/data/layer/Layer20;

    .line 123
    iget-object v2, p0, Lcom/layar/adapters/PoiActionsAdapter;->poi:Lcom/layar/data/BasePOI;

    iget-object v3, p0, Lcom/layar/adapters/PoiActionsAdapter;->owner:Landroid/app/Activity;

    iget-object v4, p0, Lcom/layar/adapters/PoiActionsAdapter;->poisContainer:Lcom/layar/core/POIsContainer;

    .line 122
    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    goto :goto_0

    .end local v5           #player:Lcom/layar/data/AudioPlayer;
    .end local v6           #listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    :cond_2
    move-object v5, v3

    .line 118
    goto :goto_1

    .restart local v5       #player:Lcom/layar/data/AudioPlayer;
    :cond_3
    move-object v6, v3

    .line 121
    goto :goto_2
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/layar/adapters/PoiActionsAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method public setItemBackground(I)V
    .locals 0
    .parameter "background"

    .prologue
    .line 52
    iput p1, p0, Lcom/layar/adapters/PoiActionsAdapter;->customItemBackground:I

    .line 53
    return-void
.end method
