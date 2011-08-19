.class LF/E;
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

    invoke-direct {p0, p1, p2, p3, v0}, LF/E;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/E;->a:I

    iput p2, p0, LF/E;->b:I

    iput-boolean p4, p0, LF/E;->d:Z

    if-eqz p3, :cond_0

    iput p3, p0, LF/E;->c:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f02013b

    iput v0, p0, LF/E;->c:I

    goto :goto_0
.end method

.method static synthetic a(LF/E;)I
    .locals 1

    iget v0, p0, LF/E;->c:I

    return v0
.end method

.method static synthetic b(LF/E;)Z
    .locals 1

    iget-boolean v0, p0, LF/E;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, LF/a;

    invoke-direct {v0, p1, p0}, LF/a;-><init>(Landroid/content/Context;LF/E;)V

    return-object v0
.end method

.method public a(III)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, LF/E;->a:I

    if-eq v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LF/E;->b:I

    if-eqz v0, :cond_1

    iget v0, p0, LF/E;->b:I

    if-ne v0, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
