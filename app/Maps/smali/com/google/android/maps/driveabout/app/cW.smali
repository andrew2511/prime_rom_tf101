.class Lcom/google/android/maps/driveabout/app/cW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationImageView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cW;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;)LF/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;LF/y;Z)V

    return-void
.end method
