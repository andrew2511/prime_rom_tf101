.class Lcom/google/googlenav/ui/view/android/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic d:Z


# instance fields
.field a:I

.field b:I

.field c:Lcom/google/googlenav/ui/view/android/aZ;

.field final synthetic e:Lcom/google/googlenav/ui/view/android/aZ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/googlenav/ui/view/android/aZ;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/googlenav/ui/view/android/af;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/view/android/aZ;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/af;->e:Lcom/google/googlenav/ui/view/android/aZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/af;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/af;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x578

    sget-boolean v0, Lcom/google/googlenav/ui/view/android/af;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/view/android/af;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/google/googlenav/ui/view/android/af;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->e:Lcom/google/googlenav/ui/view/android/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aZ;->q:Li/bl;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/af;->a:I

    iget v2, p0, Lcom/google/googlenav/ui/view/android/af;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Li/bl;->a(IILjava/lang/Object;)Z

    iget v0, p0, Lcom/google/googlenav/ui/view/android/af;->a:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/view/android/aZ;->o:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/google/googlenav/ui/view/android/aZ;->o:Z

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/af;->c:Lcom/google/googlenav/ui/view/android/aZ;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/android/aZ;->o:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
