.class public Lcom/asus/livewallpaper/gl/GLBubbleItems;
.super Lcom/asus/livewallpaper/gl/GLDrawItem;
.source "GLBubbleItems.java"


# instance fields
.field private mAngle2D:F

.field public mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

.field private mBubbleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/asus/livewallpaper/gl/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/high16 v8, 0x41f8

    const/high16 v7, 0x41e8

    const/high16 v5, 0x4190

    const/high16 v4, 0x41b8

    const/high16 v6, 0x41c8

    .line 21
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLDrawItem;-><init>()V

    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/asus/livewallpaper/gl/GLBubbleItem;

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mAngle2D:F

    .line 23
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020003

    invoke-direct {v2, v3, v4, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 24
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x1

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020008

    invoke-direct {v2, v3, v5, v5}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x2

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020002

    invoke-direct {v2, v3, v8, v8}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 26
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x3

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020007

    invoke-direct {v2, v3, v4, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 27
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x4

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020001

    const/high16 v4, 0x4228

    const/high16 v5, 0x4220

    invoke-direct {v2, v3, v4, v5}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x5

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020006

    invoke-direct {v2, v3, v7, v7}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 29
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x6

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020012

    const/high16 v4, 0x42fc

    invoke-direct {v2, v3, v6, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/4 v1, 0x7

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020013

    const/high16 v4, 0x42b8

    invoke-direct {v2, v3, v6, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 31
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/16 v1, 0x8

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020014

    const/high16 v4, 0x4292

    invoke-direct {v2, v3, v6, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/16 v1, 0x9

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020015

    const/high16 v4, 0x42ae

    invoke-direct {v2, v3, v6, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 33
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/16 v1, 0xa

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020016

    const/high16 v4, 0x429c

    invoke-direct {v2, v3, v6, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const/16 v1, 0xb

    new-instance v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;

    const v3, 0x7f020017

    const/high16 v4, 0x42d4

    invoke-direct {v2, v3, v6, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;-><init>(IFF)V

    aput-object v2, v0, v1

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    .line 40
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/livewallpaper/gl/Bubble;

    .line 42
    .local v0, b:Lcom/asus/livewallpaper/gl/Bubble;
    iget v3, v0, Lcom/asus/livewallpaper/gl/Bubble;->type:I

    if-nez v3, :cond_0

    .line 43
    sget-object v3, Lcom/asus/livewallpaper/gl/Bubble;->CHARGEBUBBLEIDS:[I

    iget v4, v0, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    aget v2, v3, v4

    .line 44
    .local v2, index:I
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v3, v3, v2

    iget v4, v0, Lcom/asus/livewallpaper/gl/Bubble;->tX:F

    iget v5, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, v0, Lcom/asus/livewallpaper/gl/Bubble;->tY:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->moveToWorld(FF)V

    .line 45
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mAngle2D:F

    invoke-virtual {v3, v7, v7, v7, v4}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->moveTo(FFFF)V

    .line 46
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 48
    .end local v2           #index:I
    :cond_0
    sget-object v3, Lcom/asus/livewallpaper/gl/Bubble;->BUBBLEIDS:[I

    iget v4, v0, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    aget v2, v3, v4

    .line 49
    .restart local v2       #index:I
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v3, v3, v2

    iget v4, v0, Lcom/asus/livewallpaper/gl/Bubble;->tX:F

    iget v5, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, v0, Lcom/asus/livewallpaper/gl/Bubble;->tY:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5, v7, v7}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->moveTo(FFFF)V

    .line 50
    iget-object v3, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 53
    .end local v0           #b:Lcom/asus/livewallpaper/gl/Bubble;
    .end local v2           #index:I
    :cond_1
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/LinkedList;)V
    .locals 0
    .parameter "gl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/opengles/GL10;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/asus/livewallpaper/gl/Bubble;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, bubbleList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/asus/livewallpaper/gl/Bubble;>;"
    iput-object p2, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleList:Ljava/util/LinkedList;

    .line 61
    invoke-virtual {p0, p1}, Lcom/asus/livewallpaper/gl/GLBubbleItems;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 62
    return-void
.end method

.method public setRotate(F)V
    .locals 0
    .parameter "rotate2d"

    .prologue
    .line 56
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mAngle2D:F

    .line 57
    return-void
.end method

.method public setScreen(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mScreenWidth:I

    .line 66
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mScreenHeight:I

    .line 67
    return-void
.end method
