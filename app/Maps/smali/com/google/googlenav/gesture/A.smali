.class public abstract Lcom/google/googlenav/gesture/A;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/google/googlenav/gesture/A;


# instance fields
.field protected a:Lcom/google/googlenav/gesture/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;

    invoke-direct {v0}, Lcom/google/googlenav/gesture/MultiTouchControllerSdk5;-><init>()V

    sput-object v0, Lcom/google/googlenav/gesture/A;->b:Lcom/google/googlenav/gesture/A;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/googlenav/gesture/A;
    .locals 1

    sget-object v0, Lcom/google/googlenav/gesture/A;->b:Lcom/google/googlenav/gesture/A;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/content/Context;Lcom/google/googlenav/gesture/p;)V
    .locals 0

    iput-object p2, p0, Lcom/google/googlenav/gesture/A;->a:Lcom/google/googlenav/gesture/p;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/gesture/A;->a(Landroid/content/Context;)V

    return-void
.end method

.method public abstract a(Landroid/content/pm/PackageManager;)V
.end method

.method public abstract a()Z
.end method

.method public abstract a(Landroid/view/MotionEvent;)Z
.end method

.method public abstract b()V
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/gesture/A;->a:Lcom/google/googlenav/gesture/p;

    return-void
.end method
