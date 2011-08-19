.class final Lab$i;
.super Ljava/lang/Object;

# interfaces
.implements Lam;
.implements Lay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lay",
        "<",
        "Ljava/sql/Time;",
        ">;",
        "Lam",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lab$i;->a:Ljava/text/DateFormat;

    return-void
.end method

.method private a(Ljava/sql/Time;)Lao;
    .locals 3

    iget-object v0, p0, Lab$i;->a:Ljava/text/DateFormat;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lab$i;->a:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lau;

    invoke-direct {v2, v1}, Lau;-><init>(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lav;)Lao;
    .locals 1

    check-cast p1, Ljava/sql/Time;

    invoke-direct {p0, p1}, Lab$i;->a(Ljava/sql/Time;)Lao;

    move-result-object v0

    return-object v0
.end method
