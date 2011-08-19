.class Lcom/google/googlenav/suggest/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/g;->a:Lcom/google/googlenav/suggest/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/g;->a:Lcom/google/googlenav/suggest/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/a;->requery()Z

    return-void
.end method
