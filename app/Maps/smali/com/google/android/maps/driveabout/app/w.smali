.class Lcom/google/android/maps/driveabout/app/w;
.super Ljava/lang/Object;

# interfaces
.implements Lt/A;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dz;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/w;->a:Lcom/google/android/maps/driveabout/app/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/dz;Lcom/google/android/maps/driveabout/app/L;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/w;-><init>(Lcom/google/android/maps/driveabout/app/dz;)V

    return-void
.end method


# virtual methods
.method public a(LG/w;ILG/u;)V
    .locals 4

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/w;->a:Lcom/google/android/maps/driveabout/app/dz;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/maps/driveabout/app/dz;->a(Lcom/google/android/maps/driveabout/app/dz;IILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
