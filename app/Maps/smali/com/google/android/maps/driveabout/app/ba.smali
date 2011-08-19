.class Lcom/google/android/maps/driveabout/app/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/app/bu;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bu;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ba;->b:Lcom/google/android/maps/driveabout/app/bu;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/ba;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ba;->b:Lcom/google/android/maps/driveabout/app/bu;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/bu;->a:Lcom/google/android/maps/driveabout/app/U;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ba;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/U;->a(I)V

    return-void
.end method
