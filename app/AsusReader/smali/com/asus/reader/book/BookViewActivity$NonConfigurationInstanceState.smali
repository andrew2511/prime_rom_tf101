.class Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;
.super Ljava/lang/Object;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonConfigurationInstanceState"
.end annotation


# instance fields
.field final wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter "_wakelock"

    .prologue
    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 1349
    return-void
.end method
