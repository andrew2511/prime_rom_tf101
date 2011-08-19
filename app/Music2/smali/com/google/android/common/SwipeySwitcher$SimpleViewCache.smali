.class Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleViewCache"
.end annotation


# instance fields
.field private mAvailable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mInUse:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMaker:Lcom/google/android/common/SwipeySwitcher$IMakeView;

.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V
    .locals 1
    .parameter
    .parameter "maker"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    .line 118
    iput-object p2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mMaker:Lcom/google/android/common/SwipeySwitcher$IMakeView;

    .line 119
    return-void
.end method


# virtual methods
.method get(Landroid/content/Intent;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .locals 7
    .parameter "intent"

    .prologue
    .line 122
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mMaker:Lcom/google/android/common/SwipeySwitcher$IMakeView;

    invoke-interface {v4}, Lcom/google/android/common/SwipeySwitcher$IMakeView;->makeView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/common/SwipeySwitcher$ViewHolder;-><init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 126
    .local v1, retval:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object v0, v1

    check-cast v0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    move-object v2, v0

    invoke-static {v2, p1}, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->access$002(Lcom/google/android/common/SwipeySwitcher$ViewHolder;Landroid/content/Intent;)Landroid/content/Intent;

    .line 128
    return-object v1
.end method

.method memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
