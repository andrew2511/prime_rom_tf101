.class Lcom/google/googlenav/android/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/A;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/A;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/aa;->a:Lcom/google/googlenav/android/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/aa;->a:Lcom/google/googlenav/android/A;

    iget-object v0, v0, Lcom/google/googlenav/android/A;->b:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-static {v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)[B

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/googlenav/android/aa;->a:Lcom/google/googlenav/android/A;

    iget-object v1, v1, Lcom/google/googlenav/android/A;->b:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-static {v1}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->b(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/android/aa;->a:Lcom/google/googlenav/android/A;

    iget-object v1, v1, Lcom/google/googlenav/android/A;->b:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->showDialog(I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
