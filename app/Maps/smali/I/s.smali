.class LI/s;
.super Ljava/lang/Object;

# interfaces
.implements Lx/x;


# instance fields
.field final synthetic a:LI/x;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(LI/x;)V
    .locals 1

    iput-object p1, p0, LI/s;->a:LI/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI/z;

    invoke-direct {v0, p0}, LI/z;-><init>(LI/s;)V

    iput-object v0, p0, LI/s;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(LI/x;LI/L;)V
    .locals 0

    invoke-direct {p0, p1}, LI/s;-><init>(LI/x;)V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 2

    iget-object v0, p0, LI/s;->a:LI/x;

    invoke-static {v0}, LI/x;->a(LI/x;)Lcom/google/googlenav/ui/android/LoadingFooterView;

    move-result-object v0

    iget-object v1, p0, LI/s;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
