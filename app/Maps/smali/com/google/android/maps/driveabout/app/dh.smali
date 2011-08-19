.class Lcom/google/android/maps/driveabout/app/dh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bf;

.field final synthetic b:[LF/u;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/bo;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/bf;[LF/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dh;->c:Lcom/google/android/maps/driveabout/app/bo;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/dh;->a:Lcom/google/android/maps/driveabout/app/bf;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/dh;->b:[LF/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dh;->c:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dh;->a:Lcom/google/android/maps/driveabout/app/bf;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dh;->b:[LF/u;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/bf;->a(LF/u;)V

    return-void
.end method
