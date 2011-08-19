.class Lcom/google/googlenav/prefetch/android/i;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/i;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/prefetch/android/i;-><init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/prefetch/android/l;->c()Lcom/google/googlenav/prefetch/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/l;->b()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    invoke-static {}, Lcom/google/googlenav/android/c;->g()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/i;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
