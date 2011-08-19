.class Lcom/google/googlenav/android/a;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/a;->a:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    sget-object v0, Lcom/google/googlenav/prefetch/android/u;->a:Lcom/google/googlenav/prefetch/android/u;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/u;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->f()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/android/a;->a:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-static {v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->c(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/a;->a(Ljava/lang/Void;)V

    return-void
.end method
