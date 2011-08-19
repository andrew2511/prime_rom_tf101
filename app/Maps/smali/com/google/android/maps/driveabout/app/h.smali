.class Lcom/google/android/maps/driveabout/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/w;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/maps/driveabout/app/eG;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eG;LF/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/h;->c:Lcom/google/android/maps/driveabout/app/eG;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/h;->a:LF/w;

    iput p3, p0, Lcom/google/android/maps/driveabout/app/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/h;->c:Lcom/google/android/maps/driveabout/app/eG;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/eG;->a:Lcom/google/android/maps/driveabout/app/bX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/bX;->f:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/h;->a:LF/w;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/h;->b:I

    invoke-virtual {v0, v1, v2}, Lb/k;->a(LF/w;I)V

    return-void
.end method
