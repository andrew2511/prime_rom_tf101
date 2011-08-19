.class public abstract Lcom/google/googlenav/gesture/C;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/gesture/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/gesture/GestureControllerSdk5;

    invoke-direct {v0}, Lcom/google/googlenav/gesture/GestureControllerSdk5;-><init>()V

    sput-object v0, Lcom/google/googlenav/gesture/C;->a:Lcom/google/googlenav/gesture/C;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/googlenav/gesture/C;
    .locals 1

    sget-object v0, Lcom/google/googlenav/gesture/C;->a:Lcom/google/googlenav/gesture/C;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V
.end method

.method public abstract a(Landroid/view/MotionEvent;)Z
.end method
