.class Lcom/google/android/maps/driveabout/app/dF;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cB;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/cB;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/cB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/cB;->a(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dF;->a:Lcom/google/android/maps/driveabout/app/cB;

    iget-object p0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/cB;->c(Ljava/util/ArrayList;)V

    return-void
.end method
