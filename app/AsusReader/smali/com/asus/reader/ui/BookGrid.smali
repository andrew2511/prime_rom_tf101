.class public Lcom/asus/reader/ui/BookGrid;
.super Landroid/widget/GridView;
.source "BookGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/BookGrid$onLayoutListener;
    }
.end annotation


# instance fields
.field private mOnLayoutListener:Lcom/asus/reader/ui/BookGrid$onLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/reader/ui/BookGrid;->mOnLayoutListener:Lcom/asus/reader/ui/BookGrid$onLayoutListener;

    invoke-interface {v0, p1}, Lcom/asus/reader/ui/BookGrid$onLayoutListener;->drawBackground(Landroid/graphics/Canvas;)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method public setOnLayoutListener(Lcom/asus/reader/ui/BookGrid$onLayoutListener;)V
    .locals 0
    .parameter "onlayoutlistener"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/asus/reader/ui/BookGrid;->mOnLayoutListener:Lcom/asus/reader/ui/BookGrid$onLayoutListener;

    .line 39
    return-void
.end method
