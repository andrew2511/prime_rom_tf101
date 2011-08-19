.class Lcom/google/android/maps/driveabout/app/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/app/cf;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cf;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/cf;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/cx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/cf;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cf;->a:Lcom/google/android/maps/driveabout/app/bX;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cx;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bX;->c(I)V

    return-void
.end method
