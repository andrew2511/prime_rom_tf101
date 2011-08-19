.class Lcom/google/android/maps/driveabout/app/Z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cM;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/be;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/Z;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/au;Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->a:Lcom/google/android/maps/driveabout/app/be;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/be;)Lb/p;

    move-result-object v0

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/k;->c(Lcom/google/android/maps/driveabout/vector/cA;)V

    return-void
.end method
