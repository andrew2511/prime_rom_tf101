.class public Lcom/google/android/maps/driveabout/vector/aM;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private final f:Ljava/lang/Boolean;

.field private final g:Ljava/lang/Boolean;

.field private final h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Z

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:I

    iput p6, p0, Lcom/google/android/maps/driveabout/vector/aM;->c:I

    iput p7, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:I

    iput p8, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:I

    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ao;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ao;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(ZZZ)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
