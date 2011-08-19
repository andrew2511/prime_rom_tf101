.class Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lx/U;

.field private final b:Lx/U;


# direct methods
.method public constructor <init>(Lx/U;Lx/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;->a:Lx/U;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;->b:Lx/U;

    return-void
.end method


# virtual methods
.method public notifyClick(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;->a:Lx/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;->a:Lx/U;

    new-instance v1, Lx/a;

    invoke-direct {v1, p1}, Lx/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    :cond_0
    return-void
.end method

.method public notifyPageLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;->b:Lx/U;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/BaseAndroidDialog$JavaScriptReceiver;->b:Lx/U;

    new-instance v1, Lx/a;

    invoke-direct {v1, p2, p1}, Lx/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lx/U;->a(Lx/Q;)Z

    :cond_0
    return-void
.end method
