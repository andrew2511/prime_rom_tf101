.class Lcom/google/android/apps/circles/people/c;
.super Lcom/google/android/apps/circles/people/a;


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/apps/circles/people/MultiLineLayout;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    iput p2, p0, Lcom/google/android/apps/circles/people/c;->b:I

    iput p3, p0, Lcom/google/android/apps/circles/people/c;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/circles/people/a;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;Lcom/google/android/apps/circles/people/b;)V

    iput v1, p0, Lcom/google/android/apps/circles/people/c;->e:I

    iput v1, p0, Lcom/google/android/apps/circles/people/c;->f:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/apps/circles/people/a;->a(I)V

    iget v0, p0, Lcom/google/android/apps/circles/people/c;->e:I

    iget-object v1, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/circles/people/c;->e:I

    iget v0, p0, Lcom/google/android/apps/circles/people/c;->f:I

    iget-object v1, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/circles/people/c;->f:I

    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    iget v1, p0, Lcom/google/android/apps/circles/people/c;->e:I

    iget v2, p0, Lcom/google/android/apps/circles/people/c;->b:I

    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/circles/people/c;->f:I

    iget v3, p0, Lcom/google/android/apps/circles/people/c;->c:I

    invoke-static {v2, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->a(Lcom/google/android/apps/circles/people/MultiLineLayout;II)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    iget v1, p0, Lcom/google/android/apps/circles/people/c;->b:I

    iget v2, p0, Lcom/google/android/apps/circles/people/c;->c:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->a(Lcom/google/android/apps/circles/people/MultiLineLayout;Landroid/view/View;II)V

    return-void
.end method

.method protected a(Landroid/view/View;IIII)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/circles/people/c;->e:I

    add-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/circles/people/c;->e:I

    iget v0, p0, Lcom/google/android/apps/circles/people/c;->f:I

    add-int v1, p3, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/circles/people/c;->f:I

    return-void
.end method
