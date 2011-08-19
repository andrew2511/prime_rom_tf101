.class Lcom/google/googlenav/ui/android/T;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/B;


# direct methods
.method constructor <init>(LG/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/T;->a:LG/B;

    return-void
.end method


# virtual methods
.method public a()LG/B;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->a:LG/B;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->a:LG/B;

    invoke-virtual {v0}, LG/B;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
