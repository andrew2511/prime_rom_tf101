.class public Lcom/google/android/maps/driveabout/power/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/power/g;

.field private b:Landroid/view/Window;

.field private c:Lcom/google/android/maps/driveabout/power/c;

.field private d:F

.field private e:Laa/D;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/power/h;->a:Lcom/google/android/maps/driveabout/power/g;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/power/h;->b:Landroid/view/Window;

    new-instance v0, Lcom/google/android/maps/driveabout/power/b;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/power/h;->c:Lcom/google/android/maps/driveabout/power/c;

    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/google/android/maps/driveabout/power/h;->d:F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/power/h;->e:Laa/D;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/maps/driveabout/power/h;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Window;)Lcom/google/android/maps/driveabout/power/h;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/h;->b:Landroid/view/Window;

    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/power/c;)Lcom/google/android/maps/driveabout/power/h;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/h;->c:Lcom/google/android/maps/driveabout/power/c;

    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/power/g;)Lcom/google/android/maps/driveabout/power/h;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/h;->a:Lcom/google/android/maps/driveabout/power/g;

    return-object p0
.end method

.method public a()V
    .locals 8

    new-instance v0, Lcom/google/android/maps/driveabout/power/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/h;->a:Lcom/google/android/maps/driveabout/power/g;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/power/h;->b:Landroid/view/Window;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/power/h;->c:Lcom/google/android/maps/driveabout/power/c;

    iget v4, p0, Lcom/google/android/maps/driveabout/power/h;->d:F

    iget-object v5, p0, Lcom/google/android/maps/driveabout/power/h;->e:Laa/D;

    iget v6, p0, Lcom/google/android/maps/driveabout/power/h;->f:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/power/i;-><init>(Lcom/google/android/maps/driveabout/power/g;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/c;FLaa/D;ILcom/google/android/maps/driveabout/power/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->e(Lcom/google/android/maps/driveabout/power/i;)V

    return-void
.end method
