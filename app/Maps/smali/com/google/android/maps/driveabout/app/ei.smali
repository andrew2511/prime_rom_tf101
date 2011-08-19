.class Lcom/google/android/maps/driveabout/app/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/bf;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bf;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Lcom/google/android/maps/driveabout/app/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ei;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ei;->a:Lcom/google/android/maps/driveabout/app/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ei;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public a(LF/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ei;->a:Lcom/google/android/maps/driveabout/app/bf;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/bf;->a(LF/u;)V

    return-void
.end method
