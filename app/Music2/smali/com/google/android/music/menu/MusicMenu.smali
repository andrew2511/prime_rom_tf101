.class public abstract Lcom/google/android/music/menu/MusicMenu;
.super Ljava/lang/Object;
.source "MusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/menu/MusicMenu$Callback;
    }
.end annotation


# static fields
.field public static final DIRECTION_ABOVE:I = 0x1

.field public static final DIRECTION_BELOW:I = 0x3

.field public static final DIRECTION_NONE:I = 0x0

.field public static final DIRECTION_TO_LEFT_OF:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "MusicMenu"


# instance fields
.field protected mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

.field protected mContext:Landroid/content/Context;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/menu/MusicMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMenuInfo:Ljava/lang/Object;

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenu;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/android/music/menu/MusicMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    .line 29
    iput-object p3, p0, Lcom/google/android/music/menu/MusicMenu;->mRootView:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract add(III)Lcom/google/android/music/menu/MusicMenuItem;
.end method

.method public abstract add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;
.end method

.method public abstract addSubMenu(III)Lcom/google/android/music/menu/MusicMenu;
.end method

.method public abstract addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;
.end method

.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method protected findInsertIndex(I)I
    .locals 4
    .parameter "order"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 118
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicMenuItem;

    .line 119
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenuItem;->getOrder()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 120
    add-int/lit8 v2, v0, 0x1

    .line 124
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :goto_1
    return v2

    .line 117
    .restart local v1       #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 124
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public abstract findItem(I)Lcom/google/android/music/menu/MusicMenuItem;
.end method

.method public abstract findItemIndex(I)I
.end method

.method public getCallback()Lcom/google/android/music/menu/MusicMenu$Callback;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem()Lcom/google/android/music/menu/MusicMenuItem;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/menu/MusicMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMenuInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mMenuInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getMenuView()Landroid/view/View;
.end method

.method public getRadioButtonsEnabled()Z
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/menu/MusicMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, visible:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/menu/MusicMenuItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicMenuItem;

    invoke-virtual {v2}, Lcom/google/android/music/menu/MusicMenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return-object v1
.end method

.method public abstract isOpen()Z
.end method

.method public abstract markViewStale()V
.end method

.method protected onItemChecked(Lcom/google/android/music/menu/MusicMenuItem;Z)V
    .locals 1
    .parameter "item"
    .parameter "checked"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z
.end method

.method public abstract removeItem(I)V
.end method

.method public setCallback(Lcom/google/android/music/menu/MusicMenu$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    .line 137
    return-void
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLocation(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setMenuInfo(Ljava/lang/Object;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenu;->mMenuInfo:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public setRadioButtonsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract show()V
.end method
