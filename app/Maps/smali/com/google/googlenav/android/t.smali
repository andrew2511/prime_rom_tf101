.class public Lcom/google/googlenav/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field private final a:Lcom/google/googlenav/android/ag;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/ag;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "where is "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/ag;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ag;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/ag;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/ag;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "where is "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
