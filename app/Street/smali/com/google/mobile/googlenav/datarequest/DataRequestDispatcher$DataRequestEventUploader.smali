.class public final Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/mobile/common/Log$LogSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataRequestEventUploader"
.end annotation


# instance fields
.field private final drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;->drd:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$DataRequestEventUploader;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method


# virtual methods
.method public uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;

    const/16 v1, 0xa

    const/4 v4, 0x0

    move-object v2, p3

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/mobile/googlenav/datarequest/SimpleDataRequest;-><init>(I[BZZLjava/lang/Object;)V

    invoke-static {}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->getInstance()Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Lcom/google/mobile/googlenav/datarequest/DataRequest;)V

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method
