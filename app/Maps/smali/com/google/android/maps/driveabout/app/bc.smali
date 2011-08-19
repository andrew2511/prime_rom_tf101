.class public Lcom/google/android/maps/driveabout/app/bc;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/maps/driveabout/app/az;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PAUSED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RUNNING"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/app/bc;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bc;->c:I

    return-void
.end method

.method private a(I)V
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->g()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Lcom/google/android/maps/driveabout/app/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/be;->a(I)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 0

    iput p2, p0, Lcom/google/android/maps/driveabout/app/bc;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bc;->a(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bc;->b:Lcom/google/android/maps/driveabout/app/az;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/az;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bc;->a(II)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/az;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bc;->b:Lcom/google/android/maps/driveabout/app/az;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bc;->b:Lcom/google/android/maps/driveabout/app/az;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/az;->a()V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bc;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, v3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/bc;->a(I)V

    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/bc;->a(I)V

    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bc;->a(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bc;->b:Lcom/google/android/maps/driveabout/app/az;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/az;->a()V

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bc;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/bc;->a(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bc;->b:Lcom/google/android/maps/driveabout/app/az;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/az;->b()V

    return-void
.end method
