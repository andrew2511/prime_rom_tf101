.class Lcom/google/android/maps/driveabout/app/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/an;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/an;->a:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/an;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/be;)Lb/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->r()V

    move v0, v3

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/an;->a:Z

    move v0, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/an;->a(Landroid/view/View;)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/an;->a(Landroid/view/View;)V

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
