.class public Lcom/google/googlenav/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field private final a:Lcom/google/googlenav/android/ag;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/p;->a:Lcom/google/googlenav/android/ag;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/p;->a:Lcom/google/googlenav/android/ag;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ag;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
