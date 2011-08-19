.class public Lcom/google/android/maps/driveabout/vector/ao;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x73217bce

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->g:I

    const v0, 0x338cc6ef

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->h:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->f:Z

    return-object p0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    invoke-virtual {p0, p1, p1}, Lcom/google/android/maps/driveabout/vector/ao;->a(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->d:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->f:Z

    return-object p0
.end method

.method public b(II)Lcom/google/android/maps/driveabout/vector/ao;
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/ao;->g:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/ao;->h:I

    return-object p0
.end method

.method public b(Z)Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/aM;
    .locals 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Texture ID must be specified."

    invoke-static {v0, v1}, Lae/k;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aM;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ao;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ao;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ao;->c:Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ao;->f:Z

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ao;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ao;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ao;->g:I

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/ao;->h:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/aM;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZIIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Lcom/google/android/maps/driveabout/vector/ao;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ao;->c:Ljava/lang/Boolean;

    return-object p0
.end method
