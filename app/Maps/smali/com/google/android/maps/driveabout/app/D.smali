.class public Lcom/google/android/maps/driveabout/app/D;
.super Landroid/app/Dialog;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/widget/ListAdapter;

.field private d:Lcom/google/android/maps/driveabout/app/aB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 3

    const v0, 0x7f0d0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/D;->a:I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/D;->b:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/D;->c:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/aB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/D;->d:Lcom/google/android/maps/driveabout/app/aB;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/D;->dismiss()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/D;->d:Lcom/google/android/maps/driveabout/app/aB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/D;->d:Lcom/google/android/maps/driveabout/app/aB;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/aB;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, -0x2

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/D;->setContentView(I)V

    const v0, 0x7f0f0011

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/maps/driveabout/app/ce;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/ce;-><init>(Lcom/google/android/maps/driveabout/app/D;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/D;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/D;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    const v0, 0x7f0f00d8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    const v1, 0x7f0f00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/D;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/D;->a:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/D;->b:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x33

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x20100

    or-int/2addr v0, v1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/D;->cancel()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/D;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
