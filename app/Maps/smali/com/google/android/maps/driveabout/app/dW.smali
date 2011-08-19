.class Lcom/google/android/maps/driveabout/app/dW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dW;->a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dW;->a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-ltz v1, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p4, v1

    if-gez v1, :cond_0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/dn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dW;->a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->a(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;Lcom/google/android/maps/driveabout/app/dn;)V

    :cond_0
    return-void
.end method
