.class public Lcom/google/android/maps/driveabout/vector/P;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/A;


# static fields
.field static final a:Lcom/google/android/maps/driveabout/vector/P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/P;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/P;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/P;->a:Lcom/google/android/maps/driveabout/vector/P;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x40a0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    const/high16 v1, 0x1

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/br;->f:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/P;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    return-void
.end method
