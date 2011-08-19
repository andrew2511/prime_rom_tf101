.class Ll/f;
.super Ljava/lang/Object;

# interfaces
.implements Ll/q;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll/F;)V
    .locals 0

    invoke-direct {p0}, Ll/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler$Callback;)LK/e;
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RideAboutLocationDispatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LK/i;

    invoke-direct {v1, v0, p1}, LK/i;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method
