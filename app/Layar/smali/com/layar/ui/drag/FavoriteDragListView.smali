.class public Lcom/layar/ui/drag/FavoriteDragListView;
.super Lcom/layar/ui/drag/DragListView;
.source "FavoriteDragListView.java"


# instance fields
.field private final UNDRAGGABLE:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/drag/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f070051

    aput v2, v0, v1

    iput-object v0, p0, Lcom/layar/ui/drag/FavoriteDragListView;->UNDRAGGABLE:[I

    .line 14
    return-void
.end method


# virtual methods
.method protected getUndraggable()[I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/layar/ui/drag/FavoriteDragListView;->UNDRAGGABLE:[I

    return-object v0
.end method
