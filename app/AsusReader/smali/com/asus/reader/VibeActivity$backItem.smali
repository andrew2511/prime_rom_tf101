.class public Lcom/asus/reader/VibeActivity$backItem;
.super Ljava/lang/Object;
.source "VibeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/VibeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "backItem"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/VibeActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1390
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$backItem;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mId:I

    .line 1391
    iput v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mId:I

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1393
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
    .line 1415
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1420
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setResourceId(I)V
    .locals 2
    .parameter "newid"

    .prologue
    .line 1401
    iget v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mId:I

    if-ne p1, v0, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1405
    :cond_0
    iput p1, p0, Lcom/asus/reader/VibeActivity$backItem;->mId:I

    .line 1406
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$backItem;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-virtual {v0}, Lcom/asus/reader/VibeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/VibeActivity$backItem;->mId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/VibeActivity$backItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
