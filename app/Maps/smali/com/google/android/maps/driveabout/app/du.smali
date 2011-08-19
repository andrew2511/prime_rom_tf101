.class Lcom/google/android/maps/driveabout/app/du;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:LG/y;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/v;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/v;LG/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/du;->b:Lcom/google/android/maps/driveabout/app/v;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/du;->a:LG/y;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cB;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/du;->b:Lcom/google/android/maps/driveabout/app/v;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/du;->a:LG/y;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/v;->a(Lcom/google/android/maps/driveabout/app/v;LG/y;)V

    return-void
.end method
