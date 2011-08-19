.class Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;
.super Ljava/lang/Object;
.source "BaseLayersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/BaseLayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolderHelper"
.end annotation


# instance fields
.field private iconsFetching:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconsPending:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private layersViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private viewHoldersLayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsPending:Ljava/util/Stack;

    .line 449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->layersViewHolders:Ljava/util/HashMap;

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->viewHoldersLayers:Ljava/util/HashMap;

    .line 451
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsFetching:Ljava/util/HashSet;

    .line 447
    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->setNotFetchingIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->anyIconsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->popPendingIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->getViewHolder(Ljava/lang/String;)Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->clearAll()V

    return-void
.end method

.method static synthetic access$6(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->associate(Ljava/lang/String;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$7(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->isFetching(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->pushPendingIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->setFetchingIcon(Ljava/lang/String;)V

    return-void
.end method

.method private anyIconsPending()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsPending:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private associate(Ljava/lang/String;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V
    .locals 1
    .parameter "layerName"
    .parameter "viewHolder"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->layersViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->viewHoldersLayers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->viewHoldersLayers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->viewHoldersLayers:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    return-void
.end method

.method private clearAll()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsPending:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 516
    invoke-direct {p0}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->clearFetching()V

    .line 517
    return-void
.end method

.method private clearFetching()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->layersViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 507
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->viewHoldersLayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 508
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsFetching:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 509
    return-void
.end method

.method private getViewHolder(Ljava/lang/String;)Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    .locals 1
    .parameter "layerName"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->layersViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    return-object p0
.end method

.method private isFetching(Ljava/lang/String;)Z
    .locals 1
    .parameter "layerName"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsFetching:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private popPendingIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsPending:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private pushPendingIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "layerName"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsPending:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method private setFetchingIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "layerName"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsFetching:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method private setNotFetchingIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "layerName"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->iconsFetching:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 500
    return-void
.end method
