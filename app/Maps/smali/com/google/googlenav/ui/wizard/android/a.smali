.class Lcom/google/googlenav/ui/wizard/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/android/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/a;->a:Lcom/google/googlenav/ui/wizard/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/a;->a:Lcom/google/googlenav/ui/wizard/android/e;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/android/e;->b:Lcom/google/googlenav/ui/wizard/android/p;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/p;->a(Lcom/google/googlenav/ui/wizard/android/p;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method
