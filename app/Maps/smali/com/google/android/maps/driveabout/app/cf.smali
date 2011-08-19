.class Lcom/google/android/maps/driveabout/app/cf;
.super Ljava/lang/Object;

# interfaces
.implements Laa/x;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bX;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/bX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/bX;Lcom/google/android/maps/driveabout/app/bw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cf;-><init>(Lcom/google/android/maps/driveabout/app/bX;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/cx;-><init>(Lcom/google/android/maps/driveabout/app/cf;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->a(Ljava/lang/Runnable;)V

    return-void
.end method
