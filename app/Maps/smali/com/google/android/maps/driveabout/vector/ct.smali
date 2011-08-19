.class public Lcom/google/android/maps/driveabout/vector/ct;
.super Lcom/google/android/maps/driveabout/vector/bh;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/maps/driveabout/vector/bh;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bh;-><init>()V

    invoke-static {p2}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/maps/driveabout/vector/ct;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bh;->a(Lcom/google/android/maps/driveabout/vector/bh;Lcom/google/android/maps/driveabout/vector/bh;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KeyedLabelSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->b:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ct;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
