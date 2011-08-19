.class Lcom/google/android/maps/driveabout/app/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:LF/l;

.field final synthetic c:LF/B;

.field final synthetic d:Lcom/google/android/maps/driveabout/app/eG;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eG;ILF/l;LF/B;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/k;->d:Lcom/google/android/maps/driveabout/app/eG;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/k;->a:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/k;->b:LF/l;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/k;->c:LF/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->d:Lcom/google/android/maps/driveabout/app/eG;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/eG;->a:Lcom/google/android/maps/driveabout/app/bX;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/k;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/k;->b:LF/l;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/k;->c:LF/B;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/bX;->a(ILF/l;LF/B;)V

    return-void
.end method
