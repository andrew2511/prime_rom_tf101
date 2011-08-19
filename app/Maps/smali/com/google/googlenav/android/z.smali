.class Lcom/google/googlenav/android/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/android/a;

    iget-object v1, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/google/googlenav/android/a;-><init>(Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Void;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
