.class public Lcom/asus/reader/BookListActivity$backItem;
.super Ljava/lang/Object;
.source "BookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "backItem"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2106
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$backItem;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    iput v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mId:I

    .line 2107
    iput v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mId:I

    .line 2108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2109
    return-void
.end method


# virtual methods
.method public draw(IIIILandroid/graphics/Canvas;)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "canvas"

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2141
    :goto_0
    return-void

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2136
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setResourceId(I)V
    .locals 2
    .parameter "newid"

    .prologue
    .line 2117
    iget v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mId:I

    if-ne p1, v0, :cond_0

    .line 2124
    :goto_0
    return-void

    .line 2121
    :cond_0
    iput p1, p0, Lcom/asus/reader/BookListActivity$backItem;->mId:I

    .line 2122
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$backItem;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v0}, Lcom/asus/reader/BookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/BookListActivity$backItem;->mId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/BookListActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
