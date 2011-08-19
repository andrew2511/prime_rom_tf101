.class Lcom/google/android/maps/driveabout/app/aU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dw;

.field final synthetic b:[LF/K;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/dw;[LF/K;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aU;->c:Lcom/google/android/maps/driveabout/app/bo;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aU;->a:Lcom/google/android/maps/driveabout/app/dw;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aU;->b:[LF/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aU;->a:Lcom/google/android/maps/driveabout/app/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aU;->a:Lcom/google/android/maps/driveabout/app/dw;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aU;->b:[LF/K;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/dw;->a([LF/K;)V

    :cond_0
    return-void
.end method
