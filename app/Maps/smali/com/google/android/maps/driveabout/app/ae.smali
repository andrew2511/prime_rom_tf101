.class Lcom/google/android/maps/driveabout/app/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ae;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ae;->a:Lcom/google/android/maps/driveabout/app/be;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ae;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/be;)Lb/p;

    move-result-object v1

    invoke-virtual {v1}, Lb/p;->a()Lb/k;

    move-result-object v1

    sget-object v2, Lb/q;->a:Lb/q;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->c(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
