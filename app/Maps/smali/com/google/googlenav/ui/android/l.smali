.class Lcom/google/googlenav/ui/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aO;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/bK;

.field final synthetic b:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/android/maps/driveabout/vector/bK;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/l;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/l;->a:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->a:Lcom/google/android/maps/driveabout/vector/bK;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ar()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bK;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/l;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->b(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j()V

    return-void
.end method
