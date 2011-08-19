.class Lh/ev;
.super Ljava/lang/Object;

# interfaces
.implements Lak/i;


# instance fields
.field private a:Z

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/ev;->a:Z

    iput-object p1, p0, Lh/ev;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lh/ev;)Z
    .locals 1

    iget-boolean v0, p0, Lh/ev;->a:Z

    return v0
.end method


# virtual methods
.method public X_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/ev;->a:Z

    iget-object v0, p0, Lh/ev;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
