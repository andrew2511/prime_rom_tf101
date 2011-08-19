.class Lcom/google/googlenav/android/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/prefetch/android/w;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;

.field final synthetic b:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/A;->b:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    iput-object p2, p0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/android/aa;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/aa;-><init>(Lcom/google/googlenav/android/A;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
