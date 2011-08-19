.class Lb/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/dw;


# instance fields
.field final synthetic a:[LF/K;

.field final synthetic b:Lb/d;


# direct methods
.method constructor <init>(Lb/d;[LF/K;)V
    .locals 0

    iput-object p1, p0, Lb/v;->b:Lb/d;

    iput-object p2, p0, Lb/v;->a:[LF/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([LF/K;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    :goto_0
    iget-object v3, p0, Lb/v;->a:[LF/K;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lb/v;->a:[LF/K;

    aget-object v3, v3, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, LF/K;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v3}, LF/K;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v3}, LF/K;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string v1, "R"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lah/c;

    const-string v1, "changedRouteOptions"

    invoke-static {p1}, LF/c;->c([LF/K;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lah/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LaT/d;->b(LaT/f;)V

    iget-object v0, p0, Lb/v;->b:Lb/d;

    invoke-static {v0, v5}, Lb/d;->a(Lb/d;Z)Z

    iget-object v0, p0, Lb/v;->b:Lb/d;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Lb/d;->d(I)V

    iget-object v0, p0, Lb/v;->b:Lb/d;

    iget-object v0, v0, Lb/d;->i:LF/L;

    iget-object v1, p0, Lb/v;->b:Lb/d;

    iget-object v1, v1, Lb/d;->g:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->a()Laa/E;

    move-result-object v1

    iget-object v2, p0, Lb/v;->b:Lb/d;

    invoke-static {v2}, Lb/d;->a(Lb/d;)LF/M;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, LF/L;->a(Laa/E;LF/M;[LF/K;)V

    :cond_3
    return-void
.end method
