.class public Lcom/google/android/maps/driveabout/vector/Y;
.super Ljava/lang/Object;


# static fields
.field private static final a:LG/Q;

.field private static final b:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Y;->a:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/Y;->b:LG/Q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v0

    neg-float v0, v0

    invoke-interface {p0, v0, v2, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    invoke-interface {p0, v0, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V
    .locals 4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/Y;->a:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/Y;->b:LG/Q;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;)V

    invoke-static {p2, v0, v1}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    invoke-virtual {v1, v1}, LG/Q;->i(LG/Q;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->o()F

    move-result v0

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1}, LG/Q;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-interface {p0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    mul-float/2addr v0, p3

    invoke-interface {p0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    return-void
.end method
