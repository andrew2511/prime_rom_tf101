.class Lcom/google/googlenav/ui/android/I;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/ui/android/I;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/android/I;->a:I

    iput p2, p0, Lcom/google/googlenav/ui/android/I;->b:I

    iput-boolean p4, p0, Lcom/google/googlenav/ui/android/I;->d:Z

    if-eqz p3, :cond_0

    iput p3, p0, Lcom/google/googlenav/ui/android/I;->c:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0203c6

    iput v0, p0, Lcom/google/googlenav/ui/android/I;->c:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/I;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/android/I;->c:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/I;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/I;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/ap;

    invoke-direct {v0, p1, p0}, Lcom/google/googlenav/ui/android/ap;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/android/I;)V

    return-object v0
.end method

.method public a(III)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/googlenav/ui/android/I;->a:I

    if-eq v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/android/I;->b:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/android/I;->b:I

    if-ne v0, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
