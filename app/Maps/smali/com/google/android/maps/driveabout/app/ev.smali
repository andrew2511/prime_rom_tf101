.class Lcom/google/android/maps/driveabout/app/ev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/be;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ev;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ev;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "I"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/be;->m()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/be;)Lb/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p3}, Lb/k;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
