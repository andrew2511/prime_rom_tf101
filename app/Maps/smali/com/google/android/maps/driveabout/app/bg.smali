.class Lcom/google/android/maps/driveabout/app/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cH;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cH;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bg;->a:Lcom/google/android/maps/driveabout/app/cH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bg;->a:Lcom/google/android/maps/driveabout/app/cH;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/cH;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    return-void
.end method
