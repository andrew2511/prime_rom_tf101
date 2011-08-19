.class Lb/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cy;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/W;

.field final synthetic c:Lb/k;


# direct methods
.method constructor <init>(Lb/k;Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V
    .locals 0

    iput-object p1, p0, Lb/m;->c:Lb/k;

    iput-object p2, p0, Lb/m;->a:Ljava/io/File;

    iput-object p3, p0, Lb/m;->b:Lcom/google/android/maps/driveabout/app/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lb/m;->c:Lb/k;

    iget-object v1, p0, Lb/m;->a:Ljava/io/File;

    iget-object v2, p0, Lb/m;->b:Lcom/google/android/maps/driveabout/app/W;

    invoke-static {v0, v1, v2}, Lb/k;->a(Lb/k;Ljava/io/File;Lcom/google/android/maps/driveabout/app/W;)V

    return-void
.end method
