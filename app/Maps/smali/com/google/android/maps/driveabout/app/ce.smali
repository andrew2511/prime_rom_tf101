.class Lcom/google/android/maps/driveabout/app/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/D;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/D;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ce;->a:Lcom/google/android/maps/driveabout/app/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    if-gez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ce;->a:Lcom/google/android/maps/driveabout/app/D;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/D;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
