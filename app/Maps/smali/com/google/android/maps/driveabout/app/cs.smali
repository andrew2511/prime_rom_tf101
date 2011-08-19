.class Lcom/google/android/maps/driveabout/app/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cz;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cs;->a:Lcom/google/android/maps/driveabout/app/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cs;->a:Lcom/google/android/maps/driveabout/app/cz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/cz;->a(Lcom/google/android/maps/driveabout/app/cz;I)I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cs;->a:Lcom/google/android/maps/driveabout/app/cz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cz;->a(Lcom/google/android/maps/driveabout/app/cz;)Lcom/google/android/maps/driveabout/app/dc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cs;->a:Lcom/google/android/maps/driveabout/app/cz;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/cz;->a(Lcom/google/android/maps/driveabout/app/cz;)Lcom/google/android/maps/driveabout/app/dc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dc;->a()V

    :cond_0
    return-void
.end method
