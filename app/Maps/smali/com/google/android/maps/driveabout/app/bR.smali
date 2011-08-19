.class Lcom/google/android/maps/driveabout/app/bR;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bR;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bR;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/y;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/be;->a(LF/y;Z)V

    return-void
.end method
