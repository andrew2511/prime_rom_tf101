.class Lcom/google/android/maps/driveabout/app/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ds;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ds;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/aQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->e()LF/u;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/aQ;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;LF/u;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aQ;->c()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;I)V

    goto :goto_0
.end method
