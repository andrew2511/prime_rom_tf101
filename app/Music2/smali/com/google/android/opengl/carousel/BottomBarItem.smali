.class public Lcom/google/android/opengl/carousel/BottomBarItem;
.super Landroid/app/Dialog;
.source "BottomBarItem.java"


# instance fields
.field final mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 18
    iput p2, p0, Lcom/google/android/opengl/carousel/BottomBarItem;->mLayoutResId:I

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 23
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0, v5}, Lcom/google/android/opengl/carousel/BottomBarItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    iget v1, p0, Lcom/google/android/opengl/carousel/BottomBarItem;->mLayoutResId:I

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/BottomBarItem;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/BottomBarItem;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 27
    .local v0, l:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 28
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 29
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 30
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 33
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 34
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 35
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 37
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 39
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 40
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/BottomBarItem;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, v4}, Lcom/google/android/opengl/carousel/BottomBarItem;->setCancelable(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/BottomBarItem;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 44
    return-void
.end method
