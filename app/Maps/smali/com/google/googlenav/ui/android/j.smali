.class Lcom/google/googlenav/ui/android/j;
.super Landroid/text/style/ReplacementSpan;


# instance fields
.field private final a:Lk/j;

.field private final b:LaB/h;


# direct methods
.method public constructor <init>(Lk/j;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, LaB/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LaB/h;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/j;->b:LaB/h;

    iput-object p1, p0, Lcom/google/googlenav/ui/android/j;->a:Lk/j;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 5

    const/4 v0, 0x1

    sub-int v0, p4, v0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/j;->b:LaB/h;

    invoke-virtual {v1, p1}, LaB/h;->a(Landroid/graphics/Canvas;)V

    add-int v1, p6, p8

    iget-object v2, p0, Lcom/google/googlenav/ui/android/j;->a:Lk/j;

    invoke-interface {v2, v0}, Lk/j;->b(C)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/j;->a:Lk/j;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/j;->b:LaB/h;

    float-to-int v4, p5

    invoke-interface {v2, v0, v3, v4, v1}, Lk/j;->a(CLk/m;II)Z

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    const/4 v0, 0x1

    sub-int v0, p4, v0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/j;->a:Lk/j;

    invoke-interface {v1, v0}, Lk/j;->c(C)I

    move-result v0

    return v0
.end method
