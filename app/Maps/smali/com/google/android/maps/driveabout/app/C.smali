.class Lcom/google/android/maps/driveabout/app/C;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/eF;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eF;Lcom/google/android/maps/driveabout/app/RouteSelectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/C;->b:Lcom/google/android/maps/driveabout/app/eF;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/C;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/C;->b:Lcom/google/android/maps/driveabout/app/eF;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/eF;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/C;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/eF;->a(Lcom/google/android/maps/driveabout/app/eF;)LF/M;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cj;->a(LF/M;)V

    return-void
.end method
