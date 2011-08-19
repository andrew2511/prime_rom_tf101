.class Lcom/google/googlenav/suggest/android/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestProvider;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/SuggestProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/k;->a:Lcom/google/googlenav/suggest/android/SuggestProvider;

    invoke-static {v0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->a(Lcom/google/googlenav/suggest/android/SuggestProvider;)V

    return-void
.end method
