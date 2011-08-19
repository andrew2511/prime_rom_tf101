.class Lcom/google/android/maps/driveabout/app/bO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/be;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bO;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/be;->c(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/be;->a(LF/y;Z)V

    return-void
.end method
