.class Lcom/google/android/maps/driveabout/app/dq;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private final b:Landroid/view/View;

.field private final c:Z

.field private d:Ljava/lang/Runnable;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dq;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dq;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/dq;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/dq;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dq;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    const v1, 0x7f040002

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->b:Landroid/view/View;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/dq;->c:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/dL;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dL;-><init>(Lcom/google/android/maps/driveabout/app/dq;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dq;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dq;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dq;->b(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/dq;->e:Z

    return v0
.end method
