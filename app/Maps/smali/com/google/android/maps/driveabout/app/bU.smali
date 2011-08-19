.class Lcom/google/android/maps/driveabout/app/bU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationView;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bU;->b:Lcom/google/android/maps/driveabout/app/be;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bU;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x18

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->b:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/be;->a(I)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bU;->b:Lcom/google/android/maps/driveabout/app/be;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/be;->a(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0
.end method
