.class Lcom/google/android/maps/driveabout/app/cv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cc;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/aO;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_0
.end method
