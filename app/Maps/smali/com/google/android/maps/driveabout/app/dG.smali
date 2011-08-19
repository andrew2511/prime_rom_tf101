.class Lcom/google/android/maps/driveabout/app/dG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/cB;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cB;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dG;->b:Lcom/google/android/maps/driveabout/app/cB;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dG;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dG;->b:Lcom/google/android/maps/driveabout/app/cB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dG;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cB;->a(Ljava/util/ArrayList;)V

    return-void
.end method
