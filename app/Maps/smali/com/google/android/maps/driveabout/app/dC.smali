.class Lcom/google/android/maps/driveabout/app/dC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/ee;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/dO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dC;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->i(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Z)V
    .locals 5

    const v4, 0x7f0f0092

    const v3, 0x7f0f008f

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->c()[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->h(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0
.end method
