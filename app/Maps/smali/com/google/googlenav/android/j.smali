.class Lcom/google/googlenav/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/j;->a:Lcom/google/googlenav/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/j;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->g(Lcom/google/googlenav/android/w;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    return-void
.end method
