.class public Lcom/google/android/location/localizer/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:LW/o;

.field private final b:I

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(LW/o;ILjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/localizer/u;->a:LW/o;

    iput p2, p0, Lcom/google/android/location/localizer/u;->b:I

    iput-object p3, p0, Lcom/google/android/location/localizer/u;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()LW/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/localizer/u;->a:LW/o;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/u;->b:I

    return v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/localizer/u;->c:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiLocationResult [position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/location/localizer/u;->a:LW/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/location/localizer/u;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outliers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/location/localizer/u;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
