.class Lcom/google/android/maps/driveabout/app/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ab;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ab;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/be;)Lb/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ab;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/be;->d(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/bX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->v()LF/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/k;->a(LF/u;Z)V

    return-void
.end method
