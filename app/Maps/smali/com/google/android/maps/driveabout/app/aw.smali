.class public Lcom/google/android/maps/driveabout/app/aw;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/app/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/app/cv;-><init>(Lcom/google/android/maps/driveabout/app/aO;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/aw;->a:Lcom/google/android/maps/driveabout/app/cc;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/cd;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/app/cd;-><init>(Lcom/google/android/maps/driveabout/app/aO;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/aw;->a:Lcom/google/android/maps/driveabout/app/cc;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Configuration;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/aw;->c(Landroid/content/res/Configuration;)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/res/Configuration;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/aw;->c(Landroid/content/res/Configuration;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/res/Configuration;)I
    .locals 3

    sget-object v0, Lcom/google/android/maps/driveabout/app/aw;->a:Lcom/google/android/maps/driveabout/app/cc;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/cc;->a(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x30

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
